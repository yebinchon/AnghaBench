
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct send_ctx {int dummy; } ;
struct recorded_ref {struct fs_path* full_path; int name_len; int name; int dir_gen; int dir; } ;
struct fs_path {int dummy; } ;


 int ENOMEM ;
 int fs_path_add (struct fs_path*,int ,int ) ;
 struct fs_path* fs_path_alloc () ;
 int fs_path_free (struct fs_path*) ;
 int get_cur_path (struct send_ctx*,int ,int ,struct fs_path*) ;
 int set_ref_path (struct recorded_ref*,struct fs_path*) ;

__attribute__((used)) static int update_ref_path(struct send_ctx *sctx, struct recorded_ref *ref)
{
 int ret;
 struct fs_path *new_path;





 new_path = fs_path_alloc();
 if (!new_path)
  return -ENOMEM;

 ret = get_cur_path(sctx, ref->dir, ref->dir_gen, new_path);
 if (ret < 0) {
  fs_path_free(new_path);
  return ret;
 }
 ret = fs_path_add(new_path, ref->name, ref->name_len);
 if (ret < 0) {
  fs_path_free(new_path);
  return ret;
 }

 fs_path_free(ref->full_path);
 set_ref_path(ref, new_path);

 return 0;
}
