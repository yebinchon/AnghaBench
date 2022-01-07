
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct mite_channel {int dummy; } ;


 scalar_t__ mite_bytes_in_transit (struct mite_channel*) ;
 scalar_t__ mite_device_bytes_transferred (struct mite_channel*) ;

__attribute__((used)) static u32 mite_bytes_read_from_memory_lb(struct mite_channel *mite_chan)
{
 u32 device_byte_count;

 device_byte_count = mite_device_bytes_transferred(mite_chan);
 return device_byte_count + mite_bytes_in_transit(mite_chan);
}
