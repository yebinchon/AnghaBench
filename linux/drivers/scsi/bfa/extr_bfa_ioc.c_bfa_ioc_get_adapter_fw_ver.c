
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfa_ioc_s {TYPE_1__* attr; } ;
struct TYPE_2__ {int fw_version; } ;


 int BFA_VERSION_LEN ;
 int memcpy (char*,int ,int ) ;
 int memset (void*,int ,int ) ;

void
bfa_ioc_get_adapter_fw_ver(struct bfa_ioc_s *ioc, char *fw_ver)
{
 memset((void *)fw_ver, 0, BFA_VERSION_LEN);
 memcpy(fw_ver, ioc->attr->fw_version, BFA_VERSION_LEN);
}
