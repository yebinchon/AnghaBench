
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct riowd {int regs; } ;
struct platform_device {int * resource; } ;


 int misc_deregister (int *) ;
 int of_iounmap (int *,int ,int) ;
 struct riowd* platform_get_drvdata (struct platform_device*) ;
 int riowd_miscdev ;

__attribute__((used)) static int riowd_remove(struct platform_device *op)
{
 struct riowd *p = platform_get_drvdata(op);

 misc_deregister(&riowd_miscdev);
 of_iounmap(&op->resource[0], p->regs, 2);

 return 0;
}
