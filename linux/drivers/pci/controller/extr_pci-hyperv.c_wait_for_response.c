
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hv_device {int device; TYPE_1__* channel; } ;
struct completion {int dummy; } ;
struct TYPE_2__ {scalar_t__ rescind; } ;


 int ENODEV ;
 int HZ ;
 int dev_warn_once (int *,char*) ;
 scalar_t__ wait_for_completion_timeout (struct completion*,int) ;

__attribute__((used)) static int wait_for_response(struct hv_device *hdev,
        struct completion *comp)
{
 while (1) {
  if (hdev->channel->rescind) {
   dev_warn_once(&hdev->device, "The device is gone.\n");
   return -ENODEV;
  }

  if (wait_for_completion_timeout(comp, HZ / 10))
   break;
 }

 return 0;
}
