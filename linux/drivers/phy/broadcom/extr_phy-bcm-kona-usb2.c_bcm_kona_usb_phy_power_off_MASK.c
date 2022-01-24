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
struct phy {int dummy; } ;
struct bcm_kona_usb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bcm_kona_usb*,int /*<<< orphan*/ ) ; 
 struct bcm_kona_usb* FUNC1 (struct phy*) ; 

__attribute__((used)) static int FUNC2(struct phy *gphy)
{
	struct bcm_kona_usb *phy = FUNC1(gphy);

	FUNC0(phy, 0);

	return 0;
}