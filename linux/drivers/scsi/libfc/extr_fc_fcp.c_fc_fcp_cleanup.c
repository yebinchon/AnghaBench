
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc_lport {int dummy; } ;


 int FC_ERROR ;
 int fc_fcp_cleanup_each_cmd (struct fc_lport*,int,int,int ) ;

__attribute__((used)) static void fc_fcp_cleanup(struct fc_lport *lport)
{
 fc_fcp_cleanup_each_cmd(lport, -1, -1, FC_ERROR);
}
