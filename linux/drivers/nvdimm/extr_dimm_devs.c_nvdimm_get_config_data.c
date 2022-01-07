
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t config_size; int max_xfer; } ;
struct nvdimm_drvdata {int dev; TYPE_1__ nsarea; } ;
struct nvdimm_bus_descriptor {int (* ndctl ) (struct nvdimm_bus_descriptor*,int ,int ,struct nd_cmd_get_config_data_hdr*,size_t,int*) ;} ;
struct nvdimm_bus {struct nvdimm_bus_descriptor* nd_desc; } ;
struct nd_cmd_get_config_data_hdr {int in_length; size_t in_offset; int out_buf; } ;


 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int ND_CMD_GET_CONFIG_DATA ;
 int kvfree (struct nd_cmd_get_config_data_hdr*) ;
 struct nd_cmd_get_config_data_hdr* kvzalloc (size_t,int ) ;
 int memcpy (void*,int ,int) ;
 int min (size_t,size_t) ;
 size_t min_t (int ,size_t,int ) ;
 int stub1 (struct nvdimm_bus_descriptor*,int ,int ,struct nd_cmd_get_config_data_hdr*,size_t,int*) ;
 int to_nvdimm (int ) ;
 int u32 ;
 int validate_dimm (struct nvdimm_drvdata*) ;
 struct nvdimm_bus* walk_to_nvdimm_bus (int ) ;

int nvdimm_get_config_data(struct nvdimm_drvdata *ndd, void *buf,
      size_t offset, size_t len)
{
 struct nvdimm_bus *nvdimm_bus = walk_to_nvdimm_bus(ndd->dev);
 struct nvdimm_bus_descriptor *nd_desc = nvdimm_bus->nd_desc;
 int rc = validate_dimm(ndd), cmd_rc = 0;
 struct nd_cmd_get_config_data_hdr *cmd;
 size_t max_cmd_size, buf_offset;

 if (rc)
  return rc;

 if (offset + len > ndd->nsarea.config_size)
  return -ENXIO;

 max_cmd_size = min_t(u32, len, ndd->nsarea.max_xfer);
 cmd = kvzalloc(max_cmd_size + sizeof(*cmd), GFP_KERNEL);
 if (!cmd)
  return -ENOMEM;

 for (buf_offset = 0; len;
      len -= cmd->in_length, buf_offset += cmd->in_length) {
  size_t cmd_size;

  cmd->in_offset = offset + buf_offset;
  cmd->in_length = min(max_cmd_size, len);

  cmd_size = sizeof(*cmd) + cmd->in_length;

  rc = nd_desc->ndctl(nd_desc, to_nvdimm(ndd->dev),
    ND_CMD_GET_CONFIG_DATA, cmd, cmd_size, &cmd_rc);
  if (rc < 0)
   break;
  if (cmd_rc < 0) {
   rc = cmd_rc;
   break;
  }


  memcpy(buf + buf_offset, cmd->out_buf, cmd->in_length);
 }
 kvfree(cmd);

 return rc;
}
