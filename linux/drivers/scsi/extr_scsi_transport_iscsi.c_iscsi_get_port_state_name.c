
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct iscsi_cls_host {int port_state; } ;
struct Scsi_Host {struct iscsi_cls_host* shost_data; } ;
struct TYPE_3__ {int value; char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* iscsi_port_state_names ;

char *iscsi_get_port_state_name(struct Scsi_Host *shost)
{
 int i;
 char *state = "Unknown!";
 struct iscsi_cls_host *ihost = shost->shost_data;
 uint32_t port_state = ihost->port_state;

 for (i = 0; i < ARRAY_SIZE(iscsi_port_state_names); i++) {
  if (iscsi_port_state_names[i].value & port_state) {
   state = iscsi_port_state_names[i].name;
   break;
  }
 }
 return state;
}
