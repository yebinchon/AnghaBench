
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int GFP_KERNEL ;
 int HIDG_MINORS ;
 int hidg_ida ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int ida_simple_remove (int *,int) ;

__attribute__((used)) static inline int hidg_get_minor(void)
{
 int ret;

 ret = ida_simple_get(&hidg_ida, 0, 0, GFP_KERNEL);
 if (ret >= HIDG_MINORS) {
  ida_simple_remove(&hidg_ida, ret);
  ret = -ENODEV;
 }

 return ret;
}
