
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_ctx {int sb_array; int fp_array; } ;


 int kfree (int ) ;

__attribute__((used)) static void qedi_free_fp(struct qedi_ctx *qedi)
{
 kfree(qedi->fp_array);
 kfree(qedi->sb_array);
}
