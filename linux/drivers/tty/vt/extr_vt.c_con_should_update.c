
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 scalar_t__ con_is_visible (struct vc_data const*) ;
 int console_blanked ;

__attribute__((used)) static inline bool con_should_update(const struct vc_data *vc)
{
 return con_is_visible(vc) && !console_blanked;
}
