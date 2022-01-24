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
struct spi_device {int dummy; } ;
struct l4f00242t03_priv {int /*<<< orphan*/  ld; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct l4f00242t03_priv* FUNC1 (struct spi_device*) ; 

__attribute__((used)) static void FUNC2(struct spi_device *spi)
{
	struct l4f00242t03_priv *priv = FUNC1(spi);

	if (priv)
		FUNC0(priv->ld, FB_BLANK_POWERDOWN);

}