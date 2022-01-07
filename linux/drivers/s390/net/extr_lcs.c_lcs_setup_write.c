
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long data; int func; } ;
struct TYPE_4__ {int wait_q; TYPE_1__ irq_tasklet; } ;
struct lcs_card {TYPE_2__ write; } ;


 int LCS_DBF_TEXT (int,int ,char*) ;
 int init_waitqueue_head (int *) ;
 int lcs_setup_write_ccws (struct lcs_card*) ;
 int lcs_tasklet ;
 int setup ;

__attribute__((used)) static void
lcs_setup_write(struct lcs_card *card)
{
 LCS_DBF_TEXT(3, setup, "initwrit");

 lcs_setup_write_ccws(card);

 card->write.irq_tasklet.data = (unsigned long) &card->write;
 card->write.irq_tasklet.func = lcs_tasklet;

 init_waitqueue_head(&card->write.wait_q);
}
