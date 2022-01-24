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
struct bq25890_init_data {void* boostf; void* ilim_en; } ;
struct bq25890_device {int /*<<< orphan*/  dev; struct bq25890_init_data init_data; } ;

/* Variables and functions */
 int FUNC0 (struct bq25890_device*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC2(struct bq25890_device *bq)
{
	int ret;
	struct bq25890_init_data *init = &bq->init_data;

	ret = FUNC0(bq);
	if (ret < 0)
		return ret;

	init->ilim_en = FUNC1(bq->dev, "ti,use-ilim-pin");
	init->boostf = FUNC1(bq->dev, "ti,boost-low-freq");

	return 0;
}