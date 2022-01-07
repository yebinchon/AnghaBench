
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct nvec_chip {int dummy; } ;
struct TYPE_4__ {int ser_dev; int notifier; } ;


 int DISABLE_MOUSE ;
 struct nvec_chip* dev_get_drvdata (int ) ;
 int nvec_unregister_notifier (struct nvec_chip*,int *) ;
 TYPE_2__ ps2_dev ;
 int ps2_sendcommand (int ,int ) ;
 int ps2_stopstreaming (int ) ;
 int serio_unregister_port (int ) ;

__attribute__((used)) static int nvec_mouse_remove(struct platform_device *pdev)
{
 struct nvec_chip *nvec = dev_get_drvdata(pdev->dev.parent);

 ps2_sendcommand(ps2_dev.ser_dev, DISABLE_MOUSE);
 ps2_stopstreaming(ps2_dev.ser_dev);
 nvec_unregister_notifier(nvec, &ps2_dev.notifier);
 serio_unregister_port(ps2_dev.ser_dev);

 return 0;
}
