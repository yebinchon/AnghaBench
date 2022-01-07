
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {scalar_t__ flags; scalar_t__ end; scalar_t__ start; } ;



__attribute__((used)) static inline void reset_resource(struct resource *res)
{
 res->start = 0;
 res->end = 0;
 res->flags = 0;
}
