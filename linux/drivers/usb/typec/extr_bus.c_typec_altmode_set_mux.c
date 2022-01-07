
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct altmode {TYPE_1__* mux; } ;
struct TYPE_2__ {int (* set ) (TYPE_1__*,int ) ;} ;


 int stub1 (TYPE_1__*,int ) ;

__attribute__((used)) static inline int typec_altmode_set_mux(struct altmode *alt, u8 state)
{
 return alt->mux ? alt->mux->set(alt->mux, state) : 0;
}
