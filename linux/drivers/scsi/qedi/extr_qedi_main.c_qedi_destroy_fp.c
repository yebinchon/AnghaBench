
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_ctx {int dummy; } ;


 int qedi_free_fp (struct qedi_ctx*) ;
 int qedi_free_sb (struct qedi_ctx*) ;

__attribute__((used)) static void qedi_destroy_fp(struct qedi_ctx *qedi)
{
 qedi_free_sb(qedi);
 qedi_free_fp(qedi);
}
