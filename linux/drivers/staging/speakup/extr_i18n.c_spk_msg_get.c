
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum msg_index_t { ____Placeholder_msg_index_t } msg_index_t ;


 char** speakup_msgs ;

char *spk_msg_get(enum msg_index_t index)
{
 return speakup_msgs[index];
}
