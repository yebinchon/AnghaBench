
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct pd_message {int header; int* payload; } ;
struct fusb302_chip {int dummy; } ;


 int EINVAL ;
 size_t FUSB302_TKN_EOP ;
 size_t FUSB302_TKN_JAMCRC ;
 int FUSB302_TKN_PACKSYM ;
 size_t FUSB302_TKN_SYNC1 ;
 size_t FUSB302_TKN_SYNC2 ;
 size_t FUSB302_TKN_TXOFF ;
 size_t FUSB302_TKN_TXON ;
 int FUSB_REG_FIFOS ;
 int fusb302_i2c_block_write (struct fusb302_chip*,int ,size_t,size_t*) ;
 int fusb302_log (struct fusb302_chip*,char*,int) ;
 int memcpy (size_t*,int*,int) ;
 int pd_header_cnt_le (int) ;

__attribute__((used)) static int fusb302_pd_send_message(struct fusb302_chip *chip,
       const struct pd_message *msg)
{
 int ret = 0;
 u8 buf[40];
 u8 pos = 0;
 int len;


 buf[pos++] = FUSB302_TKN_SYNC1;
 buf[pos++] = FUSB302_TKN_SYNC1;
 buf[pos++] = FUSB302_TKN_SYNC1;
 buf[pos++] = FUSB302_TKN_SYNC2;

 len = pd_header_cnt_le(msg->header) * 4;

 len += 2;
 if (len > 0x1F) {
  fusb302_log(chip,
       "PD message too long %d (incl. header)", len);
  return -EINVAL;
 }

 buf[pos++] = FUSB302_TKN_PACKSYM | (len & 0x1F);
 memcpy(&buf[pos], &msg->header, sizeof(msg->header));
 pos += sizeof(msg->header);

 len -= 2;
 memcpy(&buf[pos], msg->payload, len);
 pos += len;


 buf[pos++] = FUSB302_TKN_JAMCRC;

 buf[pos++] = FUSB302_TKN_EOP;

 buf[pos++] = FUSB302_TKN_TXOFF;

 buf[pos++] = FUSB302_TKN_TXON;

 ret = fusb302_i2c_block_write(chip, FUSB_REG_FIFOS, pos, buf);
 if (ret < 0)
  return ret;
 fusb302_log(chip, "sending PD message header: %x", msg->header);
 fusb302_log(chip, "sending PD message len: %d", len);

 return ret;
}
