
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;


 scalar_t__ ULONG_MAX ;

__attribute__((used)) static bool vhost_overflow(u64 uaddr, u64 size)
{

 return uaddr > ULONG_MAX || size > ULONG_MAX || uaddr > ULONG_MAX - size;
}
