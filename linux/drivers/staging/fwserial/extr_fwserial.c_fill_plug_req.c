
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fwtty_port {int dummy; } ;
struct TYPE_2__ {void* code; void* len; } ;
struct fwserial_mgmt_pkt {int plug_req; TYPE_1__ hdr; } ;


 int FWSC_VIRT_CABLE_PLUG ;
 void* cpu_to_be16 (int ) ;
 int fill_plug_params (int *,struct fwtty_port*) ;
 int mgmt_pkt_expected_len (void*) ;

__attribute__((used)) static inline void fill_plug_req(struct fwserial_mgmt_pkt *pkt,
     struct fwtty_port *port)
{
 pkt->hdr.code = cpu_to_be16(FWSC_VIRT_CABLE_PLUG);
 pkt->hdr.len = cpu_to_be16(mgmt_pkt_expected_len(pkt->hdr.code));
 fill_plug_params(&pkt->plug_req, port);
}
