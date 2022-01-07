
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct scu_task_context {int initiator_request; int connection_rate; size_t task_index; int do_not_dma_ssp_good_response; int task_phase; int remote_node_index; int context_type; int valid; int protocol_type; int logical_port_index; } ;
struct isci_port {int reserved_rni; int physical_port_index; struct isci_host* owning_controller; } ;
struct isci_host {struct scu_task_context* task_context_table; } ;


 size_t ISCI_TAG_TCI (int ) ;
 int SCU_TASK_CONTEXT_PROTOCOL_SSP ;
 int SCU_TASK_CONTEXT_TYPE ;
 int SCU_TASK_CONTEXT_VALID ;
 int memset (struct scu_task_context*,int ,int) ;

__attribute__((used)) static void sci_port_construct_dummy_task(struct isci_port *iport, u16 tag)
{
 struct isci_host *ihost = iport->owning_controller;
 struct scu_task_context *task_context;

 task_context = &ihost->task_context_table[ISCI_TAG_TCI(tag)];
 memset(task_context, 0, sizeof(struct scu_task_context));

 task_context->initiator_request = 1;
 task_context->connection_rate = 1;
 task_context->logical_port_index = iport->physical_port_index;
 task_context->protocol_type = SCU_TASK_CONTEXT_PROTOCOL_SSP;
 task_context->task_index = ISCI_TAG_TCI(tag);
 task_context->valid = SCU_TASK_CONTEXT_VALID;
 task_context->context_type = SCU_TASK_CONTEXT_TYPE;
 task_context->remote_node_index = iport->reserved_rni;
 task_context->do_not_dma_ssp_good_response = 1;
 task_context->task_phase = 0x01;
}
