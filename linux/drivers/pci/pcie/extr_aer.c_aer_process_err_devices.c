
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aer_err_info {int error_dev_num; scalar_t__* dev; } ;


 scalar_t__ aer_get_device_error_info (scalar_t__,struct aer_err_info*) ;
 int aer_print_error (scalar_t__,struct aer_err_info*) ;
 int handle_error_source (scalar_t__,struct aer_err_info*) ;

__attribute__((used)) static inline void aer_process_err_devices(struct aer_err_info *e_info)
{
 int i;


 for (i = 0; i < e_info->error_dev_num && e_info->dev[i]; i++) {
  if (aer_get_device_error_info(e_info->dev[i], e_info))
   aer_print_error(e_info->dev[i], e_info);
 }
 for (i = 0; i < e_info->error_dev_num && e_info->dev[i]; i++) {
  if (aer_get_device_error_info(e_info->dev[i], e_info))
   handle_error_source(e_info->dev[i], e_info);
 }
}
