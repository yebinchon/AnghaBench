
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llcc_slice_desc {int slice_id; } ;


 int EINVAL ;
 scalar_t__ IS_ERR_OR_NULL (struct llcc_slice_desc*) ;

int llcc_get_slice_id(struct llcc_slice_desc *desc)
{
 if (IS_ERR_OR_NULL(desc))
  return -EINVAL;

 return desc->slice_id;
}
