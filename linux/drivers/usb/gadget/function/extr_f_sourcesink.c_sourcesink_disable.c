
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_function {int dummy; } ;
struct f_sourcesink {int dummy; } ;


 int disable_source_sink (struct f_sourcesink*) ;
 struct f_sourcesink* func_to_ss (struct usb_function*) ;

__attribute__((used)) static void sourcesink_disable(struct usb_function *f)
{
 struct f_sourcesink *ss = func_to_ss(f);

 disable_source_sink(ss);
}
