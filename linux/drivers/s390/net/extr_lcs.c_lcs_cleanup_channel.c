
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_channel {int irq_tasklet; } ;


 int LCS_DBF_TEXT (int,int ,char*) ;
 int lcs_free_channel (struct lcs_channel*) ;
 int setup ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void
lcs_cleanup_channel(struct lcs_channel *channel)
{
 LCS_DBF_TEXT(3, setup, "cleanch");

 tasklet_kill(&channel->irq_tasklet);

 lcs_free_channel(channel);
}
