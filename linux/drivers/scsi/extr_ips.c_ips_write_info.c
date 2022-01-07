
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Scsi_Host {scalar_t__ hostdata; } ;
typedef int ips_ha_t ;


 int EINVAL ;
 int ips_next_controller ;
 struct Scsi_Host** ips_sh ;

__attribute__((used)) static int
ips_write_info(struct Scsi_Host *host, char *buffer, int length)
{
 int i;
 ips_ha_t *ha = ((void*)0);


 for (i = 0; i < ips_next_controller; i++) {
  if (ips_sh[i]) {
   if (ips_sh[i] == host) {
    ha = (ips_ha_t *) ips_sh[i]->hostdata;
    break;
   }
  }
 }

 if (!ha)
  return (-EINVAL);

 return 0;
}
