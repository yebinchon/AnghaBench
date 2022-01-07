
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ type; } ;
struct tb_port {TYPE_1__ config; } ;


 scalar_t__ TB_TYPE_DP_HDMI_OUT ;

__attribute__((used)) static inline bool tb_port_is_dpout(const struct tb_port *port)
{
 return port && port->config.type == TB_TYPE_DP_HDMI_OUT;
}
