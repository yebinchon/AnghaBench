
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;
struct hsdk_rst {int lock; } ;


 int hsdk_reset_config (struct hsdk_rst*,unsigned long) ;
 int hsdk_reset_do (struct hsdk_rst*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct hsdk_rst* to_hsdk_rst (struct reset_controller_dev*) ;

__attribute__((used)) static int hsdk_reset_reset(struct reset_controller_dev *rcdev,
         unsigned long id)
{
 struct hsdk_rst *rst = to_hsdk_rst(rcdev);
 unsigned long flags;
 int ret;

 spin_lock_irqsave(&rst->lock, flags);
 hsdk_reset_config(rst, id);
 ret = hsdk_reset_do(rst);
 spin_unlock_irqrestore(&rst->lock, flags);

 return ret;
}
