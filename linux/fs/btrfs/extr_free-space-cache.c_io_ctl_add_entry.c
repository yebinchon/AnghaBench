
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_io_ctl {int size; scalar_t__ index; scalar_t__ num_pages; struct btrfs_free_space_entry* cur; } ;
struct btrfs_free_space_entry {int type; void* bytes; void* offset; } ;


 int BTRFS_FREE_SPACE_BITMAP ;
 int BTRFS_FREE_SPACE_EXTENT ;
 int ENOSPC ;
 void* cpu_to_le64 (int ) ;
 int io_ctl_map_page (struct btrfs_io_ctl*,int) ;
 int io_ctl_set_crc (struct btrfs_io_ctl*,scalar_t__) ;

__attribute__((used)) static int io_ctl_add_entry(struct btrfs_io_ctl *io_ctl, u64 offset, u64 bytes,
       void *bitmap)
{
 struct btrfs_free_space_entry *entry;

 if (!io_ctl->cur)
  return -ENOSPC;

 entry = io_ctl->cur;
 entry->offset = cpu_to_le64(offset);
 entry->bytes = cpu_to_le64(bytes);
 entry->type = (bitmap) ? BTRFS_FREE_SPACE_BITMAP :
  BTRFS_FREE_SPACE_EXTENT;
 io_ctl->cur += sizeof(struct btrfs_free_space_entry);
 io_ctl->size -= sizeof(struct btrfs_free_space_entry);

 if (io_ctl->size >= sizeof(struct btrfs_free_space_entry))
  return 0;

 io_ctl_set_crc(io_ctl, io_ctl->index - 1);


 if (io_ctl->index >= io_ctl->num_pages)
  return 0;


 io_ctl_map_page(io_ctl, 1);
 return 0;
}
