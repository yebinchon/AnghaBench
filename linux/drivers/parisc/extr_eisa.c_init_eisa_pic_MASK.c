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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int) ; 
 int eisa_irq_level ; 
 int /*<<< orphan*/  eisa_irq_lock ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int master_mask ; 
 int slave_mask ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6(void)
{
	unsigned long flags;

	FUNC3(&eisa_irq_lock, flags);

	FUNC2(0xff, 0x21); /* mask during init */
	FUNC2(0xff, 0xa1); /* mask during init */

	/* master pic */
	FUNC2(0x11, 0x20); /* ICW1 */
	FUNC2(0x00, 0x21); /* ICW2 */
	FUNC2(0x04, 0x21); /* ICW3 */
	FUNC2(0x01, 0x21); /* ICW4 */
	FUNC2(0x40, 0x20); /* OCW2 */

	/* slave pic */
	FUNC2(0x11, 0xa0); /* ICW1 */
	FUNC2(0x08, 0xa1); /* ICW2 */
	FUNC2(0x02, 0xa1); /* ICW3 */
	FUNC2(0x01, 0xa1); /* ICW4 */
	FUNC2(0x40, 0xa0); /* OCW2 */

	FUNC5(100);

	slave_mask = 0xff;
	master_mask = 0xfb;
	FUNC2(slave_mask, 0xa1); /* OCW1 */
	FUNC2(master_mask, 0x21); /* OCW1 */

	/* setup trig level */
	FUNC0("EISA edge/level %04x\n", eisa_irq_level);

	FUNC2(eisa_irq_level&0xff, 0x4d0); /* Set all irq's to edge  */
	FUNC2((eisa_irq_level >> 8) & 0xff, 0x4d1);

	FUNC0("pic0 mask %02x\n", FUNC1(0x21));
	FUNC0("pic1 mask %02x\n", FUNC1(0xa1));
	FUNC0("pic0 edge/level %02x\n", FUNC1(0x4d0));
	FUNC0("pic1 edge/level %02x\n", FUNC1(0x4d1));

	FUNC4(&eisa_irq_lock, flags);
}