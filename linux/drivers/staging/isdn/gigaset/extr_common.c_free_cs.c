
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {scalar_t__ flags; } ;



__attribute__((used)) static void free_cs(struct cardstate *cs)
{
 cs->flags = 0;
}
