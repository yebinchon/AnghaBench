
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_ecir {int info; } ;


 int BIT (int) ;

__attribute__((used)) static bool qm_ecir_is_dcp(const struct qm_ecir *p)
{
 return p->info & BIT(29);
}
