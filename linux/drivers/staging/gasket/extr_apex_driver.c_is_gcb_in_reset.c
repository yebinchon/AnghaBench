
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct gasket_dev {int dummy; } ;


 int APEX_BAR2_REG_SCU_3 ;
 int APEX_BAR_INDEX ;
 int SCU3_CUR_RST_GCB_BIT_MASK ;
 int gasket_dev_read_32 (struct gasket_dev*,int ,int ) ;

__attribute__((used)) static bool is_gcb_in_reset(struct gasket_dev *gasket_dev)
{
 u32 val = gasket_dev_read_32(gasket_dev, APEX_BAR_INDEX,
         APEX_BAR2_REG_SCU_3);


 return (val & SCU3_CUR_RST_GCB_BIT_MASK);
}
