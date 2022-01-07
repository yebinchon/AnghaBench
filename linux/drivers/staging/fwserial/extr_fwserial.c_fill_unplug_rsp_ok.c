
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* code; void* len; } ;
struct fwserial_mgmt_pkt {TYPE_1__ hdr; } ;


 int FWSC_VIRT_CABLE_UNPLUG_RSP ;
 void* cpu_to_be16 (int ) ;
 int mgmt_pkt_expected_len (void*) ;

__attribute__((used)) static inline void fill_unplug_rsp_ok(struct fwserial_mgmt_pkt *pkt)
{
 pkt->hdr.code = cpu_to_be16(FWSC_VIRT_CABLE_UNPLUG_RSP);
 pkt->hdr.len = cpu_to_be16(mgmt_pkt_expected_len(pkt->hdr.code));
}
