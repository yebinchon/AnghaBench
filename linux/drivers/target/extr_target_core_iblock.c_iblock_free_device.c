
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_device {int rcu_head; } ;


 int call_rcu (int *,int ) ;
 int iblock_dev_call_rcu ;

__attribute__((used)) static void iblock_free_device(struct se_device *dev)
{
 call_rcu(&dev->rcu_head, iblock_dev_call_rcu);
}
