
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int revision; int gs_type; int gs_subtype; } ;
struct ct_sns_req {void* max_rsp_size; void* command; TYPE_1__ header; } ;
struct TYPE_4__ {struct ct_sns_req req; } ;
struct ct_sns_pkt {TYPE_2__ p; } ;


 void* cpu_to_be16 (int) ;
 int memset (struct ct_sns_pkt*,int ,int) ;

__attribute__((used)) static inline struct ct_sns_req *
qla2x00_prep_ct_req(struct ct_sns_pkt *p, uint16_t cmd, uint16_t rsp_size)
{
 memset(p, 0, sizeof(struct ct_sns_pkt));

 p->p.req.header.revision = 0x01;
 p->p.req.header.gs_type = 0xFC;
 p->p.req.header.gs_subtype = 0x02;
 p->p.req.command = cpu_to_be16(cmd);
 p->p.req.max_rsp_size = cpu_to_be16((rsp_size - 16) / 4);

 return &p->p.req;
}
