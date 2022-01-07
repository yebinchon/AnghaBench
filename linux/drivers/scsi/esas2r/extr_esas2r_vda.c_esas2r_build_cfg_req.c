
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct esas2r_request {TYPE_2__* vrq; } ;
struct esas2r_adapter {int dummy; } ;
struct atto_vda_cfg_req {int data; int length; int sub_func; } ;
struct TYPE_3__ {int function; } ;
struct TYPE_4__ {TYPE_1__ scsi; struct atto_vda_cfg_req cfg; } ;


 int VDA_FUNC_CFG ;
 int clear_vda_request (struct esas2r_request*) ;
 int cpu_to_le32 (int ) ;
 int esas2r_nuxi_cfg_data (int ,void*) ;
 int memcpy (int *,void*,int ) ;

void esas2r_build_cfg_req(struct esas2r_adapter *a,
     struct esas2r_request *rq,
     u8 sub_func,
     u32 length,
     void *data)
{
 struct atto_vda_cfg_req *vrq = &rq->vrq->cfg;

 clear_vda_request(rq);

 rq->vrq->scsi.function = VDA_FUNC_CFG;

 vrq->sub_func = sub_func;
 vrq->length = cpu_to_le32(length);

 if (data) {
  esas2r_nuxi_cfg_data(sub_func, data);

  memcpy(&vrq->data, data, length);
 }
}
