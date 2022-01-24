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
struct timer_list {int dummy; } ;
struct prp_priv {struct imx_ic_priv* ic_priv; struct imx_media_video_dev* vdev; } ;
struct imx_media_video_dev {int dummy; } ;
struct imx_ic_priv {int /*<<< orphan*/  sd; } ;

/* Variables and functions */
 int /*<<< orphan*/  eof_timeout_timer ; 
 struct prp_priv* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx_media_video_dev*) ; 
 struct prp_priv* priv ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static void FUNC3(struct timer_list *t)
{
	struct prp_priv *priv = FUNC0(priv, t, eof_timeout_timer);
	struct imx_media_video_dev *vdev = priv->vdev;
	struct imx_ic_priv *ic_priv = priv->ic_priv;

	FUNC2(&ic_priv->sd, "EOF timeout\n");

	/* signal a fatal error to capture device */
	FUNC1(vdev);
}