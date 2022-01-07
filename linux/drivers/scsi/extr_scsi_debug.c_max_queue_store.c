
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sdebug_queue {int in_use_bm; } ;
struct device_driver {int dummy; } ;
typedef size_t ssize_t ;


 size_t EINVAL ;
 int SDEBUG_CANQUEUE ;
 int atomic_set (int *,int) ;
 int block_unblock_all_queues (int) ;
 int find_last_bit (int ,int) ;
 int retired_max_queue ;
 int sdebug_max_queue ;
 struct sdebug_queue* sdebug_q_arr ;
 int sscanf (char const*,char*,int*) ;
 int submit_queues ;

__attribute__((used)) static ssize_t max_queue_store(struct device_driver *ddp, const char *buf,
          size_t count)
{
 int j, n, k, a;
 struct sdebug_queue *sqp;

 if ((count > 0) && (1 == sscanf(buf, "%d", &n)) && (n > 0) &&
     (n <= SDEBUG_CANQUEUE)) {
  block_unblock_all_queues(1);
  k = 0;
  for (j = 0, sqp = sdebug_q_arr; j < submit_queues;
       ++j, ++sqp) {
   a = find_last_bit(sqp->in_use_bm, SDEBUG_CANQUEUE);
   if (a > k)
    k = a;
  }
  sdebug_max_queue = n;
  if (k == SDEBUG_CANQUEUE)
   atomic_set(&retired_max_queue, 0);
  else if (k >= n)
   atomic_set(&retired_max_queue, k + 1);
  else
   atomic_set(&retired_max_queue, 0);
  block_unblock_all_queues(0);
  return count;
 }
 return -EINVAL;
}
