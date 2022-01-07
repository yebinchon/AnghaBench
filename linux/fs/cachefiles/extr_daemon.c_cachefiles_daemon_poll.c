
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct poll_table_struct {int dummy; } ;
struct file {struct cachefiles_cache* private_data; } ;
struct cachefiles_cache {int flags; int daemon_pollwq; } ;
typedef int __poll_t ;


 int CACHEFILES_CULLING ;
 int CACHEFILES_STATE_CHANGED ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static __poll_t cachefiles_daemon_poll(struct file *file,
        struct poll_table_struct *poll)
{
 struct cachefiles_cache *cache = file->private_data;
 __poll_t mask;

 poll_wait(file, &cache->daemon_pollwq, poll);
 mask = 0;

 if (test_bit(CACHEFILES_STATE_CHANGED, &cache->flags))
  mask |= EPOLLIN;

 if (test_bit(CACHEFILES_CULLING, &cache->flags))
  mask |= EPOLLOUT;

 return mask;
}
