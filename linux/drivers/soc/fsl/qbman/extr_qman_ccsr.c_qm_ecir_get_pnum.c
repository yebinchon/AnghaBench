
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_ecir {int info; } ;



__attribute__((used)) static int qm_ecir_get_pnum(const struct qm_ecir *p)
{
 return (p->info >> 24) & 0x1f;
}
