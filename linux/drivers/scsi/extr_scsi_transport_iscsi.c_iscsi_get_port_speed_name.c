
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct iscsi_cls_host {int port_speed; } ;
struct Scsi_Host {struct iscsi_cls_host* shost_data; } ;
struct TYPE_3__ {int value; char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* iscsi_port_speed_names ;

char *iscsi_get_port_speed_name(struct Scsi_Host *shost)
{
 int i;
 char *speed = "Unknown!";
 struct iscsi_cls_host *ihost = shost->shost_data;
 uint32_t port_speed = ihost->port_speed;

 for (i = 0; i < ARRAY_SIZE(iscsi_port_speed_names); i++) {
  if (iscsi_port_speed_names[i].value & port_speed) {
   speed = iscsi_port_speed_names[i].name;
   break;
  }
 }
 return speed;
}
