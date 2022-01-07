
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {scalar_t__ tv_sec; } ;
struct sigaction {int sa_mask; scalar_t__ sa_flags; int sa_handler; } ;
struct loopback_test {int poll_count; TYPE_1__* fds; struct timespec poll_timeout; } ;
typedef int sigset_t ;
struct TYPE_2__ {int revents; int fd; } ;


 int EPOLLPRI ;
 int SIGINT ;
 int SIG_BLOCK ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int handler ;
 int is_complete (struct loopback_test*) ;
 int ppoll (TYPE_1__*,int,struct timespec*,int *) ;
 int read (int ,char*,int) ;
 int sigaction (int ,struct sigaction*,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int stderr ;
 int stop_tests (struct loopback_test*) ;

__attribute__((used)) static int wait_for_complete(struct loopback_test *t)
{
 int number_of_events = 0;
 char dummy;
 int ret;
 int i;
 struct timespec *ts = ((void*)0);
 struct sigaction sa;
 sigset_t mask_old, mask;

 sigemptyset(&mask);
 sigemptyset(&mask_old);
 sigaddset(&mask, SIGINT);
 sigprocmask(SIG_BLOCK, &mask, &mask_old);

 sa.sa_handler = handler;
 sa.sa_flags = 0;
 sigemptyset(&sa.sa_mask);
 if (sigaction(SIGINT, &sa, ((void*)0)) == -1) {
  fprintf(stderr, "sigaction error\n");
  return -1;
 }

 if (t->poll_timeout.tv_sec != 0)
  ts = &t->poll_timeout;

 while (1) {

  ret = ppoll(t->fds, t->poll_count, ts, &mask_old);
  if (ret <= 0) {
   stop_tests(t);
   fprintf(stderr, "Poll exit with errno %d\n", errno);
   return -1;
  }

  for (i = 0; i < t->poll_count; i++) {
   if (t->fds[i].revents & EPOLLPRI) {

    read(t->fds[i].fd, &dummy, 1);
    number_of_events++;
   }
  }

  if (number_of_events == t->poll_count)
   break;
 }

 if (!is_complete(t)) {
  fprintf(stderr, "Iteration count did not finish!\n");
  return -1;
 }

 return 0;
}
