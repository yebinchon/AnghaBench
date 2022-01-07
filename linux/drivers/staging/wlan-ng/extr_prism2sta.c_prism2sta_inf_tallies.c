
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct wlandevice {struct hfa384x* priv; } ;
struct TYPE_2__ {int commtallies16; int commtallies32; } ;
struct hfa384x_inf_frame {int framelen; TYPE_1__ info; } ;
struct hfa384x_comm_tallies_32 {int dummy; } ;
struct hfa384x {int tallies; } ;
typedef int __le32 ;
typedef int __le16 ;


 scalar_t__ le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static void prism2sta_inf_tallies(struct wlandevice *wlandev,
      struct hfa384x_inf_frame *inf)
{
 struct hfa384x *hw = wlandev->priv;
 __le16 *src16;
 u32 *dst;
 __le32 *src32;
 int i;
 int cnt;






 cnt = sizeof(struct hfa384x_comm_tallies_32) / sizeof(u32);
 if (inf->framelen > 22) {
  dst = (u32 *)&hw->tallies;
  src32 = (__le32 *)&inf->info.commtallies32;
  for (i = 0; i < cnt; i++, dst++, src32++)
   *dst += le32_to_cpu(*src32);
 } else {
  dst = (u32 *)&hw->tallies;
  src16 = (__le16 *)&inf->info.commtallies16;
  for (i = 0; i < cnt; i++, dst++, src16++)
   *dst += le16_to_cpu(*src16);
 }
}
