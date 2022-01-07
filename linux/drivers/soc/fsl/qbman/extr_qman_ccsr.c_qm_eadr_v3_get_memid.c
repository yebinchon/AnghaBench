
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qm_eadr {int info; } ;



__attribute__((used)) static int qm_eadr_v3_get_memid(const struct qm_eadr *p)
{
 return (p->info >> 24) & 0x1f;
}
