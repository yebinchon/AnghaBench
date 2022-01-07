
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llcc_slice_desc {int dummy; } ;


 int IS_ERR_OR_NULL (struct llcc_slice_desc*) ;
 int kfree (struct llcc_slice_desc*) ;

void llcc_slice_putd(struct llcc_slice_desc *desc)
{
 if (!IS_ERR_OR_NULL(desc))
  kfree(desc);
}
