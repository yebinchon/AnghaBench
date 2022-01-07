
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
struct serio {int phys; int name; int stop; int start; int write; TYPE_1__ id; } ;
struct TYPE_6__ {int parent; } ;
struct platform_device {TYPE_2__ dev; } ;
struct nvec_chip {int dummy; } ;
struct TYPE_8__ {int notifier_call; } ;
struct TYPE_7__ {TYPE_4__ notifier; struct nvec_chip* nvec; struct serio* ser_dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SERIO_8042 ;
 struct nvec_chip* dev_get_drvdata (int ) ;
 struct serio* kzalloc (int,int ) ;
 int nvec_ps2_notifier ;
 int nvec_register_notifier (struct nvec_chip*,TYPE_4__*,int ) ;
 TYPE_3__ ps2_dev ;
 int ps2_sendcommand ;
 int ps2_startstreaming ;
 int ps2_stopstreaming ;
 int serio_register_port (struct serio*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static int nvec_mouse_probe(struct platform_device *pdev)
{
 struct nvec_chip *nvec = dev_get_drvdata(pdev->dev.parent);
 struct serio *ser_dev;

 ser_dev = kzalloc(sizeof(*ser_dev), GFP_KERNEL);
 if (!ser_dev)
  return -ENOMEM;

 ser_dev->id.type = SERIO_8042;
 ser_dev->write = ps2_sendcommand;
 ser_dev->start = ps2_startstreaming;
 ser_dev->stop = ps2_stopstreaming;

 strlcpy(ser_dev->name, "nvec mouse", sizeof(ser_dev->name));
 strlcpy(ser_dev->phys, "nvec", sizeof(ser_dev->phys));

 ps2_dev.ser_dev = ser_dev;
 ps2_dev.notifier.notifier_call = nvec_ps2_notifier;
 ps2_dev.nvec = nvec;
 nvec_register_notifier(nvec, &ps2_dev.notifier, 0);

 serio_register_port(ser_dev);

 return 0;
}
