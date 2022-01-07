
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fw; } ;
struct s3fwrn5_fw_info {TYPE_1__ fw; } ;


 int release_firmware (int ) ;

__attribute__((used)) static void s3fwrn5_fw_release_firmware(struct s3fwrn5_fw_info *fw_info)
{
 release_firmware(fw_info->fw.fw);
}
