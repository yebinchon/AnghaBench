
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcraid_cmd {int dummy; } ;


 int pmcraid_init_cmdblk (struct pmcraid_cmd*,int) ;

__attribute__((used)) static void pmcraid_reinit_cmdblk(struct pmcraid_cmd *cmd)
{
 pmcraid_init_cmdblk(cmd, -1);
}
