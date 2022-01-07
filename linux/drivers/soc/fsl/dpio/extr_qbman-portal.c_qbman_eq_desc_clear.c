
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qbman_eq_desc {int dummy; } ;


 int memset (struct qbman_eq_desc*,int ,int) ;

void qbman_eq_desc_clear(struct qbman_eq_desc *d)
{
 memset(d, 0, sizeof(*d));
}
