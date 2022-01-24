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
typedef  scalar_t__ u16 ;
struct sifive_serial_port {int /*<<< orphan*/  baud_rate; int /*<<< orphan*/  clkin_rate; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIFIVE_SERIAL_DIV_OFFS ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,struct sifive_serial_port*) ; 

__attribute__((used)) static void FUNC2(struct sifive_serial_port *ssp)
{
	u16 div;

	div = FUNC0(ssp->clkin_rate, ssp->baud_rate) - 1;

	FUNC1(div, SIFIVE_SERIAL_DIV_OFFS, ssp);
}