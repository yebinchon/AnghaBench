
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtl_phy {int set_io_inprogress; int current_io_type; } ;
struct rtl_priv {struct rtl_phy phy; } ;
struct ieee80211_hw {int dummy; } ;
typedef enum io_type { ____Placeholder_io_type } io_type ;


 int COMP_CMD ;
 int DBG_TRACE ;



 int RT_TRACE (struct rtl_priv*,int ,int ,char*,...) ;
 int pr_err (char*,int) ;
 int rtl8821ae_phy_set_io (struct ieee80211_hw*) ;
 struct rtl_priv* rtl_priv (struct ieee80211_hw*) ;

bool rtl8821ae_phy_set_io_cmd(struct ieee80211_hw *hw, enum io_type iotype)
{
 struct rtl_priv *rtlpriv = rtl_priv(hw);
 struct rtl_phy *rtlphy = &rtlpriv->phy;
 bool postprocessing = 0;

 RT_TRACE(rtlpriv, COMP_CMD, DBG_TRACE,
   "-->IO Cmd(%#x), set_io_inprogress(%d)\n",
    iotype, rtlphy->set_io_inprogress);
 do {
  switch (iotype) {
  case 128:
   RT_TRACE(rtlpriv, COMP_CMD, DBG_TRACE,
     "[IO CMD] Resume DM after scan.\n");
   postprocessing = 1;
   break;
  case 130:
  case 129:
   RT_TRACE(rtlpriv, COMP_CMD, DBG_TRACE,
     "[IO CMD] Pause DM before scan.\n");
   postprocessing = 1;
   break;
  default:
   pr_err("switch case %#x not processed\n",
          iotype);
   break;
  }
 } while (0);
 if (postprocessing && !rtlphy->set_io_inprogress) {
  rtlphy->set_io_inprogress = 1;
  rtlphy->current_io_type = iotype;
 } else {
  return 0;
 }
 rtl8821ae_phy_set_io(hw);
 RT_TRACE(rtlpriv, COMP_CMD, DBG_TRACE, "IO Type(%#x)\n", iotype);
 return 1;
}
