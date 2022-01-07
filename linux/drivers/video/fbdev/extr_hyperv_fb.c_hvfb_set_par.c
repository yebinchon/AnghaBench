
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hv_device {int dummy; } ;
struct fb_info {int device; } ;


 struct hv_device* device_to_hv_device (int ) ;
 int synthvid_send_situ (struct hv_device*) ;

__attribute__((used)) static int hvfb_set_par(struct fb_info *info)
{
 struct hv_device *hdev = device_to_hv_device(info->device);

 return synthvid_send_situ(hdev);
}
