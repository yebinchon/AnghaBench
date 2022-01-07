
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t spc_used (size_t,size_t,size_t) ;

__attribute__((used)) static inline size_t spc_free(size_t head, size_t tail, size_t size)
{

 return (size - spc_used(head, tail, size) - 1);
}
