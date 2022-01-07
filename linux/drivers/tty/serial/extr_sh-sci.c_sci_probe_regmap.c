
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sci_port_params {int dummy; } ;
struct plat_sci_port {size_t regtype; int type; } ;
 unsigned int SCIx_HSCIF_REGTYPE ;
 unsigned int SCIx_IRDA_REGTYPE ;
 size_t SCIx_PROBE_REGTYPE ;
 unsigned int SCIx_SCIFA_REGTYPE ;
 unsigned int SCIx_SCIFB_REGTYPE ;
 unsigned int SCIx_SCI_REGTYPE ;
 unsigned int SCIx_SH4_SCIF_REGTYPE ;
 int pr_err (char*) ;
 struct sci_port_params const* sci_port_params ;

__attribute__((used)) static const struct sci_port_params *
sci_probe_regmap(const struct plat_sci_port *cfg)
{
 unsigned int regtype;

 if (cfg->regtype != SCIx_PROBE_REGTYPE)
  return &sci_port_params[cfg->regtype];

 switch (cfg->type) {
 case 131:
  regtype = SCIx_SCI_REGTYPE;
  break;
 case 132:
  regtype = SCIx_IRDA_REGTYPE;
  break;
 case 129:
  regtype = SCIx_SCIFA_REGTYPE;
  break;
 case 128:
  regtype = SCIx_SCIFB_REGTYPE;
  break;
 case 130:






  regtype = SCIx_SH4_SCIF_REGTYPE;
  break;
 case 133:
  regtype = SCIx_HSCIF_REGTYPE;
  break;
 default:
  pr_err("Can't probe register map for given port\n");
  return ((void*)0);
 }

 return &sci_port_params[regtype];
}
