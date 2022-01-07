
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysrq_key_op {int dummy; } ;


 int __sysrq_swap_key_ops (int,int *,struct sysrq_key_op*) ;

int unregister_sysrq_key(int key, struct sysrq_key_op *op_p)
{
 return __sysrq_swap_key_ops(key, ((void*)0), op_p);
}
