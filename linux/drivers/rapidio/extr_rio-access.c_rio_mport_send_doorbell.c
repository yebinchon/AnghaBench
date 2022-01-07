
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct rio_mport {int id; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* dsend ) (struct rio_mport*,int ,int ,int ) ;} ;


 int stub1 (struct rio_mport*,int ,int ,int ) ;

int rio_mport_send_doorbell(struct rio_mport *mport, u16 destid, u16 data)
{
 return mport->ops->dsend(mport, mport->id, destid, data);
}
