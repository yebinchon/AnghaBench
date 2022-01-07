
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int knav_queue_debug_show ;
 int single_open (struct file*,int ,int *) ;

__attribute__((used)) static int knav_queue_debug_open(struct inode *inode, struct file *file)
{
 return single_open(file, knav_queue_debug_show, ((void*)0));
}
