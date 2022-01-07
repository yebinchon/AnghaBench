
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct nvdimm {int dummy; } ;
struct nd_cmd_pkg {scalar_t__ nd_size_out; } ;
struct nd_cmd_desc {int out_num; scalar_t__* out_sizes; } ;


 int ND_CMD_ARS_STATUS ;
 int ND_CMD_CALL ;
 int ND_CMD_GET_CONFIG_DATA ;
 int ND_CMD_VENDOR ;
 scalar_t__ UINT_MAX ;

u32 nd_cmd_out_size(struct nvdimm *nvdimm, int cmd,
  const struct nd_cmd_desc *desc, int idx, const u32 *in_field,
  const u32 *out_field, unsigned long remainder)
{
 if (idx >= desc->out_num)
  return UINT_MAX;

 if (desc->out_sizes[idx] < UINT_MAX)
  return desc->out_sizes[idx];

 if (nvdimm && cmd == ND_CMD_GET_CONFIG_DATA && idx == 1)
  return in_field[1];
 else if (nvdimm && cmd == ND_CMD_VENDOR && idx == 2)
  return out_field[1];
 else if (!nvdimm && cmd == ND_CMD_ARS_STATUS && idx == 2) {





  if (out_field[1] < 4)
   return 0;






  if (out_field[1] - 4 == remainder)
   return remainder;
  return out_field[1] - 8;
 } else if (cmd == ND_CMD_CALL) {
  struct nd_cmd_pkg *pkg = (struct nd_cmd_pkg *) in_field;

  return pkg->nd_size_out;
 }


 return UINT_MAX;
}
