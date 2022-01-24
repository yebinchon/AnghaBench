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
typedef  scalar_t__ ushort ;
typedef  int /*<<< orphan*/  PortAddr ;

/* Variables and functions */
 int /*<<< orphan*/  ASC_EEP_MAX_RETRY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(PortAddr iop_base, ushort data_reg)
{
	ushort read_back;
	int retry;

	retry = 0;
	while (true) {
		FUNC1(iop_base, data_reg);
		FUNC2(1);
		read_back = FUNC0(iop_base);
		if (read_back == data_reg) {
			return (1);
		}
		if (retry++ > ASC_EEP_MAX_RETRY) {
			return (0);
		}
	}
}