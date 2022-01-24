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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct file {int dummy; } ;
struct capture_priv {TYPE_1__* src_sd; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 struct capture_priv* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh,
			   struct v4l2_capability *cap)
{
	struct capture_priv *priv = FUNC2(file);

	FUNC1(cap->driver, "imx-media-capture", sizeof(cap->driver));
	FUNC1(cap->card, "imx-media-capture", sizeof(cap->card));
	FUNC0(cap->bus_info, sizeof(cap->bus_info),
		 "platform:%s", priv->src_sd->name);

	return 0;
}