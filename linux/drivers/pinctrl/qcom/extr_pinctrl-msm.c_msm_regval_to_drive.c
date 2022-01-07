
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static unsigned msm_regval_to_drive(u32 val)
{
 return (val + 1) * 2;
}
