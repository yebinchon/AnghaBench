
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reset_controller_dev {int dummy; } ;


 int lantiq_rcu_reset_assert (struct reset_controller_dev*,unsigned long) ;
 int lantiq_rcu_reset_deassert (struct reset_controller_dev*,unsigned long) ;

__attribute__((used)) static int lantiq_rcu_reset_reset(struct reset_controller_dev *rcdev,
       unsigned long id)
{
 int ret;

 ret = lantiq_rcu_reset_assert(rcdev, id);
 if (ret)
  return ret;

 return lantiq_rcu_reset_deassert(rcdev, id);
}
