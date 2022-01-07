
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cardstate {unsigned int cmdbytes; } ;


 unsigned int IF_WRITEBUF ;

__attribute__((used)) static int gigaset_write_room(struct cardstate *cs)
{
 unsigned bytes;

 bytes = cs->cmdbytes;
 return bytes < IF_WRITEBUF ? IF_WRITEBUF - bytes : 0;
}
