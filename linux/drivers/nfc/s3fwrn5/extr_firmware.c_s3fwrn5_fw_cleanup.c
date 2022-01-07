
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3fwrn5_fw_info {int dummy; } ;


 int s3fwrn5_fw_release_firmware (struct s3fwrn5_fw_info*) ;

void s3fwrn5_fw_cleanup(struct s3fwrn5_fw_info *fw_info)
{
 s3fwrn5_fw_release_firmware(fw_info);
}
