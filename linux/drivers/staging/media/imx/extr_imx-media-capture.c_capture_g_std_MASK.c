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
struct capture_priv {int /*<<< orphan*/  src_sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  g_std ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  video ; 
 struct capture_priv* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *fh, v4l2_std_id *std)
{
	struct capture_priv *priv = FUNC1(file);

	return FUNC0(priv->src_sd, video, g_std, std);
}