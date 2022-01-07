
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device_handler {int dummy; } ;


 struct scsi_device_handler* __scsi_dh_lookup (char const*) ;
 int request_module (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static struct scsi_device_handler *scsi_dh_lookup(const char *name)
{
 struct scsi_device_handler *dh;

 if (!name || strlen(name) == 0)
  return ((void*)0);

 dh = __scsi_dh_lookup(name);
 if (!dh) {
  request_module("scsi_dh_%s", name);
  dh = __scsi_dh_lookup(name);
 }

 return dh;
}
