
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pkt_attrib {int vcs_mode; int bwmode; scalar_t__ ch_offset; scalar_t__ ht_en; } ;
typedef int __le32 ;


 int BIT (int) ;
 int CTS_2_SELF ;

 scalar_t__ HAL_PRIME_CHNL_OFFSET_DONT_CARE ;
 scalar_t__ HAL_PRIME_CHNL_OFFSET_LOWER ;
 scalar_t__ HAL_PRIME_CHNL_OFFSET_UPPER ;
 int HT_CHANNEL_WIDTH_40 ;
 int HW_RTS_EN ;


 int RTS_EN ;
 int cpu_to_le32 (int) ;

__attribute__((used)) static void fill_txdesc_vcs(struct pkt_attrib *pattrib, __le32 *pdw)
{
 switch (pattrib->vcs_mode) {
 case 128:
  *pdw |= cpu_to_le32(RTS_EN);
  break;
 case 130:
  *pdw |= cpu_to_le32(CTS_2_SELF);
  break;
 case 129:
 default:
  break;
 }
 if (pattrib->vcs_mode) {
  *pdw |= cpu_to_le32(HW_RTS_EN);

  if (pattrib->ht_en) {
   *pdw |= (pattrib->bwmode&HT_CHANNEL_WIDTH_40) ? cpu_to_le32(BIT(27)) : 0;

   if (pattrib->ch_offset == HAL_PRIME_CHNL_OFFSET_LOWER)
    *pdw |= cpu_to_le32((0x01 << 28) & 0x30000000);
   else if (pattrib->ch_offset == HAL_PRIME_CHNL_OFFSET_UPPER)
    *pdw |= cpu_to_le32((0x02 << 28) & 0x30000000);
   else if (pattrib->ch_offset == HAL_PRIME_CHNL_OFFSET_DONT_CARE)
    *pdw |= 0;
   else
    *pdw |= cpu_to_le32((0x03 << 28) & 0x30000000);
  }
 }
}
