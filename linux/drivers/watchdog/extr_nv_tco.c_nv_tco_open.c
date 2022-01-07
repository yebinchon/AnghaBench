
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int stream_open (struct inode*,struct file*) ;
 int tco_timer_keepalive () ;
 int tco_timer_start () ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int timer_alive ;

__attribute__((used)) static int nv_tco_open(struct inode *inode, struct file *file)
{

 if (test_and_set_bit(0, &timer_alive))
  return -EBUSY;


 tco_timer_keepalive();
 tco_timer_start();
 return stream_open(inode, file);
}
