
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct comp_channel {int fifo; int devno; } ;
struct TYPE_2__ {int minor_id; } ;


 int MINOR (int ) ;
 TYPE_1__ comp ;
 int ida_simple_remove (int *,int ) ;
 int kfifo_free (int *) ;
 int kfree (struct comp_channel*) ;

__attribute__((used)) static void destroy_channel(struct comp_channel *c)
{
 ida_simple_remove(&comp.minor_id, MINOR(c->devno));
 kfifo_free(&c->fifo);
 kfree(c);
}
