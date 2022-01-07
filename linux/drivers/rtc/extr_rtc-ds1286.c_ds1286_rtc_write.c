
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ds1286_priv {int * rtcregs; } ;


 int __raw_writel (int ,int *) ;

__attribute__((used)) static inline void ds1286_rtc_write(struct ds1286_priv *priv, u8 data, int reg)
{
 __raw_writel(data, &priv->rtcregs[reg]);
}
