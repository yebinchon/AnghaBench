
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct send_ctx {int dummy; } ;
struct orphan_dir_info {int dummy; } ;


 struct orphan_dir_info* get_orphan_dir_info (struct send_ctx*,int ) ;

__attribute__((used)) static int is_waiting_for_rm(struct send_ctx *sctx, u64 dir_ino)
{
 struct orphan_dir_info *odi = get_orphan_dir_info(sctx, dir_ino);

 return odi != ((void*)0);
}
