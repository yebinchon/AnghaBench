
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct qbman_pull_desc {scalar_t__ numf; } ;



void qbman_pull_desc_set_numframes(struct qbman_pull_desc *d, u8 numframes)
{
 d->numf = numframes - 1;
}
