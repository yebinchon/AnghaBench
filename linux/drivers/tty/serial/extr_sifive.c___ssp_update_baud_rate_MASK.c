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
struct sifive_serial_port {unsigned int baud_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sifive_serial_port*) ; 

__attribute__((used)) static void FUNC1(struct sifive_serial_port *ssp,
				   unsigned int rate)
{
	if (ssp->baud_rate == rate)
		return;

	ssp->baud_rate = rate;
	FUNC0(ssp);
}