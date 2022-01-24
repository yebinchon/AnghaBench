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
typedef  int u8 ;
struct uart_8250_port {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int QPCR_TEST_FOR1 ; 
 int QPCR_TEST_FOR2 ; 
 int QPCR_TEST_FOR3 ; 
 int QPCR_TEST_FOR4 ; 
 int QPCR_TEST_GET1 ; 
 int QPCR_TEST_GET2 ; 
 int QPCR_TEST_GET3 ; 
 int QPCR_TEST_GET4 ; 
 int FUNC0 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*,int) ; 

__attribute__((used)) static int FUNC2(struct uart_8250_port *port)
{
	u8 reg, qopr;

	qopr = FUNC0(port);
	FUNC1(port, qopr & QPCR_TEST_FOR1);
	reg = FUNC0(port) & 0xC0;
	if (reg != QPCR_TEST_GET1)
		return -EINVAL;
	FUNC1(port, (qopr & QPCR_TEST_FOR1)|QPCR_TEST_FOR2);
	reg = FUNC0(port) & 0xC0;
	if (reg != QPCR_TEST_GET2)
		return -EINVAL;
	FUNC1(port, (qopr & QPCR_TEST_FOR1)|QPCR_TEST_FOR3);
	reg = FUNC0(port) & 0xC0;
	if (reg != QPCR_TEST_GET3)
		return -EINVAL;
	FUNC1(port, (qopr & QPCR_TEST_FOR1)|QPCR_TEST_FOR4);
	reg = FUNC0(port) & 0xC0;
	if (reg != QPCR_TEST_GET4)
		return -EINVAL;

	FUNC1(port, qopr);
	return 0;
}