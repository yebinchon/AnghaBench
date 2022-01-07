
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {struct cachefiles_cache* private_data; } ;
struct cachefiles_cache {int frun_percent; int fcull_percent; int fstop_percent; int brun_percent; int bcull_percent; int bstop_percent; struct file* cachefilesd; int daemon_pollwq; int active_lock; int active_nodes; int daemon_mutex; } ;


 int CAP_SYS_ADMIN ;
 int EBUSY ;
 int ENOMEM ;
 int EPERM ;
 int GFP_KERNEL ;
 int RB_ROOT ;
 int _enter (char*) ;
 scalar_t__ cachefiles_open ;
 int capable (int ) ;
 int init_waitqueue_head (int *) ;
 struct cachefiles_cache* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int rwlock_init (int *) ;
 int xchg (scalar_t__*,int) ;

__attribute__((used)) static int cachefiles_daemon_open(struct inode *inode, struct file *file)
{
 struct cachefiles_cache *cache;

 _enter("");


 if (!capable(CAP_SYS_ADMIN))
  return -EPERM;


 if (xchg(&cachefiles_open, 1) == 1)
  return -EBUSY;


 cache = kzalloc(sizeof(struct cachefiles_cache), GFP_KERNEL);
 if (!cache) {
  cachefiles_open = 0;
  return -ENOMEM;
 }

 mutex_init(&cache->daemon_mutex);
 cache->active_nodes = RB_ROOT;
 rwlock_init(&cache->active_lock);
 init_waitqueue_head(&cache->daemon_pollwq);






 cache->frun_percent = 7;
 cache->fcull_percent = 5;
 cache->fstop_percent = 1;
 cache->brun_percent = 7;
 cache->bcull_percent = 5;
 cache->bstop_percent = 1;

 file->private_data = cache;
 cache->cachefilesd = file;
 return 0;
}
