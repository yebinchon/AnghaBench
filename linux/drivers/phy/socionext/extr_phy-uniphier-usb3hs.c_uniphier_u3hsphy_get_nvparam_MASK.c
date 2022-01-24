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
typedef  unsigned int u8 ;
struct uniphier_u3hsphy_priv {int /*<<< orphan*/  dev; } ;
typedef  unsigned int nvmem_cell ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned int*) ; 
 int FUNC1 (unsigned int*) ; 
 unsigned int* FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int*) ; 
 unsigned int* FUNC4 (unsigned int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct uniphier_u3hsphy_priv *priv,
					const char *name, unsigned int *val)
{
	struct nvmem_cell *cell;
	u8 *buf;

	cell = FUNC2(priv->dev, name);
	if (FUNC0(cell))
		return FUNC1(cell);

	buf = FUNC4(cell, NULL);
	if (FUNC0(buf))
		return FUNC1(buf);

	*val = *buf;

	FUNC3(buf);

	return 0;
}