
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct riowd {int regs; int lock; } ;
struct platform_device {int * resource; int dev; } ;


 int DRIVER_NAME ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct riowd* devm_kzalloc (int *,int,int ) ;
 int misc_register (int *) ;
 int of_ioremap (int *,int ,int,int ) ;
 int of_iounmap (int *,int ,int) ;
 int platform_set_drvdata (struct platform_device*,struct riowd*) ;
 int pr_err (char*) ;
 int pr_info (char*,int ,int ) ;
 struct riowd* riowd_device ;
 int riowd_miscdev ;
 int riowd_timeout ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int riowd_probe(struct platform_device *op)
{
 struct riowd *p;
 int err = -EINVAL;

 if (riowd_device)
  goto out;

 err = -ENOMEM;
 p = devm_kzalloc(&op->dev, sizeof(*p), GFP_KERNEL);
 if (!p)
  goto out;

 spin_lock_init(&p->lock);

 p->regs = of_ioremap(&op->resource[0], 0, 2, DRIVER_NAME);
 if (!p->regs) {
  pr_err("Cannot map registers\n");
  goto out;
 }

 riowd_device = p;

 err = misc_register(&riowd_miscdev);
 if (err) {
  pr_err("Cannot register watchdog misc device\n");
  goto out_iounmap;
 }

 pr_info("Hardware watchdog [%i minutes], regs at %p\n",
  riowd_timeout, p->regs);

 platform_set_drvdata(op, p);
 return 0;

out_iounmap:
 riowd_device = ((void*)0);
 of_iounmap(&op->resource[0], p->regs, 2);

out:
 return err;
}
