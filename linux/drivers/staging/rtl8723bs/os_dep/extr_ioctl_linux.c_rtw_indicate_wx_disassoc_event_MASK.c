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
struct TYPE_2__ {int /*<<< orphan*/  sa_data; int /*<<< orphan*/  sa_family; } ;
union iwreq_data {TYPE_1__ ap_addr; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARPHRD_ETHER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (union iwreq_data*,int /*<<< orphan*/ ,int) ; 

void FUNC2(struct adapter *padapter)
{
	union iwreq_data wrqu;

	FUNC1(&wrqu, 0, sizeof(union iwreq_data));

	wrqu.ap_addr.sa_family = ARPHRD_ETHER;
	FUNC0(wrqu.ap_addr.sa_data);
}