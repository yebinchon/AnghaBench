#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct v4l2_rect {int width; int height; } ;
struct v4l2_mbus_framefmt {int width; } ;
struct v4l2_mbus_config {int /*<<< orphan*/  flags; int /*<<< orphan*/  type; } ;
struct imx_media_pixfmt {int cycles; } ;
struct TYPE_10__ {int width; int height; } ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
struct TYPE_7__ {int /*<<< orphan*/  flags; } ;
struct TYPE_9__ {TYPE_2__ mipi_csi2; TYPE_1__ parallel; } ;
struct TYPE_12__ {TYPE_3__ bus; int /*<<< orphan*/  bus_type; } ;
struct csi_priv {size_t active_output_pad; scalar_t__ dest; int /*<<< orphan*/  csi; TYPE_5__* skip; TYPE_4__ compose; struct v4l2_rect crop; TYPE_6__ upstream_ep; struct v4l2_mbus_framefmt* format_mbus; struct imx_media_pixfmt** cc; } ;
struct TYPE_11__ {scalar_t__ max_ratio; int /*<<< orphan*/  skip_smfc; } ;

/* Variables and functions */
 size_t CSI_SINK_PAD ; 
 scalar_t__ IPU_CSI_DEST_IDMAC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct v4l2_mbus_config*,struct v4l2_mbus_framefmt*,struct v4l2_mbus_framefmt*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct v4l2_rect*) ; 
 scalar_t__ FUNC6 (TYPE_6__*) ; 

__attribute__((used)) static int FUNC7(struct csi_priv *priv)
{
	struct v4l2_mbus_framefmt *infmt, *outfmt;
	const struct imx_media_pixfmt *incc;
	struct v4l2_mbus_config mbus_cfg;
	struct v4l2_mbus_framefmt if_fmt;
	struct v4l2_rect crop;

	infmt = &priv->format_mbus[CSI_SINK_PAD];
	incc = priv->cc[CSI_SINK_PAD];
	outfmt = &priv->format_mbus[priv->active_output_pad];

	/* compose mbus_config from the upstream endpoint */
	mbus_cfg.type = priv->upstream_ep.bus_type;
	mbus_cfg.flags = FUNC6(&priv->upstream_ep) ?
		priv->upstream_ep.bus.parallel.flags :
		priv->upstream_ep.bus.mipi_csi2.flags;

	if_fmt = *infmt;
	crop = priv->crop;

	/*
	 * if cycles is set, we need to handle this over multiple cycles as
	 * generic/bayer data
	 */
	if (FUNC6(&priv->upstream_ep) && incc->cycles) {
		if_fmt.width *= incc->cycles;
		crop.width *= incc->cycles;
	}

	FUNC5(priv->csi, &crop);

	FUNC3(priv->csi,
			     priv->crop.width == 2 * priv->compose.width,
			     priv->crop.height == 2 * priv->compose.height);

	FUNC1(priv->csi, &mbus_cfg, &if_fmt, outfmt);

	FUNC2(priv->csi, priv->dest);

	if (priv->dest == IPU_CSI_DEST_IDMAC)
		FUNC4(priv->csi, priv->skip->skip_smfc,
				      priv->skip->max_ratio - 1, 0);

	FUNC0(priv->csi);

	return 0;
}