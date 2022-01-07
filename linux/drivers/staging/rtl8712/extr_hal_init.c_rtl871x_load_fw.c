
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pusbdev; } ;
struct _adapter {int rtl8712_fw_ready; TYPE_2__ dvobjpriv; } ;
struct TYPE_3__ {struct device dev; } ;


 int GFP_KERNEL ;
 int THIS_MODULE ;
 int dev_err (struct device*,char*,int) ;
 int dev_info (struct device*,char*,int ) ;
 int firmware_file ;
 int init_completion (int *) ;
 int request_firmware_nowait (int ,int,int ,struct device*,int ,struct _adapter*,int ) ;
 int rtl871x_load_fw_cb ;

int rtl871x_load_fw(struct _adapter *padapter)
{
 struct device *dev = &padapter->dvobjpriv.pusbdev->dev;
 int rc;

 init_completion(&padapter->rtl8712_fw_ready);
 dev_info(dev, "r8712u: Loading firmware from \"%s\"\n", firmware_file);
 rc = request_firmware_nowait(THIS_MODULE, 1, firmware_file, dev,
         GFP_KERNEL, padapter, rtl871x_load_fw_cb);
 if (rc)
  dev_err(dev, "r8712u: Firmware request error %d\n", rc);
 return rc;
}
