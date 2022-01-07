
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_eadr {int info; } ;


 int BIT (int) ;

__attribute__((used)) static int qm_eadr_v3_get_eadr(const struct qm_eadr *p)
{
 return p->info & (BIT(16) - 1);
}
