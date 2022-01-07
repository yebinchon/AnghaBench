
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inbuf_t {int inputstate; struct cardstate* cs; scalar_t__ tail; scalar_t__ head; } ;
struct cardstate {int dummy; } ;


 int INS_command ;

__attribute__((used)) static void gigaset_inbuf_init(struct inbuf_t *inbuf, struct cardstate *cs)

{
 inbuf->head = 0;
 inbuf->tail = 0;
 inbuf->cs = cs;
 inbuf->inputstate = INS_command;
}
