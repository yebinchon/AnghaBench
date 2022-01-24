#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct spi_device {int dummy; } ;
struct corgi_lcd {int /*<<< orphan*/  lcd_dev; TYPE_2__* bl_dev; } ;
struct TYPE_3__ {scalar_t__ brightness; int /*<<< orphan*/  power; } ;
struct TYPE_4__ {TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct corgi_lcd* FUNC2 (struct spi_device*) ; 

__attribute__((used)) static int FUNC3(struct spi_device *spi)
{
	struct corgi_lcd *lcd = FUNC2(spi);

	lcd->bl_dev->props.power = FB_BLANK_UNBLANK;
	lcd->bl_dev->props.brightness = 0;
	FUNC0(lcd->bl_dev);
	FUNC1(lcd->lcd_dev, FB_BLANK_POWERDOWN);
	return 0;
}