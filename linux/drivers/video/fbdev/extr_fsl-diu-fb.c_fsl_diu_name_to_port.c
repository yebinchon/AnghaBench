
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum fsl_diu_monitor_port { ____Placeholder_fsl_diu_monitor_port } fsl_diu_monitor_port ;
struct TYPE_2__ {int (* valid_monitor_port ) (int) ;} ;


 int FSL_DIU_PORT_DLVDS ;
 int FSL_DIU_PORT_DVI ;
 int FSL_DIU_PORT_LVDS ;
 TYPE_1__ diu_ops ;
 int kstrtoul (char const*,int,unsigned long*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int stub1 (int) ;

__attribute__((used)) static enum fsl_diu_monitor_port fsl_diu_name_to_port(const char *s)
{
 enum fsl_diu_monitor_port port = FSL_DIU_PORT_DVI;
 unsigned long val;

 if (s) {
  if (!kstrtoul(s, 10, &val) && (val <= 2))
   port = (enum fsl_diu_monitor_port) val;
  else if (strncmp(s, "lvds", 4) == 0)
   port = FSL_DIU_PORT_LVDS;
  else if (strncmp(s, "dlvds", 5) == 0)
   port = FSL_DIU_PORT_DLVDS;
 }

 if (diu_ops.valid_monitor_port)
  port = diu_ops.valid_monitor_port(port);

 return port;
}
