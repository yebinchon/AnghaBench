
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {int dummy; } ;


 int mt7601u_ampdu_stat_read ;
 int single_open (struct file*,int ,int ) ;

__attribute__((used)) static int
mt7601u_ampdu_stat_open(struct inode *inode, struct file *f)
{
 return single_open(f, mt7601u_ampdu_stat_read, inode->i_private);
}
