
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qbman_release_desc {int verb; } ;



void qbman_release_desc_set_rcdi(struct qbman_release_desc *d, int enable)
{
 if (enable)
  d->verb |= 1 << 6;
 else
  d->verb &= ~(1 << 6);
}
