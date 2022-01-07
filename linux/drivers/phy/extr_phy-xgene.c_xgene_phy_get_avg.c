
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int xgene_phy_get_avg(int accum, int samples)
{
 return (accum + (samples / 2)) / samples;
}
