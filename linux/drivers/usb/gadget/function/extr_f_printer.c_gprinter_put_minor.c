
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ida_simple_remove (int *,int) ;
 int printer_ida ;

__attribute__((used)) static inline void gprinter_put_minor(int minor)
{
 ida_simple_remove(&printer_ida, minor);
}
