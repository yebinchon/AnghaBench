
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pvscsi_adapter {scalar_t__ mmioBase; } ;


 scalar_t__ readl (scalar_t__) ;

__attribute__((used)) static u32 pvscsi_reg_read(const struct pvscsi_adapter *adapter, u32 offset)
{
 return readl(adapter->mmioBase + offset);
}
