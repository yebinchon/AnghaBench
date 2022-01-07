
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo_2_2_2 {char* name; int lpar_number; } ;


 int EBCASC_500 (char*,int) ;
 int GFP_KERNEL ;
 int free_page (unsigned long) ;
 unsigned long get_zeroed_page (int ) ;
 int pr_debug (char*,int ,char*) ;
 int sclp_ftp_event ;
 int sclp_register (int *) ;
 int stsi (struct sysinfo_2_2_2*,int,int,int) ;

int sclp_ftp_startup(void)
{



 int rc;

 rc = sclp_register(&sclp_ftp_event);
 if (rc)
  return rc;
 return 0;
}
