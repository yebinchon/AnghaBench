
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct nbu2ss_udc {TYPE_1__* p_regs; int dev; } ;
struct TYPE_2__ {int TEST_CONTROL; int USB_CONTROL; } ;


 int CS_TESTMODEEN ;
 int MAX_TEST_MODE_NUM ;
 int TEST_FORCE_ENABLE ;
 int TEST_MODE_SHIFT ;
 int _nbu2ss_bitset (int *,int ) ;
 int _nbu2ss_readl (int *) ;
 int _nbu2ss_writel (int *,int) ;
 int dev_info (int ,char*,int) ;

__attribute__((used)) static void _nbu2ss_set_test_mode(struct nbu2ss_udc *udc, u32 mode)
{
 u32 data;

 if (mode > MAX_TEST_MODE_NUM)
  return;

 dev_info(udc->dev, "SET FEATURE : test mode = %d\n", mode);

 data = _nbu2ss_readl(&udc->p_regs->USB_CONTROL);
 data &= ~TEST_FORCE_ENABLE;
 data |= mode << TEST_MODE_SHIFT;

 _nbu2ss_writel(&udc->p_regs->USB_CONTROL, data);
 _nbu2ss_bitset(&udc->p_regs->TEST_CONTROL, CS_TESTMODEEN);
}
