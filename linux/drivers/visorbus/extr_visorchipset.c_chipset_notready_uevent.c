
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ response_expected; } ;
struct controlvm_message_header {TYPE_3__ flags; } ;
struct TYPE_8__ {TYPE_2__* acpi_device; } ;
struct TYPE_5__ {int kobj; } ;
struct TYPE_6__ {TYPE_1__ dev; } ;


 int KOBJ_OFFLINE ;
 TYPE_4__* chipset_dev ;
 int controlvm_respond (struct controlvm_message_header*,int,int *) ;
 int kobject_uevent (int *,int ) ;

__attribute__((used)) static int chipset_notready_uevent(struct controlvm_message_header *msg_hdr)
{
 int res = kobject_uevent(&chipset_dev->acpi_device->dev.kobj,
     KOBJ_OFFLINE);

 if (msg_hdr->flags.response_expected)
  controlvm_respond(msg_hdr, res, ((void*)0));
 return res;
}
