
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int slist; int aname; int uname; int cachetag; scalar_t__ fscache; int * clnt; } ;


 int kfree (int ) ;
 int list_del (int *) ;
 int p9_client_destroy (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int v9fs_cache_session_put_cookie (struct v9fs_session_info*) ;
 int v9fs_sessionlist_lock ;

void v9fs_session_close(struct v9fs_session_info *v9ses)
{
 if (v9ses->clnt) {
  p9_client_destroy(v9ses->clnt);
  v9ses->clnt = ((void*)0);
 }







 kfree(v9ses->uname);
 kfree(v9ses->aname);

 spin_lock(&v9fs_sessionlist_lock);
 list_del(&v9ses->slist);
 spin_unlock(&v9fs_sessionlist_lock);
}
