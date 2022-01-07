
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hidg_ida ;
 int ida_simple_remove (int *,int) ;

__attribute__((used)) static inline void hidg_put_minor(int minor)
{
 ida_simple_remove(&hidg_ida, minor);
}
