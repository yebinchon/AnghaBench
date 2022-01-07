
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ __u32 ;


 scalar_t__ OPLOCK_READ ;

__attribute__((used)) static bool
cifs_is_read_op(__u32 oplock)
{
 return oplock == OPLOCK_READ;
}
