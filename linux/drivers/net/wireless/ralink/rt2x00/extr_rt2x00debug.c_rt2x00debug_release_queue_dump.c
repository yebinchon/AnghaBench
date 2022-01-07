
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00debug_intf {int frame_dump_flags; int frame_dump_skbqueue; } ;
struct inode {struct rt2x00debug_intf* i_private; } ;
struct file {int dummy; } ;


 int FRAME_DUMP_FILE_OPEN ;
 int clear_bit (int ,int *) ;
 int rt2x00debug_file_release (struct inode*,struct file*) ;
 int skb_queue_purge (int *) ;

__attribute__((used)) static int rt2x00debug_release_queue_dump(struct inode *inode, struct file *file)
{
 struct rt2x00debug_intf *intf = inode->i_private;

 skb_queue_purge(&intf->frame_dump_skbqueue);

 clear_bit(FRAME_DUMP_FILE_OPEN, &intf->frame_dump_flags);

 return rt2x00debug_file_release(inode, file);
}
