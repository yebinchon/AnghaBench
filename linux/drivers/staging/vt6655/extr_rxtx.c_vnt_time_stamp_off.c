
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct vnt_private {int byPreambleType; } ;
typedef int __le16 ;


 size_t MAX_RATE ;
 int cpu_to_le16 (int ) ;
 int ** wTimeStampOff ;

__attribute__((used)) static __le16 vnt_time_stamp_off(struct vnt_private *priv, u16 rate)
{
 return cpu_to_le16(wTimeStampOff[priv->byPreambleType % 2]
       [rate % MAX_RATE]);
}
