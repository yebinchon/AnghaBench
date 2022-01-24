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
typedef  int /*<<< orphan*/  v4l2_std_id ;
struct file {int dummy; } ;
struct capture_priv {int /*<<< orphan*/  src_sd; int /*<<< orphan*/  q; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  s_std ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video ; 
 struct capture_priv* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *fh, v4l2_std_id std)
{
	struct capture_priv *priv = FUNC2(file);

	if (FUNC1(&priv->q))
		return -EBUSY;

	return FUNC0(priv->src_sd, video, s_std, std);
}