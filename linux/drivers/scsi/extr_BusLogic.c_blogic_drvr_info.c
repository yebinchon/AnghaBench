
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blogic_adapter {char const* full_model; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;



__attribute__((used)) static const char *blogic_drvr_info(struct Scsi_Host *host)
{
 struct blogic_adapter *adapter =
    (struct blogic_adapter *) host->hostdata;
 return adapter->full_model;
}
