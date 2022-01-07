
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct da9150_fg {int io_lock; } ;


 int mutex_unlock (int *) ;

__attribute__((used)) static inline void da9150_fg_read_sync_end(struct da9150_fg *fg)
{
 mutex_unlock(&fg->io_lock);
}
