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
struct tdo24m {int dummy; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 struct tdo24m* FUNC0 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct tdo24m*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct spi_device *spi)
{
	struct tdo24m *lcd = FUNC0(spi);

	FUNC1(lcd, FB_BLANK_POWERDOWN);
}