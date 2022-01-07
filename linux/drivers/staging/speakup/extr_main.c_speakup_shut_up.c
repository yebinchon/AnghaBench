
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int speakup_date (struct vc_data*) ;
 int spk_do_flush () ;
 scalar_t__ spk_killed ;
 int spk_parked ;
 int spk_shut_up ;
 scalar_t__ synth ;

__attribute__((used)) static void speakup_shut_up(struct vc_data *vc)
{
 if (spk_killed)
  return;
 spk_shut_up |= 0x01;
 spk_parked &= 0xfe;
 speakup_date(vc);
 if (synth)
  spk_do_flush();
}
