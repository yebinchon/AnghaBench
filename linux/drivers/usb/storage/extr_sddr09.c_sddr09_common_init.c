
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct us_data {int extra_destructor; int extra; TYPE_3__* pusb_dev; } ;
struct sddr09_card_info {int dummy; } ;
struct TYPE_6__ {TYPE_2__* actconfig; } ;
struct TYPE_4__ {int bConfigurationValue; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;


 int EINVAL ;
 int ENOMEM ;
 int EPIPE ;
 int GFP_NOIO ;
 int kzalloc (int,int ) ;
 int nand_init_ecc () ;
 int sddr09_card_info_destructor ;
 int usb_reset_configuration (TYPE_3__*) ;
 int usb_stor_dbg (struct us_data*,char*,...) ;

__attribute__((used)) static int
sddr09_common_init(struct us_data *us) {
 int result;


 if (us->pusb_dev->actconfig->desc.bConfigurationValue != 1) {
  usb_stor_dbg(us, "active config #%d != 1 ??\n",
        us->pusb_dev->actconfig->desc.bConfigurationValue);
  return -EINVAL;
 }

 result = usb_reset_configuration(us->pusb_dev);
 usb_stor_dbg(us, "Result of usb_reset_configuration is %d\n", result);
 if (result == -EPIPE) {
  usb_stor_dbg(us, "-- stall on control interface\n");
 } else if (result != 0) {

  usb_stor_dbg(us, "-- Unknown error.  Rejecting device\n");
  return -EINVAL;
 }

 us->extra = kzalloc(sizeof(struct sddr09_card_info), GFP_NOIO);
 if (!us->extra)
  return -ENOMEM;
 us->extra_destructor = sddr09_card_info_destructor;

 nand_init_ecc();
 return 0;
}
