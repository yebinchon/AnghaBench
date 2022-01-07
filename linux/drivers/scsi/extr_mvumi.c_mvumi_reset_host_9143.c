
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvumi_hba {int dummy; } ;


 int mvumi_wait_for_outstanding (struct mvumi_hba*) ;

__attribute__((used)) static int mvumi_reset_host_9143(struct mvumi_hba *mhba)
{
 return mvumi_wait_for_outstanding(mhba);
}
