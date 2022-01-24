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
typedef  int u32 ;
struct se_device {scalar_t__ creation_time; } ;
struct config_item {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int HZ ; 
 int INITIAL_JIFFIES ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int) ; 
 struct se_device* FUNC1 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC2(struct config_item *item,
		char *page)
{
	struct se_device *dev = FUNC1(item);

	/* scsiLuCreationTime */
	return FUNC0(page, PAGE_SIZE, "%u\n", (u32)(((u32)dev->creation_time -
				INITIAL_JIFFIES) * 100 / HZ));
}