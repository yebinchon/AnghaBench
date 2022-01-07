
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imgu_css {int streaming; } ;



bool imgu_css_is_streaming(struct imgu_css *css)
{
 return css->streaming;
}
