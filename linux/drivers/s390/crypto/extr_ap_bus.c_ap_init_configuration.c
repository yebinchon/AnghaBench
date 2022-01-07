
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_KERNEL ;
 int * ap_configuration ;
 int ap_configuration_available () ;
 scalar_t__ ap_query_configuration (int *) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;

__attribute__((used)) static void ap_init_configuration(void)
{
 if (!ap_configuration_available())
  return;

 ap_configuration = kzalloc(sizeof(*ap_configuration), GFP_KERNEL);
 if (!ap_configuration)
  return;
 if (ap_query_configuration(ap_configuration) != 0) {
  kfree(ap_configuration);
  ap_configuration = ((void*)0);
  return;
 }
}
