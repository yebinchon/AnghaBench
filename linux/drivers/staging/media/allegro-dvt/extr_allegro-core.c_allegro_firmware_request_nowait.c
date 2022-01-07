
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct allegro_dev {TYPE_1__* plat_dev; int v4l2_dev; } ;
struct TYPE_2__ {int dev; } ;


 int GFP_KERNEL ;
 int THIS_MODULE ;
 int allegro_fw_callback ;
 int debug ;
 int request_firmware_nowait (int ,int,char const*,int *,int ,struct allegro_dev*,int ) ;
 int v4l2_dbg (int,int ,int *,char*,char const*) ;

__attribute__((used)) static int allegro_firmware_request_nowait(struct allegro_dev *dev)
{
 const char *fw = "al5e_b.fw";

 v4l2_dbg(1, debug, &dev->v4l2_dev,
   "requesting firmware '%s'\n", fw);
 return request_firmware_nowait(THIS_MODULE, 1, fw,
           &dev->plat_dev->dev, GFP_KERNEL, dev,
           allegro_fw_callback);
}
