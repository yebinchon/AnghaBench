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
struct video_device {int dummy; } ;
struct ipu_csc_scaler_priv {int /*<<< orphan*/  m2m_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipu_csc_scaler_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct video_device*) ; 
 struct ipu_csc_scaler_priv* FUNC3 (struct video_device*) ; 

__attribute__((used)) static void FUNC4(struct video_device *vdev)
{
	struct ipu_csc_scaler_priv *priv = FUNC3(vdev);

	FUNC1(priv->m2m_dev);
	FUNC2(vdev);
	FUNC0(priv);
}