
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dir_entry {int name_len; int type; int ino; int offset; } ;
struct dir_context {scalar_t__ pos; } ;


 int dir_emit (struct dir_context*,char*,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ get_unaligned (int *) ;

__attribute__((used)) static int btrfs_filldir(void *addr, int entries, struct dir_context *ctx)
{
 while (entries--) {
  struct dir_entry *entry = addr;
  char *name = (char *)(entry + 1);

  ctx->pos = get_unaligned(&entry->offset);
  if (!dir_emit(ctx, name, get_unaligned(&entry->name_len),
      get_unaligned(&entry->ino),
      get_unaligned(&entry->type)))
   return 1;
  addr += sizeof(struct dir_entry) +
   get_unaligned(&entry->name_len);
  ctx->pos++;
 }
 return 0;
}
