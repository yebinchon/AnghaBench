
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qbman_pull_desc {int dummy; } ;


 int memset (struct qbman_pull_desc*,int ,int) ;

void qbman_pull_desc_clear(struct qbman_pull_desc *d)
{
 memset(d, 0, sizeof(*d));
}
