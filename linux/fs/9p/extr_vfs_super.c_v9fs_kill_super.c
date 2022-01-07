
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int dummy; } ;
struct super_block {struct v9fs_session_info* s_fs_info; } ;


 int P9_DEBUG_VFS ;
 int kfree (struct v9fs_session_info*) ;
 int kill_anon_super (struct super_block*) ;
 int p9_debug (int ,char*,...) ;
 int v9fs_session_cancel (struct v9fs_session_info*) ;
 int v9fs_session_close (struct v9fs_session_info*) ;

__attribute__((used)) static void v9fs_kill_super(struct super_block *s)
{
 struct v9fs_session_info *v9ses = s->s_fs_info;

 p9_debug(P9_DEBUG_VFS, " %p\n", s);

 kill_anon_super(s);

 v9fs_session_cancel(v9ses);
 v9fs_session_close(v9ses);
 kfree(v9ses);
 s->s_fs_info = ((void*)0);
 p9_debug(P9_DEBUG_VFS, "exiting kill_super\n");
}
