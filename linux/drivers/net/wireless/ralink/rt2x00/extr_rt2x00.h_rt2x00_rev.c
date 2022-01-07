
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int rev; } ;
struct rt2x00_dev {TYPE_1__ chip; } ;



__attribute__((used)) static inline u16 rt2x00_rev(struct rt2x00_dev *rt2x00dev)
{
 return rt2x00dev->chip.rev;
}
