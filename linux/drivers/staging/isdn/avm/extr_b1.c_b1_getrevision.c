
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ port; void* revision; void* class; } ;
typedef TYPE_1__ avmcard ;


 scalar_t__ B1_ANALYSE ;
 scalar_t__ B1_REVISION ;
 void* inb (scalar_t__) ;

void b1_getrevision(avmcard *card)
{
 card->class = inb(card->port + B1_ANALYSE);
 card->revision = inb(card->port + B1_REVISION);
}
