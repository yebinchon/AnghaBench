
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct slim_val_inf {size_t num_bytes; int * comp; int * wbuf; int * rbuf; int start_offset; } ;



__attribute__((used)) static void slim_fill_msg(struct slim_val_inf *msg, u32 addr,
    size_t count, u8 *rbuf, u8 *wbuf)
{
 msg->start_offset = addr;
 msg->num_bytes = count;
 msg->rbuf = rbuf;
 msg->wbuf = wbuf;
 msg->comp = ((void*)0);
}
