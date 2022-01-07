
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmp {int mbox_chan; } ;


 int mbox_client_txdone (int ,int ) ;
 int mbox_send_message (int ,int *) ;

__attribute__((used)) static void qmp_kick(struct qmp *qmp)
{
 mbox_send_message(qmp->mbox_chan, ((void*)0));
 mbox_client_txdone(qmp->mbox_chan, 0);
}
