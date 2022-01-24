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
struct pcf85363 {int /*<<< orphan*/  regmap; } ;

/* Variables and functions */
 scalar_t__ CTRL_RAM ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,void*,size_t) ; 

__attribute__((used)) static int FUNC1(void *priv, unsigned int offset, void *val,
				size_t bytes)
{
	struct pcf85363 *pcf85363 = priv;

	return FUNC0(pcf85363->regmap, CTRL_RAM + offset,
				 val, bytes);
}