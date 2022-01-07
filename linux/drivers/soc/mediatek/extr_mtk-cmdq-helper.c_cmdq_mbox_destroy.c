
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmdq_client {scalar_t__ timeout_ms; int chan; int lock; int timer; } ;


 scalar_t__ CMDQ_NO_TIMEOUT ;
 int del_timer_sync (int *) ;
 int kfree (struct cmdq_client*) ;
 int mbox_free_channel (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void cmdq_mbox_destroy(struct cmdq_client *client)
{
 if (client->timeout_ms != CMDQ_NO_TIMEOUT) {
  spin_lock(&client->lock);
  del_timer_sync(&client->timer);
  spin_unlock(&client->lock);
 }
 mbox_free_channel(client->chan);
 kfree(client);
}
