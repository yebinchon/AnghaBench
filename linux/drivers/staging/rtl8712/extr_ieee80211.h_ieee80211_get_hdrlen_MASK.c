#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u16 ;

/* Variables and functions */
 int IEEE80211_FCTL_FROMDS ; 
 int IEEE80211_FCTL_TODS ; 
#define  IEEE80211_FTYPE_CTL 131 
#define  IEEE80211_FTYPE_DATA 130 
 int IEEE80211_QOS_DATAGRP ; 
#define  IEEE80211_STYPE_ACK 129 
#define  IEEE80211_STYPE_CTS 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int) ; 

__attribute__((used)) static inline int FUNC2(u16 fc)
{
	int hdrlen = 24;

	switch (FUNC1(fc)) {
	case IEEE80211_FTYPE_DATA:
		if (fc & IEEE80211_QOS_DATAGRP)
			hdrlen += 2;
		if ((fc & IEEE80211_FCTL_FROMDS) && (fc & IEEE80211_FCTL_TODS))
			hdrlen += 6; /* Addr4 */
		break;
	case IEEE80211_FTYPE_CTL:
		switch (FUNC0(fc)) {
		case IEEE80211_STYPE_CTS:
		case IEEE80211_STYPE_ACK:
			hdrlen = 10;
			break;
		default:
			hdrlen = 16;
			break;
		}
		break;
	}
	return hdrlen;
}