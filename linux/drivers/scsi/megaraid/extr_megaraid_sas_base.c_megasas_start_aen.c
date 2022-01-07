
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int class; int locale; scalar_t__ reserved; } ;
union megasas_evt_class_locale {int word; TYPE_1__ members; } ;
struct megasas_instance {int dummy; } ;
struct megasas_evt_log_info {int newest_seq_num; } ;
typedef int eli ;


 int MR_EVT_CLASS_DEBUG ;
 int MR_EVT_LOCALE_ALL ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ megasas_get_seq_num (struct megasas_instance*,struct megasas_evt_log_info*) ;
 int megasas_register_aen (struct megasas_instance*,scalar_t__,int ) ;
 int memset (struct megasas_evt_log_info*,int ,int) ;

__attribute__((used)) static int megasas_start_aen(struct megasas_instance *instance)
{
 struct megasas_evt_log_info eli;
 union megasas_evt_class_locale class_locale;




 memset(&eli, 0, sizeof(eli));

 if (megasas_get_seq_num(instance, &eli))
  return -1;




 class_locale.members.reserved = 0;
 class_locale.members.locale = MR_EVT_LOCALE_ALL;
 class_locale.members.class = MR_EVT_CLASS_DEBUG;

 return megasas_register_aen(instance,
   le32_to_cpu(eli.newest_seq_num) + 1,
   class_locale.word);
}
