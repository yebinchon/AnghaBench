
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqi_config_table_section_info {int dummy; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pqi_firmware_features_mutex ;
 int pqi_init_firmware_features () ;
 int pqi_process_firmware_features (struct pqi_config_table_section_info*) ;

__attribute__((used)) static void pqi_process_firmware_features_section(
 struct pqi_config_table_section_info *section_info)
{
 mutex_lock(&pqi_firmware_features_mutex);
 pqi_init_firmware_features();
 pqi_process_firmware_features(section_info);
 mutex_unlock(&pqi_firmware_features_mutex);
}
