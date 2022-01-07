
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;
typedef enum con_scroll { ____Placeholder_con_scroll } con_scroll ;



__attribute__((used)) static bool dummycon_scroll(struct vc_data *vc, unsigned int top,
       unsigned int bottom, enum con_scroll dir,
       unsigned int lines)
{
 return 0;
}
