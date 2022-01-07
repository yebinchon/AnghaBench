
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct gsm_mux {TYPE_2__* tty; } ;
struct TYPE_5__ {TYPE_1__* ops; int flags; } ;
struct TYPE_4__ {int (* write ) (TYPE_2__*,int *,int) ;} ;


 int DUMP_PREFIX_OFFSET ;
 int ENOSPC ;
 int TTY_DO_WRITE_WAKEUP ;
 int debug ;
 int print_hex_dump_bytes (char*,int ,int *,int) ;
 int set_bit (int ,int *) ;
 int stub1 (TYPE_2__*,int *,int) ;
 int tty_write_room (TYPE_2__*) ;

__attribute__((used)) static int gsmld_output(struct gsm_mux *gsm, u8 *data, int len)
{
 if (tty_write_room(gsm->tty) < len) {
  set_bit(TTY_DO_WRITE_WAKEUP, &gsm->tty->flags);
  return -ENOSPC;
 }
 if (debug & 4)
  print_hex_dump_bytes("gsmld_output: ", DUMP_PREFIX_OFFSET,
         data, len);
 gsm->tty->ops->write(gsm->tty, data, len);
 return len;
}
