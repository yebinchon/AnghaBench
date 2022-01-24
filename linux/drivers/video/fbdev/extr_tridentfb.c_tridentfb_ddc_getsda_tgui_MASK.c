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
struct tridentfb_par {int /*<<< orphan*/  io_virt; } ;

/* Variables and functions */
 int DDC_SDA_TGUI ; 
 int /*<<< orphan*/  I2C ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(void *data)
{
	struct tridentfb_par *par = data;

	return !!(FUNC0(par->io_virt, I2C) & DDC_SDA_TGUI);
}