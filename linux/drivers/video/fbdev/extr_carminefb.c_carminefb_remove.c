
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct fb_fix_screeninfo {int mmio_len; int mmio_start; int smem_len; int smem_start; } ;
struct carmine_hw {int v_regs; int screen_mem; TYPE_1__** fb; } ;
struct TYPE_2__ {struct fb_fix_screeninfo fix; } ;


 scalar_t__ CARMINE_CTL_REG ;
 scalar_t__ CARMINE_CTL_REG_CLOCK_ENABLE ;
 scalar_t__ CARMINE_DISP0_REG ;
 scalar_t__ CARMINE_DISP1_REG ;
 scalar_t__ CARMINE_DISP_REG_DCM1 ;
 int MAX_DISPLAY ;
 int c_set_hw_reg (struct carmine_hw*,scalar_t__,int ) ;
 int cleanup_fb_device (TYPE_1__*) ;
 int iounmap (int ) ;
 int kfree (struct carmine_hw*) ;
 int pci_disable_device (struct pci_dev*) ;
 struct carmine_hw* pci_get_drvdata (struct pci_dev*) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void carminefb_remove(struct pci_dev *dev)
{
 struct carmine_hw *hw = pci_get_drvdata(dev);
 struct fb_fix_screeninfo fix;
 int i;


 if (hw->fb[0])
  fix = hw->fb[0]->fix;
 else
  fix = hw->fb[1]->fix;


 c_set_hw_reg(hw, CARMINE_DISP0_REG + CARMINE_DISP_REG_DCM1, 0);
 c_set_hw_reg(hw, CARMINE_DISP1_REG + CARMINE_DISP_REG_DCM1, 0);
 c_set_hw_reg(hw, CARMINE_CTL_REG + CARMINE_CTL_REG_CLOCK_ENABLE, 0);

 for (i = 0; i < MAX_DISPLAY; i++)
  cleanup_fb_device(hw->fb[i]);

 iounmap(hw->screen_mem);
 release_mem_region(fix.smem_start, fix.smem_len);
 iounmap(hw->v_regs);
 release_mem_region(fix.mmio_start, fix.mmio_len);

 pci_disable_device(dev);
 kfree(hw);
}
