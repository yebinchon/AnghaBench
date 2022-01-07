
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct bq4802 {int rtc; int write; int read; int regs; TYPE_1__* r; int ioport; int lock; } ;
struct TYPE_2__ {int flags; int start; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IORESOURCE_IO ;
 int IORESOURCE_MEM ;
 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int THIS_MODULE ;
 int bq4802_ops ;
 int bq4802_read_io ;
 int bq4802_read_mem ;
 int bq4802_write_io ;
 int bq4802_write_mem ;
 int devm_ioremap (int *,int ,int ) ;
 struct bq4802* devm_kzalloc (int *,int,int ) ;
 int devm_rtc_device_register (int *,char*,int *,int ) ;
 void* platform_get_resource (struct platform_device*,int,int ) ;
 int platform_set_drvdata (struct platform_device*,struct bq4802*) ;
 int resource_size (TYPE_1__*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int bq4802_probe(struct platform_device *pdev)
{
 struct bq4802 *p = devm_kzalloc(&pdev->dev, sizeof(*p), GFP_KERNEL);
 int err = -ENOMEM;

 if (!p)
  goto out;

 spin_lock_init(&p->lock);

 p->r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 if (!p->r) {
  p->r = platform_get_resource(pdev, IORESOURCE_IO, 0);
  err = -EINVAL;
  if (!p->r)
   goto out;
 }
 if (p->r->flags & IORESOURCE_IO) {
  p->ioport = p->r->start;
  p->read = bq4802_read_io;
  p->write = bq4802_write_io;
 } else if (p->r->flags & IORESOURCE_MEM) {
  p->regs = devm_ioremap(&pdev->dev, p->r->start,
     resource_size(p->r));
  if (!p->regs){
   err = -ENOMEM;
   goto out;
  }
  p->read = bq4802_read_mem;
  p->write = bq4802_write_mem;
 } else {
  err = -EINVAL;
  goto out;
 }

 platform_set_drvdata(pdev, p);

 p->rtc = devm_rtc_device_register(&pdev->dev, "bq4802",
     &bq4802_ops, THIS_MODULE);
 if (IS_ERR(p->rtc)) {
  err = PTR_ERR(p->rtc);
  goto out;
 }

 err = 0;
out:
 return err;

}
