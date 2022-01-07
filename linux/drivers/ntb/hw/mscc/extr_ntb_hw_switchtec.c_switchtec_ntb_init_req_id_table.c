
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct switchtec_ntb {int mmio_self_ctrl; TYPE_1__* mmio_ntb; } ;
struct TYPE_2__ {int requester_id; } ;


 int ARRAY_SIZE (int*) ;
 int config_req_id_table (struct switchtec_ntb*,int ,int*,int ) ;
 int ioread16 (int *) ;

__attribute__((used)) static int
switchtec_ntb_init_req_id_table(struct switchtec_ntb *sndev)
{
 int req_ids[2];




 req_ids[0] = 0;




 req_ids[1] = ioread16(&sndev->mmio_ntb->requester_id);

 return config_req_id_table(sndev, sndev->mmio_self_ctrl, req_ids,
       ARRAY_SIZE(req_ids));
}
