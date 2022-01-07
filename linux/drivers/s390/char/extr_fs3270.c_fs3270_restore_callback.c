
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_request {scalar_t__ rc; scalar_t__ rescnt; scalar_t__ view; } ;
struct fs3270 {int wait; scalar_t__ rdbuf_size; scalar_t__ fs_pid; } ;


 int SIGHUP ;
 int kill_pid (scalar_t__,int ,int) ;
 int raw3270_request_reset (struct raw3270_request*) ;
 int wake_up (int *) ;

__attribute__((used)) static void
fs3270_restore_callback(struct raw3270_request *rq, void *data)
{
 struct fs3270 *fp;

 fp = (struct fs3270 *) rq->view;
 if (rq->rc != 0 || rq->rescnt != 0) {
  if (fp->fs_pid)
   kill_pid(fp->fs_pid, SIGHUP, 1);
 }
 fp->rdbuf_size = 0;
 raw3270_request_reset(rq);
 wake_up(&fp->wait);
}
