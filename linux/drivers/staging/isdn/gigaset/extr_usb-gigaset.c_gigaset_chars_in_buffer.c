
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {int cmdbytes; } ;



__attribute__((used)) static int gigaset_chars_in_buffer(struct cardstate *cs)
{
 return cs->cmdbytes;
}
