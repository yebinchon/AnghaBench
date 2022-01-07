
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mite_channel {int channel; struct mite* mite; } ;
struct mite {scalar_t__ mmio; } ;


 scalar_t__ MITE_DAR (int ) ;
 int readl (scalar_t__) ;

__attribute__((used)) static u32 mite_device_bytes_transferred(struct mite_channel *mite_chan)
{
 struct mite *mite = mite_chan->mite;

 return readl(mite->mmio + MITE_DAR(mite_chan->channel));
}
