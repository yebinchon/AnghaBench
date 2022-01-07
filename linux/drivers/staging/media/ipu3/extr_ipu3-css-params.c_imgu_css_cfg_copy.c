
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_fw_isp_parameter {int dummy; } ;
struct imgu_css {int dummy; } ;
typedef enum imgu_abi_param_class { ____Placeholder_imgu_abi_param_class } imgu_abi_param_class ;
typedef enum imgu_abi_memories { ____Placeholder_imgu_abi_memories } imgu_abi_memories ;


 int EPROTO ;
 void* ERR_PTR (int ) ;
 int IMGU_ABI_PARAM_CLASS_PARAM ;
 void* imgu_css_fw_pipeline_params (struct imgu_css*,unsigned int,int const,int,struct imgu_fw_isp_parameter*,size_t,void*) ;
 int memcpy (void*,void*,size_t) ;

__attribute__((used)) static void *imgu_css_cfg_copy(struct imgu_css *css,
          unsigned int pipe, bool use_user,
          void *user_setting, void *old_binary_params,
          void *new_binary_params,
          enum imgu_abi_memories m,
          struct imgu_fw_isp_parameter *par,
          size_t par_size)
{
 const enum imgu_abi_param_class c = IMGU_ABI_PARAM_CLASS_PARAM;
 void *new_setting, *old_setting;

 new_setting = imgu_css_fw_pipeline_params(css, pipe, c, m, par,
        par_size, new_binary_params);
 if (!new_setting)
  return ERR_PTR(-EPROTO);

 if (use_user) {

  memcpy(new_setting, user_setting, par_size);
 } else if (old_binary_params) {

  old_setting = imgu_css_fw_pipeline_params(css, pipe, c, m, par,
         par_size,
         old_binary_params);
  if (!old_setting)
   return ERR_PTR(-EPROTO);
  memcpy(new_setting, old_setting, par_size);
 } else {
  return new_setting;
 }

 return ((void*)0);
}
