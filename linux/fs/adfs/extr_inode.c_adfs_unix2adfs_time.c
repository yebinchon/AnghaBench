
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {unsigned int loadaddr; unsigned int execaddr; } ;


 TYPE_1__* ADFS_I (struct inode*) ;
 scalar_t__ adfs_inode_is_stamped (struct inode*) ;

__attribute__((used)) static void
adfs_unix2adfs_time(struct inode *inode, unsigned int secs)
{
 unsigned int high, low;

 if (adfs_inode_is_stamped(inode)) {

  low = (secs & 255) * 100;
  high = (secs / 256) * 100 + (low >> 8) + 0x336e996a;

  ADFS_I(inode)->loadaddr = (high >> 24) |
    (ADFS_I(inode)->loadaddr & ~0xff);
  ADFS_I(inode)->execaddr = (low & 255) | (high << 8);
 }
}
