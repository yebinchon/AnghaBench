
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee80211_hw {int dummy; } ;


 int _disablegpio (struct ieee80211_hw*) ;
 int _resetdigitalprocedure1 (struct ieee80211_hw*,int) ;
 int disable_analog (struct ieee80211_hw*,int) ;
 int disable_rfafeandresetbb (struct ieee80211_hw*) ;

__attribute__((used)) static void carddisable_hwsm(struct ieee80211_hw *hw)
{

 disable_rfafeandresetbb(hw);

 _resetdigitalprocedure1(hw, 0);

 _disablegpio(hw);

 disable_analog(hw, 0);
}
