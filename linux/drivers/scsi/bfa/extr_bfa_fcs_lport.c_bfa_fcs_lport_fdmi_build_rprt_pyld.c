
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct fdmi_rprt_s {int port_attr_blk; void* port_name; void* hba_id; } ;
struct bfa_fcs_lport_s {int fcs; } ;
struct bfa_fcs_lport_fdmi_s {TYPE_1__* ms; } ;
struct TYPE_2__ {struct bfa_fcs_lport_s* port; } ;


 struct bfa_fcs_lport_s* bfa_fcs_get_base_port (int ) ;
 int bfa_fcs_lport_fdmi_build_portattr_block (struct bfa_fcs_lport_fdmi_s*,int *) ;
 void* bfa_fcs_lport_get_pwwn (struct bfa_fcs_lport_s*) ;

__attribute__((used)) static u16
bfa_fcs_lport_fdmi_build_rprt_pyld(struct bfa_fcs_lport_fdmi_s *fdmi, u8 *pyld)
{
 struct bfa_fcs_lport_s *port = fdmi->ms->port;
 struct fdmi_rprt_s *rprt = (struct fdmi_rprt_s *) pyld;
 u16 len;

 rprt->hba_id = bfa_fcs_lport_get_pwwn(bfa_fcs_get_base_port(port->fcs));
 rprt->port_name = bfa_fcs_lport_get_pwwn(port);

 len = bfa_fcs_lport_fdmi_build_portattr_block(fdmi,
    (u8 *) &rprt->port_attr_blk);

 len += sizeof(rprt->hba_id) + sizeof(rprt->port_name);

 return len;
}
