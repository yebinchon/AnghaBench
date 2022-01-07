
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v9fs_session_info {int * fscache; int * cachetag; } ;
struct TYPE_2__ {int primary_index; } ;


 int P9_DEBUG_FSC ;
 int * fscache_acquire_cookie (int ,int *,int *,int ,int *,int ,struct v9fs_session_info*,int ,int) ;
 int kfree (int *) ;
 int p9_debug (int ,char*,struct v9fs_session_info*,int *) ;
 int strlen (int *) ;
 TYPE_1__ v9fs_cache_netfs ;
 int v9fs_cache_session_index_def ;
 scalar_t__ v9fs_random_cachetag (struct v9fs_session_info*) ;

void v9fs_cache_session_get_cookie(struct v9fs_session_info *v9ses)
{

 if (!v9ses->cachetag) {
  if (v9fs_random_cachetag(v9ses) < 0) {
   v9ses->fscache = ((void*)0);
   kfree(v9ses->cachetag);
   v9ses->cachetag = ((void*)0);
   return;
  }
 }

 v9ses->fscache = fscache_acquire_cookie(v9fs_cache_netfs.primary_index,
      &v9fs_cache_session_index_def,
      v9ses->cachetag,
      strlen(v9ses->cachetag),
      ((void*)0), 0,
      v9ses, 0, 1);
 p9_debug(P9_DEBUG_FSC, "session %p get cookie %p\n",
   v9ses, v9ses->fscache);
}
