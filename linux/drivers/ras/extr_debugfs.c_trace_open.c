
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int atomic_inc (int *) ;
 int single_open (struct file*,int ,int *) ;
 int trace_count ;
 int trace_show ;

__attribute__((used)) static int trace_open(struct inode *inode, struct file *file)
{
 atomic_inc(&trace_count);
 return single_open(file, trace_show, ((void*)0));
}
