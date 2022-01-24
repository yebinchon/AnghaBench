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
struct net_device {int dummy; } ;
struct adapter {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_init_mutex; } ;

/* Variables and functions */
 scalar_t__ _SUCCESS ; 
 int FUNC0 (struct net_device*) ; 
 TYPE_1__* FUNC1 (struct adapter*) ; 
 scalar_t__ FUNC2 (struct adapter*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 

__attribute__((used)) static int FUNC6(struct net_device *pnetdev, u8 bnormal)
{
	int status = -1;

	struct adapter *padapter = (struct adapter *)FUNC5(pnetdev);

	if (true == bnormal) {
		if (FUNC3(&(FUNC1(padapter)->hw_init_mutex)) == 0) {
			status = FUNC0(pnetdev);
			FUNC4(&(FUNC1(padapter)->hw_init_mutex));
		}
	}
	else
		status =  (_SUCCESS == FUNC2(padapter)) ? (0) : (-1);

	return status;
}