
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_cmd_desc {int dummy; } ;


 int ARRAY_SIZE (struct nd_cmd_desc const*) ;
 struct nd_cmd_desc const* __nd_cmd_dimm_descs ;

const struct nd_cmd_desc *nd_cmd_dimm_desc(int cmd)
{
 if (cmd < ARRAY_SIZE(__nd_cmd_dimm_descs))
  return &__nd_cmd_dimm_descs[cmd];
 return ((void*)0);
}
