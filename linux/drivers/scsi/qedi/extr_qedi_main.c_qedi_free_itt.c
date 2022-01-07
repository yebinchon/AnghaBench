
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qedi_ctx {int itt_map; } ;


 int kfree (int ) ;

__attribute__((used)) static void qedi_free_itt(struct qedi_ctx *qedi)
{
 kfree(qedi->itt_map);
}
