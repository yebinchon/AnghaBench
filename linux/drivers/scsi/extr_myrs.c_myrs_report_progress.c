
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct myrs_hba {int host; } ;


 int KERN_INFO ;
 int shost_printk (int ,int ,char*,unsigned short,unsigned char*,int) ;

__attribute__((used)) static void myrs_report_progress(struct myrs_hba *cs, unsigned short ldev_num,
  unsigned char *msg, unsigned long blocks,
  unsigned long size)
{
 shost_printk(KERN_INFO, cs->host,
       "Logical Drive %d: %s in Progress: %d%% completed\n",
       ldev_num, msg,
       (100 * (int)(blocks >> 7)) / (int)(size >> 7));
}
