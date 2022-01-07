
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct loopback_test {char* test_name; int test_id; } ;
struct TYPE_2__ {int type; int * name; } ;


 int close_poll_files (struct loopback_test*) ;
 TYPE_1__* dict ;
 int fprintf (int ,char*,char*) ;
 int get_results (struct loopback_test*) ;
 int log_results (struct loopback_test*) ;
 int open_poll_files (struct loopback_test*) ;
 int prepare_devices (struct loopback_test*) ;
 int printf (char*) ;
 int start (struct loopback_test*) ;
 int stderr ;
 scalar_t__ strstr (int *,char*) ;
 int usage () ;
 int wait_for_complete (struct loopback_test*) ;

void loopback_run(struct loopback_test *t)
{
 int i;
 int ret;

 for (i = 0; dict[i].name != ((void*)0); i++) {
  if (strstr(dict[i].name, t->test_name))
   t->test_id = dict[i].type;
 }
 if (!t->test_id) {
  fprintf(stderr, "invalid test %s\n", t->test_name);
  usage();
  return;
 }

 prepare_devices(t);

 ret = open_poll_files(t);
 if (ret)
  goto err;

 start(t);

 ret = wait_for_complete(t);
 close_poll_files(t);
 if (ret)
  goto err;


 get_results(t);

 log_results(t);

 return;

err:
 printf("Error running test\n");
 return;
}
