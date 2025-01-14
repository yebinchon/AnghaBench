
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef int u16 ;
struct scu_task_context {int abort; } ;
struct isci_port {size_t physical_port_index; int reserved_tag; struct isci_host* owning_controller; } ;
struct isci_host {struct scu_task_context* task_context_table; } ;


 size_t ISCI_TAG_TCI (int ) ;
 size_t SCU_CONTEXT_COMMAND_LOGICAL_PORT_SHIFT ;
 size_t SCU_CONTEXT_COMMAND_REQUEST_POST_TC_ABORT ;
 int sci_controller_post_request (struct isci_host*,size_t) ;

__attribute__((used)) static void sci_port_abort_dummy_request(struct isci_port *iport)
{
 struct isci_host *ihost = iport->owning_controller;
 u16 tag = iport->reserved_tag;
 struct scu_task_context *tc;
 u32 command;

 tc = &ihost->task_context_table[ISCI_TAG_TCI(tag)];
 tc->abort = 1;

 command = SCU_CONTEXT_COMMAND_REQUEST_POST_TC_ABORT |
    iport->physical_port_index << SCU_CONTEXT_COMMAND_LOGICAL_PORT_SHIFT |
    ISCI_TAG_TCI(tag);

 sci_controller_post_request(ihost, command);
}
