
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int vc_num; } ;


 int kfree (int *) ;
 int ** speakup_console ;

__attribute__((used)) static void speakup_deallocate(struct vc_data *vc)
{
 int vc_num;

 vc_num = vc->vc_num;
 kfree(speakup_console[vc_num]);
 speakup_console[vc_num] = ((void*)0);
}
