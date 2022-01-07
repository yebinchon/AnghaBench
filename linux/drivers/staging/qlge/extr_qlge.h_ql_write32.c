
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql_adapter {scalar_t__ reg_base; } ;


 int writel (int ,scalar_t__) ;

__attribute__((used)) static inline void ql_write32(const struct ql_adapter *qdev, int reg, u32 val)
{
 writel(val, qdev->reg_base + reg);
}
