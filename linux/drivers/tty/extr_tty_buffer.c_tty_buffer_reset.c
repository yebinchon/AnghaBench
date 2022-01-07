
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tty_buffer {size_t size; scalar_t__ flags; scalar_t__ read; scalar_t__ commit; int * next; scalar_t__ used; } ;



__attribute__((used)) static void tty_buffer_reset(struct tty_buffer *p, size_t size)
{
 p->used = 0;
 p->size = size;
 p->next = ((void*)0);
 p->commit = 0;
 p->read = 0;
 p->flags = 0;
}
