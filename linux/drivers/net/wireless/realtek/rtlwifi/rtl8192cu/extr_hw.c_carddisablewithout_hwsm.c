
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int _disablegpio (struct ieee80211_hw*) ;
 int _resetdigitalprocedure1 (struct ieee80211_hw*,int) ;
 int _resetdigitalprocedure2 (struct ieee80211_hw*) ;
 int disable_analog (struct ieee80211_hw*,int) ;
 int disable_rfafeandresetbb (struct ieee80211_hw*) ;

__attribute__((used)) static void carddisablewithout_hwsm(struct ieee80211_hw *hw)
{

 disable_rfafeandresetbb(hw);

 _resetdigitalprocedure1(hw, 1);

 _disablegpio(hw);

 _resetdigitalprocedure2(hw);

 disable_analog(hw, 1);
}
