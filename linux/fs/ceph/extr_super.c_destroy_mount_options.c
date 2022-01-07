
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_mount_options {struct ceph_mount_options* fscache_uniq; struct ceph_mount_options* server_path; struct ceph_mount_options* mds_namespace; struct ceph_mount_options* snapdir_name; } ;


 int dout (char*,struct ceph_mount_options*) ;
 int kfree (struct ceph_mount_options*) ;

__attribute__((used)) static void destroy_mount_options(struct ceph_mount_options *args)
{
 dout("destroy_mount_options %p\n", args);
 kfree(args->snapdir_name);
 kfree(args->mds_namespace);
 kfree(args->server_path);
 kfree(args->fscache_uniq);
 kfree(args);
}
