
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct tsi721_device {int dummy; } ;
struct rio_mport {int sys_size; struct tsi721_device* priv; } ;


 int tsi721_maint_dma (struct tsi721_device*,int ,int ,int ,int ,int,int *,int ) ;

__attribute__((used)) static int tsi721_cread_dma(struct rio_mport *mport, int index, u16 destid,
   u8 hopcount, u32 offset, int len, u32 *data)
{
 struct tsi721_device *priv = mport->priv;

 return tsi721_maint_dma(priv, mport->sys_size, destid, hopcount,
    offset, len, data, 0);
}
