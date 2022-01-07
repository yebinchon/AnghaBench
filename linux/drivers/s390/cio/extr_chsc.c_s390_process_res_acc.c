
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cssid; int id; } ;
struct chp_link {int fla; TYPE_1__ chpid; } ;


 int CIO_TRACE_EVENT (int,char*) ;
 int __s390_process_res_acc ;
 int css_schedule_reprobe () ;
 int css_wait_for_slow_path () ;
 int for_each_subchannel_staged (int ,int *,struct chp_link*) ;
 int sprintf (char*,char*,int,...) ;

__attribute__((used)) static void s390_process_res_acc(struct chp_link *link)
{
 char dbf_txt[15];

 sprintf(dbf_txt, "accpr%x.%02x", link->chpid.cssid,
  link->chpid.id);
 CIO_TRACE_EVENT( 2, dbf_txt);
 if (link->fla != 0) {
  sprintf(dbf_txt, "fla%x", link->fla);
  CIO_TRACE_EVENT( 2, dbf_txt);
 }

 css_wait_for_slow_path();







 for_each_subchannel_staged(__s390_process_res_acc, ((void*)0), link);
 css_schedule_reprobe();
}
