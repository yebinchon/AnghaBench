
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u32 ;
struct sdw_cdns {int num_ports; int pdm; int pcm; int dev; struct sdw_cdns_port* ports; } ;
struct sdw_intel {struct sdw_cdns cdns; } ;
struct sdw_cdns_port {int assigned; int pdi; void* ch; void* direction; } ;


 int dev_err (int ,char*) ;
 int intel_pdi_alh_configure (struct sdw_intel*,int ) ;
 int intel_pdi_shim_configure (struct sdw_intel*,int ) ;
 int sdw_cdns_alloc_stream (struct sdw_cdns*,int *,struct sdw_cdns_port*,void*,void*) ;
 int sdw_cdns_config_stream (struct sdw_cdns*,struct sdw_cdns_port*,void*,void*,int ) ;

__attribute__((used)) static struct sdw_cdns_port *intel_alloc_port(struct sdw_intel *sdw,
           u32 ch, u32 dir, bool pcm)
{
 struct sdw_cdns *cdns = &sdw->cdns;
 struct sdw_cdns_port *port = ((void*)0);
 int i, ret = 0;

 for (i = 0; i < cdns->num_ports; i++) {
  if (cdns->ports[i].assigned)
   continue;

  port = &cdns->ports[i];
  port->assigned = 1;
  port->direction = dir;
  port->ch = ch;
  break;
 }

 if (!port) {
  dev_err(cdns->dev, "Unable to find a free port\n");
  return ((void*)0);
 }

 if (pcm) {
  ret = sdw_cdns_alloc_stream(cdns, &cdns->pcm, port, ch, dir);
  if (ret)
   goto out;

  intel_pdi_shim_configure(sdw, port->pdi);
  sdw_cdns_config_stream(cdns, port, ch, dir, port->pdi);

  intel_pdi_alh_configure(sdw, port->pdi);

 } else {
  ret = sdw_cdns_alloc_stream(cdns, &cdns->pdm, port, ch, dir);
 }

out:
 if (ret) {
  port->assigned = 0;
  port = ((void*)0);
 }

 return port;
}
