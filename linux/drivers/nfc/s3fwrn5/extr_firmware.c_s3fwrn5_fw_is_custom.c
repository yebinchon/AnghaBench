
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3fwrn5_fw_cmd_get_bootinfo_rsp {int * hw_version; } ;



__attribute__((used)) static inline bool
s3fwrn5_fw_is_custom(struct s3fwrn5_fw_cmd_get_bootinfo_rsp *bootinfo)
{
 return !!bootinfo->hw_version[2];
}
