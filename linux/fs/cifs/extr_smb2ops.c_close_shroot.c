
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cached_fid {int fid_mutex; int refcount; } ;


 int kref_put (int *,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int smb2_close_cached_fid ;

void close_shroot(struct cached_fid *cfid)
{
 mutex_lock(&cfid->fid_mutex);
 kref_put(&cfid->refcount, smb2_close_cached_fid);
 mutex_unlock(&cfid->fid_mutex);
}
