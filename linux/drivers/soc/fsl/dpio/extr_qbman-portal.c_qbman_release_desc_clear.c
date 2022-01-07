
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qbman_release_desc {int verb; } ;


 int memset (struct qbman_release_desc*,int ,int) ;

void qbman_release_desc_clear(struct qbman_release_desc *d)
{
 memset(d, 0, sizeof(*d));
 d->verb = 1 << 5;
}
