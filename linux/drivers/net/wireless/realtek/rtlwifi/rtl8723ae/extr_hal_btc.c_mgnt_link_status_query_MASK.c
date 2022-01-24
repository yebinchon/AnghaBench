#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct TYPE_2__ {scalar_t__ link_state; } ;
struct rtl_priv {TYPE_1__ mac80211; } ;
struct rtl_mac {scalar_t__ opmode; } ;
struct ieee80211_hw {int dummy; } ;
typedef  enum rt_media_status { ____Placeholder_rt_media_status } rt_media_status ;

/* Variables and functions */
 scalar_t__ MAC80211_LINKED ; 
 scalar_t__ NL80211_IFTYPE_ADHOC ; 
 int RT_MEDIA_CONNECT ; 
 int RT_MEDIA_DISCONNECT ; 
 struct rtl_mac* FUNC0 (struct rtl_priv*) ; 
 struct rtl_priv* FUNC1 (struct ieee80211_hw*) ; 

__attribute__((used)) static enum rt_media_status FUNC2(struct ieee80211_hw *hw)
{
	struct rtl_priv *rtlpriv = FUNC1(hw);
	struct rtl_mac *mac = FUNC0(FUNC1(hw));
	enum rt_media_status    m_status = RT_MEDIA_DISCONNECT;
	u8 bibss = (mac->opmode == NL80211_IFTYPE_ADHOC) ? 1 : 0;
	if (bibss || rtlpriv->mac80211.link_state >= MAC80211_LINKED)
		m_status = RT_MEDIA_CONNECT;

	return m_status;
}