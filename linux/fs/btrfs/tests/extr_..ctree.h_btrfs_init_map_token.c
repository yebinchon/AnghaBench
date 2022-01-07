
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_map_token {int * kaddr; struct extent_buffer* eb; } ;



__attribute__((used)) static inline void btrfs_init_map_token(struct btrfs_map_token *token,
     struct extent_buffer *eb)
{
 token->eb = eb;
 token->kaddr = ((void*)0);
}
