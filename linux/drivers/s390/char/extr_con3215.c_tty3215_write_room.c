
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {scalar_t__ driver_data; } ;
struct raw3215_info {scalar_t__ count; } ;


 scalar_t__ RAW3215_BUFFER_SIZE ;
 scalar_t__ TAB_STOP_SIZE ;

__attribute__((used)) static int tty3215_write_room(struct tty_struct *tty)
{
 struct raw3215_info *raw;

 raw = (struct raw3215_info *) tty->driver_data;


 if ((RAW3215_BUFFER_SIZE - raw->count - TAB_STOP_SIZE) >= 0)
  return RAW3215_BUFFER_SIZE - raw->count - TAB_STOP_SIZE;
 else
  return 0;
}
