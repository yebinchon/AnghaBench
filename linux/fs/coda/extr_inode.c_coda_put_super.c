
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_comm {int vc_mutex; int * vc_sb; } ;
struct super_block {int * s_fs_info; } ;


 struct venus_comm* coda_vcp (struct super_block*) ;
 int mutex_destroy (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*) ;

__attribute__((used)) static void coda_put_super(struct super_block *sb)
{
 struct venus_comm *vcp = coda_vcp(sb);
 mutex_lock(&vcp->vc_mutex);
 vcp->vc_sb = ((void*)0);
 sb->s_fs_info = ((void*)0);
 mutex_unlock(&vcp->vc_mutex);
 mutex_destroy(&vcp->vc_mutex);

 pr_info("Bye bye.\n");
}
