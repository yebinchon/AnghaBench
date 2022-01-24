#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ili9320 {int initialised; int /*<<< orphan*/  dev; int /*<<< orphan*/  platdata; TYPE_1__* client; } ;
struct TYPE_2__ {int (* init ) (struct ili9320*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ili9320*) ; 
 int FUNC2 (struct ili9320*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC3(struct ili9320 *lcd)
{
	int ret;

	FUNC1(lcd);

	ret = lcd->client->init(lcd, lcd->platdata);
	if (ret != 0) {
		FUNC0(lcd->dev, "failed to initialise display\n");
		return ret;
	}

	lcd->initialised = 1;
	return 0;
}