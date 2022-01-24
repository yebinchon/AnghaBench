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
typedef  scalar_t__ u16 ;

/* Variables and functions */
 scalar_t__ ETH_ALEN ; 
 scalar_t__ WLAN_FCS_LEN ; 
#define  WLAN_FTYPE_CTL 130 
#define  WLAN_FTYPE_DATA 129 
#define  WLAN_FTYPE_MGMT 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ WLAN_HDR_A3_LEN ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u16 FUNC5(u16 fctl)
{
	u16 hdrlen = 0;

	switch (FUNC2(fctl)) {
	case WLAN_FTYPE_MGMT:
		hdrlen = WLAN_HDR_A3_LEN;
		break;
	case WLAN_FTYPE_DATA:
		hdrlen = WLAN_HDR_A3_LEN;
		if (FUNC3(fctl) && FUNC0(fctl))
			hdrlen += ETH_ALEN;
		break;
	case WLAN_FTYPE_CTL:
		hdrlen = FUNC4(FUNC1(fctl)) -
		    WLAN_FCS_LEN;
		break;
	default:
		hdrlen = WLAN_HDR_A3_LEN;
	}

	return hdrlen;
}