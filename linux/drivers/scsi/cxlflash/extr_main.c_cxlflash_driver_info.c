
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {int dummy; } ;


 char const* CXLFLASH_ADAPTER_NAME ;

__attribute__((used)) static const char *cxlflash_driver_info(struct Scsi_Host *host)
{
 return CXLFLASH_ADAPTER_NAME;
}
