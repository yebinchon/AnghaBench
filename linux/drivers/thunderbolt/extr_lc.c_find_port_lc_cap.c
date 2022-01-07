
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct tb_switch {int cap_lc; } ;
struct tb_port {int port; struct tb_switch* sw; } ;


 int TB_LC_DESC_PORT_SIZE_MASK ;
 int TB_LC_DESC_PORT_SIZE_SHIFT ;
 int TB_LC_DESC_SIZE_MASK ;
 int TB_LC_DESC_SIZE_SHIFT ;
 int read_lc_desc (struct tb_switch*,int*) ;
 int tb_phy_port_from_link (int ) ;

__attribute__((used)) static int find_port_lc_cap(struct tb_port *port)
{
 struct tb_switch *sw = port->sw;
 int start, phys, ret, size;
 u32 desc;

 ret = read_lc_desc(sw, &desc);
 if (ret)
  return ret;


 start = (desc & TB_LC_DESC_SIZE_MASK) >> TB_LC_DESC_SIZE_SHIFT;
 size = (desc & TB_LC_DESC_PORT_SIZE_MASK) >> TB_LC_DESC_PORT_SIZE_SHIFT;
 phys = tb_phy_port_from_link(port->port);

 return sw->cap_lc + start + phys * size;
}
