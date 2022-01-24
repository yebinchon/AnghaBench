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
struct wiphy {int dummy; } ;
struct rtw_regulatory {int dummy; } ;
struct regulatory_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wiphy*) ; 

__attribute__((used)) static int FUNC1(struct wiphy *wiphy,
				   struct regulatory_request *request,
				   struct rtw_regulatory *reg)
{
	/* Hard code flags */
	FUNC0(wiphy);
	return 0;
}