
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_cmd_get_config_size {scalar_t__ config_size; } ;
struct nvdimm_drvdata {int dev; struct nd_cmd_get_config_size nsarea; } ;
struct nvdimm_bus_descriptor {int (* ndctl ) (struct nvdimm_bus_descriptor*,int ,int ,struct nd_cmd_get_config_size*,int,int*) ;} ;
struct nvdimm_bus {struct nvdimm_bus_descriptor* nd_desc; } ;


 int ND_CMD_GET_CONFIG_SIZE ;
 int memset (struct nd_cmd_get_config_size*,int ,int) ;
 int stub1 (struct nvdimm_bus_descriptor*,int ,int ,struct nd_cmd_get_config_size*,int,int*) ;
 int to_nvdimm (int ) ;
 int validate_dimm (struct nvdimm_drvdata*) ;
 struct nvdimm_bus* walk_to_nvdimm_bus (int ) ;

int nvdimm_init_nsarea(struct nvdimm_drvdata *ndd)
{
 struct nd_cmd_get_config_size *cmd = &ndd->nsarea;
 struct nvdimm_bus *nvdimm_bus = walk_to_nvdimm_bus(ndd->dev);
 struct nvdimm_bus_descriptor *nd_desc;
 int rc = validate_dimm(ndd);
 int cmd_rc = 0;

 if (rc)
  return rc;

 if (cmd->config_size)
  return 0;

 memset(cmd, 0, sizeof(*cmd));
 nd_desc = nvdimm_bus->nd_desc;
 rc = nd_desc->ndctl(nd_desc, to_nvdimm(ndd->dev),
   ND_CMD_GET_CONFIG_SIZE, cmd, sizeof(*cmd), &cmd_rc);
 if (rc < 0)
  return rc;
 return cmd_rc;
}
