
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gb_audio_manager_module_attribute {int dummy; } ;
struct TYPE_2__ {char* name; } ;
struct gb_audio_manager_module {TYPE_1__ desc; } ;
typedef int ssize_t ;


 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t gb_audio_module_name_show(
 struct gb_audio_manager_module *module,
 struct gb_audio_manager_module_attribute *attr, char *buf)
{
 return sprintf(buf, "%s", module->desc.name);
}
