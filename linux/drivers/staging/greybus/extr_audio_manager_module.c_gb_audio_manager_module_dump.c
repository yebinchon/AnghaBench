
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int op_devices; int ip_devices; int intf_id; int pid; int vid; int name; } ;
struct gb_audio_manager_module {TYPE_1__ desc; int id; } ;


 int pr_info (char*,int ,int ,int ,int ,int ,int ,int ) ;

void gb_audio_manager_module_dump(struct gb_audio_manager_module *module)
{
 pr_info("audio module #%d name=%s vid=%d pid=%d intf_id=%d i/p devices=0x%X o/p devices=0x%X\n",
  module->id,
  module->desc.name,
  module->desc.vid,
  module->desc.pid,
  module->desc.intf_id,
  module->desc.ip_devices,
  module->desc.op_devices);
}
