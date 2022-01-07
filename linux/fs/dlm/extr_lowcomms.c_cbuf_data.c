
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbuf {int base; int len; int mask; } ;



__attribute__((used)) static int cbuf_data(struct cbuf *cb)
{
 return ((cb->base + cb->len) & cb->mask);
}
