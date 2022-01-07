
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ENODEV ;
 int NCT6102D_WDT_CONTROL ;
 int NCT6102D_WDT_CSR ;
 int NCT6102D_WDT_TIMEOUT ;
 int W83627HF_LD_WDT ;
 int W83627HF_WDT_CONTROL ;
 int W83627HF_WDT_TIMEOUT ;
 int W83697HF_WDT_CONTROL ;
 int W83697HF_WDT_TIMEOUT ;

 int W836X7HF_WDT_CSR ;
 int cr_wdt_control ;
 int cr_wdt_csr ;
 int cr_wdt_timeout ;
 int nct6102 ;
 int nct6775 ;
 int nct6776 ;
 int nct6779 ;
 int nct6791 ;
 int nct6792 ;
 int nct6793 ;
 int nct6795 ;
 int nct6796 ;
 int pr_err (char*,int) ;
 int superio_enter () ;
 int superio_exit () ;
 int superio_inb (int) ;
 int superio_select (int ) ;
 int w83627dhg ;
 int w83627dhg_p ;
 int w83627ehf ;
 int w83627hf ;
 int w83627s ;
 int w83627thf ;
 int w83627uhg ;
 int w83637hf ;
 int w83667hg ;
 int w83667hg_b ;
 int w83687thf ;
 int w83697hf ;
 int w83697ug ;

__attribute__((used)) static int wdt_find(int addr)
{
 u8 val;
 int ret;

 cr_wdt_timeout = W83627HF_WDT_TIMEOUT;
 cr_wdt_control = W83627HF_WDT_CONTROL;
 cr_wdt_csr = W836X7HF_WDT_CSR;

 ret = superio_enter();
 if (ret)
  return ret;
 superio_select(W83627HF_LD_WDT);
 val = superio_inb(0x20);
 switch (val) {
 case 137:
  ret = w83627hf;
  break;
 case 136:
  ret = w83627s;
  break;
 case 129:
  ret = w83697hf;
  cr_wdt_timeout = W83697HF_WDT_TIMEOUT;
  cr_wdt_control = W83697HF_WDT_CONTROL;
  break;
 case 128:
  ret = w83697ug;
  cr_wdt_timeout = W83697HF_WDT_TIMEOUT;
  cr_wdt_control = W83697HF_WDT_CONTROL;
  break;
 case 133:
  ret = w83637hf;
  break;
 case 135:
  ret = w83627thf;
  break;
 case 130:
  ret = w83687thf;
  break;
 case 138:
  ret = w83627ehf;
  break;
 case 140:
  ret = w83627dhg;
  break;
 case 139:
  ret = w83627dhg_p;
  break;
 case 134:
  ret = w83627uhg;
  break;
 case 131:
  ret = w83667hg;
  break;
 case 132:
  ret = w83667hg_b;
  break;
 case 148:
  ret = nct6775;
  break;
 case 147:
  ret = nct6776;
  break;
 case 146:
  ret = nct6779;
  break;
 case 145:
  ret = nct6791;
  break;
 case 144:
  ret = nct6792;
  break;
 case 143:
  ret = nct6793;
  break;
 case 142:
  ret = nct6795;
  break;
 case 141:
  ret = nct6796;
  break;
 case 149:
  ret = nct6102;
  cr_wdt_timeout = NCT6102D_WDT_TIMEOUT;
  cr_wdt_control = NCT6102D_WDT_CONTROL;
  cr_wdt_csr = NCT6102D_WDT_CSR;
  break;
 case 0xff:
  ret = -ENODEV;
  break;
 default:
  ret = -ENODEV;
  pr_err("Unsupported chip ID: 0x%02x\n", val);
  break;
 }
 superio_exit();
 return ret;
}
