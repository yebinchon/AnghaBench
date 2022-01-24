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
typedef  int u32 ;
struct reset_simple_data {int /*<<< orphan*/  status_active_low; scalar_t__ membase; } ;
struct reset_controller_dev {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int BITS_PER_BYTE ; 
 int FUNC1 (scalar_t__) ; 
 struct reset_simple_data* FUNC2 (struct reset_controller_dev*) ; 

__attribute__((used)) static int FUNC3(struct reset_controller_dev *rcdev,
			       unsigned long id)
{
	struct reset_simple_data *data = FUNC2(rcdev);
	int reg_width = sizeof(u32);
	int bank = id / (reg_width * BITS_PER_BYTE);
	int offset = id % (reg_width * BITS_PER_BYTE);
	u32 reg;

	reg = FUNC1(data->membase + (bank * reg_width));

	return !(reg & FUNC0(offset)) ^ !data->status_active_low;
}