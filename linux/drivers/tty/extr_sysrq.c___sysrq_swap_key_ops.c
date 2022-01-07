
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysrq_key_op {int dummy; } ;


 struct sysrq_key_op* __sysrq_get_key_op (int) ;
 int __sysrq_put_key_op (int,struct sysrq_key_op*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int synchronize_rcu () ;
 int sysrq_key_table_lock ;

__attribute__((used)) static int __sysrq_swap_key_ops(int key, struct sysrq_key_op *insert_op_p,
                                struct sysrq_key_op *remove_op_p)
{
 int retval;

 spin_lock(&sysrq_key_table_lock);
 if (__sysrq_get_key_op(key) == remove_op_p) {
  __sysrq_put_key_op(key, insert_op_p);
  retval = 0;
 } else {
  retval = -1;
 }
 spin_unlock(&sysrq_key_table_lock);






 synchronize_rcu();

 return retval;
}
