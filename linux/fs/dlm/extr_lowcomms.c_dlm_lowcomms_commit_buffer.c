
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct writequeue_entry {int users; scalar_t__ offset; scalar_t__ end; scalar_t__ len; struct connection* con; } ;
struct connection {int writequeue_lock; int swork; } ;


 int queue_work (int ,int *) ;
 int send_workqueue ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void dlm_lowcomms_commit_buffer(void *mh)
{
 struct writequeue_entry *e = (struct writequeue_entry *)mh;
 struct connection *con = e->con;
 int users;

 spin_lock(&con->writequeue_lock);
 users = --e->users;
 if (users)
  goto out;
 e->len = e->end - e->offset;
 spin_unlock(&con->writequeue_lock);

 queue_work(send_workqueue, &con->swork);
 return;

out:
 spin_unlock(&con->writequeue_lock);
 return;
}
