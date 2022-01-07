
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_struct {int dummy; } ;
struct raw3215_info {scalar_t__ count; int tlet; } ;


 scalar_t__ RAW3215_BUFFER_SIZE ;
 scalar_t__ RAW3215_MIN_SPACE ;
 int raw3215_mk_write_req (struct raw3215_info*) ;
 int raw3215_try_io (struct raw3215_info*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static void raw3215_next_io(struct raw3215_info *raw, struct tty_struct *tty)
{
 raw3215_mk_write_req(raw);
 raw3215_try_io(raw);
 if (tty && RAW3215_BUFFER_SIZE - raw->count >= RAW3215_MIN_SPACE)
  tasklet_schedule(&raw->tlet);
}
