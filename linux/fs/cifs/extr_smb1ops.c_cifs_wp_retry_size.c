
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; } ;
struct TYPE_2__ {unsigned int wsize; } ;


 TYPE_1__* CIFS_SB (int ) ;

__attribute__((used)) static unsigned int
cifs_wp_retry_size(struct inode *inode)
{
 return CIFS_SB(inode->i_sb)->wsize;
}
