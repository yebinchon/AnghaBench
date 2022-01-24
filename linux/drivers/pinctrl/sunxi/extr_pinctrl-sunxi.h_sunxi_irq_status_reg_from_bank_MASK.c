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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u32 ;
struct sunxi_pinctrl_desc {int dummy; } ;

/* Variables and functions */
 int IRQ_MEM_SIZE ; 
 scalar_t__ IRQ_STATUS_REG ; 
 int FUNC0 (struct sunxi_pinctrl_desc const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline u32 FUNC1(const struct sunxi_pinctrl_desc *desc, u8 bank)
{
	return IRQ_STATUS_REG +
	       FUNC0(desc, bank) * IRQ_MEM_SIZE;
}