
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINTR ;
 int EIO ;
 int ENOSPC ;
 int console_lock () ;
 int console_unlock () ;
 scalar_t__ disable_vt_switch ;
 int fg_console ;
 int pr_debug (char*) ;
 scalar_t__ set_console (unsigned int) ;
 scalar_t__ vc_allocate (unsigned int) ;
 scalar_t__ vt_waitactive (unsigned int) ;

int vt_move_to_console(unsigned int vt, int alloc)
{
 int prev;

 console_lock();

 if (disable_vt_switch) {
  console_unlock();
  return 0;
 }
 prev = fg_console;

 if (alloc && vc_allocate(vt)) {


  console_unlock();
  return -ENOSPC;
 }

 if (set_console(vt)) {





  console_unlock();
  return -EIO;
 }
 console_unlock();
 if (vt_waitactive(vt + 1)) {
  pr_debug("Suspend: Can't switch VCs.");
  return -EINTR;
 }
 return prev;
}
