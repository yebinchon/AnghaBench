
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int KT_SPKUP ;
 int SPEAKUP_HELP ;
 int spk_handle_help (struct vc_data*,int ,int ,int ) ;

__attribute__((used)) static void speakup_help(struct vc_data *vc)
{
 spk_handle_help(vc, KT_SPKUP, SPEAKUP_HELP, 0);
}
