
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llcc_slice_desc {size_t slice_size; } ;


 scalar_t__ IS_ERR_OR_NULL (struct llcc_slice_desc*) ;

size_t llcc_get_slice_size(struct llcc_slice_desc *desc)
{
 if (IS_ERR_OR_NULL(desc))
  return 0;

 return desc->slice_size;
}
