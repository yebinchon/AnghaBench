
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysrq_key_op {int dummy; } ;


 struct sysrq_key_op** sysrq_key_table ;
 int sysrq_key_table_key2index (int) ;

struct sysrq_key_op *__sysrq_get_key_op(int key)
{
        struct sysrq_key_op *op_p = ((void*)0);
        int i;

 i = sysrq_key_table_key2index(key);
 if (i != -1)
         op_p = sysrq_key_table[i];

        return op_p;
}
