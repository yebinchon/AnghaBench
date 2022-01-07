
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int GFP_KERNEL ;
 int PRINTER_MINORS ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;
 int printer_ida ;

__attribute__((used)) static inline int gprinter_get_minor(void)
{
 int ret;

 ret = ida_simple_get(&printer_ida, 0, 0, GFP_KERNEL);
 if (ret >= PRINTER_MINORS) {
  ida_simple_remove(&printer_ida, ret);
  ret = -ENODEV;
 }

 return ret;
}
