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
typedef  int /*<<< orphan*/  uint8_t ;
struct AdapterControlBlock {int adapter_type; } ;

/* Variables and functions */
#define  ACB_ADAPTER_TYPE_A 132 
#define  ACB_ADAPTER_TYPE_B 131 
#define  ACB_ADAPTER_TYPE_C 130 
#define  ACB_ADAPTER_TYPE_D 129 
#define  ACB_ADAPTER_TYPE_E 128 
 int /*<<< orphan*/  FUNC0 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC1 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC2 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC3 (struct AdapterControlBlock*) ; 
 int /*<<< orphan*/  FUNC4 (struct AdapterControlBlock*) ; 

__attribute__((used)) static uint8_t FUNC5(struct AdapterControlBlock *acb)
{
	uint8_t rtnval = 0;
	switch (acb->adapter_type) {
	case ACB_ADAPTER_TYPE_A: {
		rtnval = FUNC0(acb);
		}
		break;

	case ACB_ADAPTER_TYPE_B: {
		rtnval = FUNC1(acb);
		}
		break;

	case ACB_ADAPTER_TYPE_C: {
		rtnval = FUNC2(acb);
		}
		break;

	case ACB_ADAPTER_TYPE_D:
		rtnval = FUNC3(acb);
		break;
	case ACB_ADAPTER_TYPE_E:
		rtnval = FUNC4(acb);
		break;
	}
	return rtnval;
}