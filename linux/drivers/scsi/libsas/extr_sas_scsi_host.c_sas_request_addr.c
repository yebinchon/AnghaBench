
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct firmware {scalar_t__ size; int data; } ;
struct Scsi_Host {int shost_gendev; } ;


 int ENODEV ;
 int SAS_ADDR_SIZE ;
 scalar_t__ SAS_STRING_ADDR_SIZE ;
 int hex2bin (int *,int ,int) ;
 int release_firmware (struct firmware const*) ;
 int request_firmware (struct firmware const**,char*,int *) ;
 int strnlen (int ,int) ;

int sas_request_addr(struct Scsi_Host *shost, u8 *addr)
{
 int res;
 const struct firmware *fw;

 res = request_firmware(&fw, "sas_addr", &shost->shost_gendev);
 if (res)
  return res;

 if (fw->size < SAS_STRING_ADDR_SIZE) {
  res = -ENODEV;
  goto out;
 }

 res = hex2bin(addr, fw->data, strnlen(fw->data, SAS_ADDR_SIZE * 2) / 2);
 if (res)
  goto out;

out:
 release_firmware(fw);
 return res;
}
