
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct chp_id {size_t id; int cssid; } ;
struct channel_path {int dummy; } ;
struct TYPE_2__ {struct channel_path** chps; } ;


 TYPE_1__* css_by_id (int ) ;

__attribute__((used)) static inline struct channel_path *chpid_to_chp(struct chp_id chpid)
{
 return css_by_id(chpid.cssid)->chps[chpid.id];
}
