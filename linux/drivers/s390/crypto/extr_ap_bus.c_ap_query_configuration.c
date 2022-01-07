
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ap_config_info {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int ap_configuration_available () ;
 int ap_qci (struct ap_config_info*) ;

__attribute__((used)) static inline int ap_query_configuration(struct ap_config_info *info)
{
 if (!ap_configuration_available())
  return -EOPNOTSUPP;
 if (!info)
  return -EINVAL;
 return ap_qci(info);
}
