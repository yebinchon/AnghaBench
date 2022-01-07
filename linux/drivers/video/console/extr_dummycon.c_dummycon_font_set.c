
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;
struct console_font {int dummy; } ;



__attribute__((used)) static int dummycon_font_set(struct vc_data *vc, struct console_font *font,
        unsigned int flags)
{
 return 0;
}
