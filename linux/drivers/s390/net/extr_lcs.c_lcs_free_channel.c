
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lcs_channel {TYPE_1__* iob; } ;
struct TYPE_2__ {int * data; } ;


 int LCS_DBF_TEXT (int,int ,char*) ;
 int LCS_NUM_BUFFS ;
 int kfree (int *) ;
 int setup ;

__attribute__((used)) static void
lcs_free_channel(struct lcs_channel *channel)
{
 int cnt;

 LCS_DBF_TEXT(2, setup, "ichfree");
 for (cnt = 0; cnt < LCS_NUM_BUFFS; cnt++) {
  kfree(channel->iob[cnt].data);
  channel->iob[cnt].data = ((void*)0);
 }
}
