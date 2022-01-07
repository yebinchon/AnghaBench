
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_ecir2 {int info; } ;


 int BIT (int) ;

__attribute__((used)) static int qm_ecir2_get_pnum(const struct qm_ecir2 *p)
{
 return p->info & (BIT(10) - 1);
}
