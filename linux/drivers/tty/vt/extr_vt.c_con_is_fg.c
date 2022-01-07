
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {scalar_t__ vc_num; } ;


 scalar_t__ fg_console ;

__attribute__((used)) static inline bool con_is_fg(const struct vc_data *vc)
{
 return vc->vc_num == fg_console;
}
