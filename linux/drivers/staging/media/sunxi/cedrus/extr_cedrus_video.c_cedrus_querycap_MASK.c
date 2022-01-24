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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct file {int dummy; } ;

/* Variables and functions */
 char* CEDRUS_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
			   struct v4l2_capability *cap)
{
	FUNC1(cap->driver, CEDRUS_NAME, sizeof(cap->driver));
	FUNC1(cap->card, CEDRUS_NAME, sizeof(cap->card));
	FUNC0(cap->bus_info, sizeof(cap->bus_info),
		 "platform:%s", CEDRUS_NAME);

	return 0;
}