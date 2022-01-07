
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u64 ;
struct recorded_ref {int list; void* dir_gen; void* dir; } ;
struct list_head {int dummy; } ;
struct fs_path {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct recorded_ref* kmalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int set_ref_path (struct recorded_ref*,struct fs_path*) ;

__attribute__((used)) static int __record_ref(struct list_head *head, u64 dir,
        u64 dir_gen, struct fs_path *path)
{
 struct recorded_ref *ref;

 ref = kmalloc(sizeof(*ref), GFP_KERNEL);
 if (!ref)
  return -ENOMEM;

 ref->dir = dir;
 ref->dir_gen = dir_gen;
 set_ref_path(ref, path);
 list_add_tail(&ref->list, head);
 return 0;
}
