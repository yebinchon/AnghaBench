
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct channel_subsystem {int dummy; } ;


 struct channel_subsystem** channel_subsystems ;

__attribute__((used)) static inline struct channel_subsystem *css_by_id(u8 cssid)
{
 return channel_subsystems[0];
}
