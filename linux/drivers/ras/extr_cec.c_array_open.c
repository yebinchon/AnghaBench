
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int array_dump ;
 int single_open (struct file*,int ,int *) ;

__attribute__((used)) static int array_open(struct inode *inode, struct file *filp)
{
 return single_open(filp, array_dump, ((void*)0));
}
