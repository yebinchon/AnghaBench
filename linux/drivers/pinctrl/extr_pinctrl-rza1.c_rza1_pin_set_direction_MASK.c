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
struct rza1_port {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  RZA1_PBDC_REG ; 
 int /*<<< orphan*/  RZA1_PIBC_REG ; 
 int /*<<< orphan*/  RZA1_PM_REG ; 
 int /*<<< orphan*/  FUNC0 (struct rza1_port*,int /*<<< orphan*/ ,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static inline void FUNC3(struct rza1_port *port,
					  unsigned int pin, bool input)
{
	unsigned long irqflags;

	FUNC1(&port->lock, irqflags);

	FUNC0(port, RZA1_PIBC_REG, pin, 1);
	if (input) {
		FUNC0(port, RZA1_PM_REG, pin, 1);
		FUNC0(port, RZA1_PBDC_REG, pin, 0);
	} else {
		FUNC0(port, RZA1_PM_REG, pin, 0);
		FUNC0(port, RZA1_PBDC_REG, pin, 1);
	}

	FUNC2(&port->lock, irqflags);
}