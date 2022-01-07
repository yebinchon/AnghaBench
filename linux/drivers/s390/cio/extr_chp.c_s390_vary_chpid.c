
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chp_id {int id; int cssid; } ;


 int CIO_TRACE_EVENT (int,char*) ;
 int chp_get_status (struct chp_id) ;
 int chsc_chp_vary (struct chp_id,int) ;
 int set_chp_logically_online (struct chp_id,int) ;
 int sprintf (char*,char*,int ,int ) ;

__attribute__((used)) static int s390_vary_chpid(struct chp_id chpid, int on)
{
 char dbf_text[15];
 int status;

 sprintf(dbf_text, on?"varyon%x.%02x":"varyoff%x.%02x", chpid.cssid,
  chpid.id);
 CIO_TRACE_EVENT(2, dbf_text);

 status = chp_get_status(chpid);
 if (!on && !status)
  return 0;

 set_chp_logically_online(chpid, on);
 chsc_chp_vary(chpid, on);
 return 0;
}
