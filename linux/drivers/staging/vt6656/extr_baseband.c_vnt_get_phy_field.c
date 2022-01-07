
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct vnt_private {int preamble_type; } ;
struct vnt_phy_field {int signal; int service; void* len; } ;


 int PK_TYPE_11A ;
 int PK_TYPE_11B ;
 void* cpu_to_le16 (int) ;

void vnt_get_phy_field(struct vnt_private *priv, u32 frame_length,
         u16 tx_rate, u8 pkt_type, struct vnt_phy_field *phy)
{
 u32 bit_count;
 u32 count = 0;
 u32 tmp;
 int ext_bit;
 u8 preamble_type = priv->preamble_type;

 bit_count = frame_length * 8;
 ext_bit = 0;

 switch (tx_rate) {
 case 136:
  count = bit_count;

  phy->signal = 0x00;

  break;
 case 134:
  count = bit_count / 2;

  if (preamble_type == 1)
   phy->signal = 0x09;
  else
   phy->signal = 0x01;

  break;
 case 130:
  count = (bit_count * 10) / 55;
  tmp = (count * 55) / 10;

  if (tmp != bit_count)
   count++;

  if (preamble_type == 1)
   phy->signal = 0x0a;
  else
   phy->signal = 0x02;

  break;
 case 139:
  count = bit_count / 11;
  tmp = count * 11;

  if (tmp != bit_count) {
   count++;

   if ((bit_count - tmp) <= 3)
    ext_bit = 1;
  }

  if (preamble_type == 1)
   phy->signal = 0x0b;
  else
   phy->signal = 0x03;

  break;
 case 129:
  if (pkt_type == PK_TYPE_11A)
   phy->signal = 0x9b;
  else
   phy->signal = 0x8b;

  break;
 case 128:
  if (pkt_type == PK_TYPE_11A)
   phy->signal = 0x9f;
  else
   phy->signal = 0x8f;

  break;
 case 138:
  if (pkt_type == PK_TYPE_11A)
   phy->signal = 0x9a;
  else
   phy->signal = 0x8a;

  break;
 case 137:
  if (pkt_type == PK_TYPE_11A)
   phy->signal = 0x9e;
  else
   phy->signal = 0x8e;

  break;
 case 135:
  if (pkt_type == PK_TYPE_11A)
   phy->signal = 0x99;
  else
   phy->signal = 0x89;

  break;
 case 133:
  if (pkt_type == PK_TYPE_11A)
   phy->signal = 0x9d;
  else
   phy->signal = 0x8d;

  break;
 case 132:
  if (pkt_type == PK_TYPE_11A)
   phy->signal = 0x98;
  else
   phy->signal = 0x88;

  break;
 case 131:
  if (pkt_type == PK_TYPE_11A)
   phy->signal = 0x9c;
  else
   phy->signal = 0x8c;
  break;
 default:
  if (pkt_type == PK_TYPE_11A)
   phy->signal = 0x9c;
  else
   phy->signal = 0x8c;
  break;
 }

 if (pkt_type == PK_TYPE_11B) {
  phy->service = 0x00;
  if (ext_bit)
   phy->service |= 0x80;
  phy->len = cpu_to_le16((u16)count);
 } else {
  phy->service = 0x00;
  phy->len = cpu_to_le16((u16)frame_length);
 }
}
