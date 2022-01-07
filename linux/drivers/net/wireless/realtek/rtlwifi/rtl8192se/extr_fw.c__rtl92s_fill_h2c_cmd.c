
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef size_t u32 ;
struct sk_buff {int dummy; } ;


 int H2C_TX_CMD_HDR_LEN ;
 int N_BYTE_ALIGMENT (size_t,int) ;
 int SET_BITS_TO_LE_4BYTE (size_t*,int,int,int) ;
 int memcpy (size_t*,size_t*,size_t) ;
 int memset (size_t*,int ,size_t) ;
 size_t* skb_put (struct sk_buff*,size_t) ;

__attribute__((used)) static u32 _rtl92s_fill_h2c_cmd(struct sk_buff *skb, u32 h2cbufferlen,
    u32 cmd_num, u32 *pelement_id, u32 *pcmd_len,
    u8 **pcmb_buffer, u8 *cmd_start_seq)
{
 u32 totallen = 0, len = 0, tx_desclen = 0;
 u32 pre_continueoffset = 0;
 u8 *ph2c_buffer;
 u8 i = 0;

 do {

  len = H2C_TX_CMD_HDR_LEN + N_BYTE_ALIGMENT(pcmd_len[i], 8);


  if (h2cbufferlen < totallen + len + tx_desclen)
   break;


  ph2c_buffer = skb_put(skb, (u32)len);
  memset((ph2c_buffer + totallen + tx_desclen), 0, len);


  SET_BITS_TO_LE_4BYTE((ph2c_buffer + totallen + tx_desclen),
          0, 16, pcmd_len[i]);


  SET_BITS_TO_LE_4BYTE((ph2c_buffer + totallen + tx_desclen),
          16, 8, pelement_id[i]);


  *cmd_start_seq = *cmd_start_seq % 0x80;
  SET_BITS_TO_LE_4BYTE((ph2c_buffer + totallen + tx_desclen),
          24, 7, *cmd_start_seq);
  ++*cmd_start_seq;


  memcpy((ph2c_buffer + totallen + tx_desclen +
   H2C_TX_CMD_HDR_LEN), pcmb_buffer[i], pcmd_len[i]);



  if (i < cmd_num - 1)
   SET_BITS_TO_LE_4BYTE((ph2c_buffer + pre_continueoffset),
           31, 1, 1);

  pre_continueoffset = totallen;

  totallen += len;
 } while (++i < cmd_num);

 return totallen;
}
