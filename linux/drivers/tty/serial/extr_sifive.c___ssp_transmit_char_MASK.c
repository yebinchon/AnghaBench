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
struct sifive_serial_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SIFIVE_SERIAL_TXDATA_OFFS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,struct sifive_serial_port*) ; 

__attribute__((used)) static void FUNC1(struct sifive_serial_port *ssp, int ch)
{
	FUNC0(ch, SIFIVE_SERIAL_TXDATA_OFFS, ssp);
}