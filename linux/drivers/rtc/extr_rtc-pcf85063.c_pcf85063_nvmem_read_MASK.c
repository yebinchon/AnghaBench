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
 int /*<<< orphan*/  PCF85063_REG_RAM ; 
 int FUNC0 (void*,int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static int FUNC1(void *priv, unsigned int offset,
			       void *val, size_t bytes)
{
	return FUNC0(priv, PCF85063_REG_RAM, val);
}