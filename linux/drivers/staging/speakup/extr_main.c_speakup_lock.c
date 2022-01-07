
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int key_speakup ;
 int spk_key_locked ;

__attribute__((used)) static void speakup_lock(struct vc_data *vc)
{
 if (!spk_key_locked) {
  spk_key_locked = 16;
  key_speakup = 16;
 } else {
  spk_key_locked = 0;
  key_speakup = 0;
 }
}
