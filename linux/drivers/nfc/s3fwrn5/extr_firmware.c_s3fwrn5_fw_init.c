
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * fw; } ;
struct s3fwrn5_fw_info {int parity; int completion; int fw_name; TYPE_1__ fw; int * rsp; } ;


 int init_completion (int *) ;
 int strcpy (int ,char const*) ;

void s3fwrn5_fw_init(struct s3fwrn5_fw_info *fw_info, const char *fw_name)
{
 fw_info->parity = 0x00;
 fw_info->rsp = ((void*)0);
 fw_info->fw.fw = ((void*)0);
 strcpy(fw_info->fw_name, fw_name);
 init_completion(&fw_info->completion);
}
