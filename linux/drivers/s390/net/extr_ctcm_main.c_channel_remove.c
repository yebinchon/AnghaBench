
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel {struct channel* next; struct channel* irb; struct channel* ccw; struct channel* discontact_th; int ch_disc_tasklet; int ch_tasklet; int * trans_skb; int fsm; int sweep_timer; int timer; int id; } ;


 int CTCM_DBF_TEXT_ (int ,int ,char*,int ,char*,char*) ;
 int CTCM_FUNTAIL ;
 int CTCM_ID_SIZE ;
 int CTC_DBF_INFO ;
 scalar_t__ IS_MPC (struct channel*) ;
 int SETUP ;
 int channel_free (struct channel*) ;
 struct channel* channels ;
 int clear_normalized_cda (struct channel*) ;
 int dev_kfree_skb_any (int *) ;
 int fsm_deltimer (int *) ;
 int kfree (struct channel*) ;
 int kfree_fsm (int ) ;
 int strncpy (char*,int ,int ) ;
 int tasklet_kill (int *) ;

__attribute__((used)) static void channel_remove(struct channel *ch)
{
 struct channel **c = &channels;
 char chid[CTCM_ID_SIZE+1];
 int ok = 0;

 if (ch == ((void*)0))
  return;
 else
  strncpy(chid, ch->id, CTCM_ID_SIZE);

 channel_free(ch);
 while (*c) {
  if (*c == ch) {
   *c = ch->next;
   fsm_deltimer(&ch->timer);
   if (IS_MPC(ch))
    fsm_deltimer(&ch->sweep_timer);

   kfree_fsm(ch->fsm);
   clear_normalized_cda(&ch->ccw[4]);
   if (ch->trans_skb != ((void*)0)) {
    clear_normalized_cda(&ch->ccw[1]);
    dev_kfree_skb_any(ch->trans_skb);
   }
   if (IS_MPC(ch)) {
    tasklet_kill(&ch->ch_tasklet);
    tasklet_kill(&ch->ch_disc_tasklet);
    kfree(ch->discontact_th);
   }
   kfree(ch->ccw);
   kfree(ch->irb);
   kfree(ch);
   ok = 1;
   break;
  }
  c = &((*c)->next);
 }

 CTCM_DBF_TEXT_(SETUP, CTC_DBF_INFO, "%s(%s) %s", CTCM_FUNTAIL,
   chid, ok ? "OK" : "failed");
}
