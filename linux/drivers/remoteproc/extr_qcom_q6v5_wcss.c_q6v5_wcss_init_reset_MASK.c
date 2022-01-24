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
struct q6v5_wcss {void* wcss_q6_reset; struct device* dev; void* wcss_reset; void* wcss_aon_reset; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 void* FUNC3 (struct device*,char*) ; 

__attribute__((used)) static int FUNC4(struct q6v5_wcss *wcss)
{
	struct device *dev = wcss->dev;

	wcss->wcss_aon_reset = FUNC3(dev, "wcss_aon_reset");
	if (FUNC0(wcss->wcss_aon_reset)) {
		FUNC2(wcss->dev, "unable to acquire wcss_aon_reset\n");
		return FUNC1(wcss->wcss_aon_reset);
	}

	wcss->wcss_reset = FUNC3(dev, "wcss_reset");
	if (FUNC0(wcss->wcss_reset)) {
		FUNC2(wcss->dev, "unable to acquire wcss_reset\n");
		return FUNC1(wcss->wcss_reset);
	}

	wcss->wcss_q6_reset = FUNC3(dev, "wcss_q6_reset");
	if (FUNC0(wcss->wcss_q6_reset)) {
		FUNC2(wcss->dev, "unable to acquire wcss_q6_reset\n");
		return FUNC1(wcss->wcss_q6_reset);
	}

	return 0;
}