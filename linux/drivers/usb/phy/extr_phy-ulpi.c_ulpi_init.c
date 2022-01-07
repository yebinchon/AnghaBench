
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct usb_phy {int dummy; } ;
struct TYPE_3__ {scalar_t__ id; int name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 scalar_t__ ULPI_ID (int,int) ;
 scalar_t__ ULPI_PRODUCT_ID_HIGH ;
 int pr_info (char*,int,...) ;
 int ulpi_check_integrity (struct usb_phy*) ;
 TYPE_1__* ulpi_ids ;
 int ulpi_set_flags (struct usb_phy*) ;
 int usb_phy_io_read (struct usb_phy*,scalar_t__) ;

__attribute__((used)) static int ulpi_init(struct usb_phy *phy)
{
 int i, vid, pid, ret;
 u32 ulpi_id = 0;

 for (i = 0; i < 4; i++) {
  ret = usb_phy_io_read(phy, ULPI_PRODUCT_ID_HIGH - i);
  if (ret < 0)
   return ret;
  ulpi_id = (ulpi_id << 8) | ret;
 }
 vid = ulpi_id & 0xffff;
 pid = ulpi_id >> 16;

 pr_info("ULPI transceiver vendor/product ID 0x%04x/0x%04x\n", vid, pid);

 for (i = 0; i < ARRAY_SIZE(ulpi_ids); i++) {
  if (ulpi_ids[i].id == ULPI_ID(vid, pid)) {
   pr_info("Found %s ULPI transceiver.\n",
    ulpi_ids[i].name);
   break;
  }
 }

 ret = ulpi_check_integrity(phy);
 if (ret)
  return ret;

 return ulpi_set_flags(phy);
}
