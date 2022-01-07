
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_host_template {char const* name; char const* proc_name; struct module* module; } ;
struct module {int dummy; } ;


 struct scsi_host_template usb_stor_host_template ;

void usb_stor_host_template_init(struct scsi_host_template *sht,
     const char *name, struct module *owner)
{
 *sht = usb_stor_host_template;
 sht->name = name;
 sht->proc_name = name;
 sht->module = owner;
}
