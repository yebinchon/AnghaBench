
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cppi_descriptor {struct cppi_descriptor* next; } ;
struct cppi_channel {struct cppi_descriptor* freelist; } ;



__attribute__((used)) static inline struct cppi_descriptor *cppi_bd_alloc(struct cppi_channel *c)
{
 struct cppi_descriptor *bd = c->freelist;

 if (bd)
  c->freelist = bd->next;
 return bd;
}
