
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct t10_pr_registration {char* pr_reg_isid; int isid_present_at_reg; } ;


 int snprintf (char*,int ,char*,char*) ;

void core_pr_dump_initiator_port(
 struct t10_pr_registration *pr_reg,
 char *buf,
 u32 size)
{
 if (!pr_reg->isid_present_at_reg) {
  buf[0] = '\0';
  return;
 }

 snprintf(buf, size, ",i,0x%s", pr_reg->pr_reg_isid);
}
