
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int clnt; } ;


 int P9_DEBUG_ERROR ;
 int p9_client_begin_disconnect (int ) ;
 int p9_debug (int ,char*,struct v9fs_session_info*) ;

void v9fs_session_begin_cancel(struct v9fs_session_info *v9ses)
{
 p9_debug(P9_DEBUG_ERROR, "begin cancel session %p\n", v9ses);
 p9_client_begin_disconnect(v9ses->clnt);
}
