
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnic_intr {int * ctrl; } ;



void svnic_intr_free(struct vnic_intr *intr)
{
 intr->ctrl = ((void*)0);
}
