
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lcs_card {int lancmd_waiters; int ipm_list; int mask_lock; int ipm_lock; int lock; int wait_q; scalar_t__ tx_emitted; int * tx_buffer; int state; } ;


 int DEV_STATE_DOWN ;
 int INIT_LIST_HEAD (int *) ;
 int LCS_DBF_HEX (int,int ,struct lcs_card**,int) ;
 int LCS_DBF_TEXT (int,int ,char*) ;
 int init_waitqueue_head (int *) ;
 int lcs_setup_read (struct lcs_card*) ;
 int lcs_setup_write (struct lcs_card*) ;
 int setup ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void
lcs_setup_card(struct lcs_card *card)
{
 LCS_DBF_TEXT(2, setup, "initcard");
 LCS_DBF_HEX(2, setup, &card, sizeof(void*));

 lcs_setup_read(card);
 lcs_setup_write(card);

 card->state = DEV_STATE_DOWN;
 card->tx_buffer = ((void*)0);
 card->tx_emitted = 0;

 init_waitqueue_head(&card->wait_q);
 spin_lock_init(&card->lock);
 spin_lock_init(&card->ipm_lock);
 spin_lock_init(&card->mask_lock);



 INIT_LIST_HEAD(&card->lancmd_waiters);
}
