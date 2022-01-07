
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qman_fq {int dummy; } ;


 int EIO ;
 unsigned int NUM_ENQUEUES ;
 int fd ;
 int fd_inc (int *) ;
 int pr_crit (char*) ;
 scalar_t__ qman_enqueue (struct qman_fq*,int *) ;

__attribute__((used)) static int do_enqueues(struct qman_fq *fq)
{
 unsigned int loop;
 int err = 0;

 for (loop = 0; loop < NUM_ENQUEUES; loop++) {
  if (qman_enqueue(fq, &fd)) {
   pr_crit("qman_enqueue() failed\n");
   err = -EIO;
  }
  fd_inc(&fd);
 }

 return err;
}
