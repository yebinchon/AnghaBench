
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct aac_dev {size_t cardtype; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_2__ {char const* name; } ;


 TYPE_1__* aac_drivers ;

__attribute__((used)) static const char *aac_info(struct Scsi_Host *shost)
{
 struct aac_dev *dev = (struct aac_dev *)shost->hostdata;
 return aac_drivers[dev->cardtype].name;
}
