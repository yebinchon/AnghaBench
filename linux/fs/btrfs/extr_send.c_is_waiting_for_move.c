
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct waiting_dir_move {int dummy; } ;
struct send_ctx {int dummy; } ;


 struct waiting_dir_move* get_waiting_dir_move (struct send_ctx*,int ) ;

__attribute__((used)) static int is_waiting_for_move(struct send_ctx *sctx, u64 ino)
{
 struct waiting_dir_move *entry = get_waiting_dir_move(sctx, ino);

 return entry != ((void*)0);
}
