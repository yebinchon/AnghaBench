
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int fis_type; } ;
struct TYPE_7__ {TYPE_2__ stp; } ;
struct scu_task_context {TYPE_3__ type; int transfer_length_bytes; int command_iu_lower; int command_iu_upper; } ;
struct scu_sgl_element {int address_lower; int address_upper; } ;
struct scu_sgl_element_pair {struct scu_sgl_element B; struct scu_sgl_element A; } ;
struct TYPE_5__ {scalar_t__ set; int index; } ;
struct isci_stp_request {TYPE_1__ sgl; } ;
struct TYPE_8__ {struct isci_stp_request req; } ;
struct isci_request {struct scu_task_context* tc; TYPE_4__ stp; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;


 int FIS_DATA ;
 scalar_t__ SCU_SGL_ELEMENT_PAIR_A ;
 int sci_controller_continue_io (struct isci_request*) ;
 struct scu_sgl_element_pair* to_sgl_element_pair (struct isci_request*,int ) ;

__attribute__((used)) static enum sci_status sci_stp_request_pio_data_out_trasmit_data_frame(
 struct isci_request *ireq,
 u32 length)
{
 struct isci_stp_request *stp_req = &ireq->stp.req;
 struct scu_task_context *task_context = ireq->tc;
 struct scu_sgl_element_pair *sgl_pair;
 struct scu_sgl_element *current_sgl;




 sgl_pair = to_sgl_element_pair(ireq, stp_req->sgl.index);
 if (stp_req->sgl.set == SCU_SGL_ELEMENT_PAIR_A)
  current_sgl = &sgl_pair->A;
 else
  current_sgl = &sgl_pair->B;


 task_context->command_iu_upper = current_sgl->address_upper;
 task_context->command_iu_lower = current_sgl->address_lower;
 task_context->transfer_length_bytes = length;
 task_context->type.stp.fis_type = FIS_DATA;


 return sci_controller_continue_io(ireq);
}
