
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct c67x00_sie {int sie_num; int mode; struct c67x00_device* dev; int lock; } ;
struct c67x00_device {TYPE_1__* pdata; } ;
struct TYPE_2__ {int sie_config; } ;




 int c67x00_hcd_probe (struct c67x00_sie*) ;
 int c67x00_sie_config (int ,int) ;
 int dev_err (int ,char*,int,int) ;
 int dev_info (int ,char*,int) ;
 int sie_dev (struct c67x00_sie*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void c67x00_probe_sie(struct c67x00_sie *sie,
        struct c67x00_device *dev, int sie_num)
{
 spin_lock_init(&sie->lock);
 sie->dev = dev;
 sie->sie_num = sie_num;
 sie->mode = c67x00_sie_config(dev->pdata->sie_config, sie_num);

 switch (sie->mode) {
 case 129:
  c67x00_hcd_probe(sie);
  break;

 case 128:
  dev_info(sie_dev(sie),
    "Not using SIE %d as requested\n", sie->sie_num);
  break;

 default:
  dev_err(sie_dev(sie),
   "Unsupported configuration: 0x%x for SIE %d\n",
   sie->mode, sie->sie_num);
  break;
 }
}
