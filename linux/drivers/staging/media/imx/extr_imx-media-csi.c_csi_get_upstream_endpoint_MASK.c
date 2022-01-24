#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct media_entity {scalar_t__ function; } ;
struct v4l2_subdev {scalar_t__ grp_id; TYPE_2__* dev; struct media_entity entity; } ;
struct v4l2_fwnode_endpoint {int dummy; } ;
struct media_pad {int /*<<< orphan*/  index; int /*<<< orphan*/  entity; } ;
struct device_node {int dummy; } ;
struct TYPE_3__ {struct media_entity entity; } ;
struct csi_priv {TYPE_1__ sd; struct v4l2_subdev* src_sd; } ;
struct TYPE_4__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_OF ; 
 int ENODEV ; 
 int ENXIO ; 
 int EPIPE ; 
 scalar_t__ IMX_MEDIA_GRP_ID_CSI2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct v4l2_subdev*) ; 
 scalar_t__ MEDIA_ENT_F_VID_MUX ; 
 struct media_pad* FUNC2 (struct media_entity*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct v4l2_subdev* FUNC3 (struct media_entity*,scalar_t__,int) ; 
 struct v4l2_subdev* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device_node*) ; 
 struct device_node* FUNC6 (struct device_node*,int /*<<< orphan*/ *) ; 
 struct device_node* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct v4l2_fwnode_endpoint*) ; 

__attribute__((used)) static int FUNC10(struct csi_priv *priv,
				     struct v4l2_fwnode_endpoint *ep)
{
	struct device_node *endpoint, *port;
	struct media_entity *src;
	struct v4l2_subdev *sd;
	struct media_pad *pad;

	if (!FUNC0(CONFIG_OF))
		return -ENXIO;

	if (!priv->src_sd)
		return -EPIPE;

	sd = priv->src_sd;
	src = &sd->entity;

	if (src->function == MEDIA_ENT_F_VID_MUX) {
		/*
		 * CSI is connected directly to video mux, skip up to
		 * CSI-2 receiver if it is in the path, otherwise stay
		 * with video mux.
		 */
		sd = FUNC3(src, IMX_MEDIA_GRP_ID_CSI2,
					       true);
		if (!FUNC1(sd))
			src = &sd->entity;
	}

	/*
	 * If the source is neither the video mux nor the CSI-2 receiver,
	 * get the source pad directly upstream from CSI itself.
	 */
	if (src->function != MEDIA_ENT_F_VID_MUX &&
	    sd->grp_id != IMX_MEDIA_GRP_ID_CSI2)
		src = &priv->sd.entity;

	/* get source pad of entity directly upstream from src */
	pad = FUNC2(src, 0, 0, true);
	if (!pad)
		return -ENODEV;

	sd = FUNC4(pad->entity);

	/*
	 * NOTE: this assumes an OF-graph port id is the same as a
	 * media pad index.
	 */
	port = FUNC7(sd->dev->of_node, pad->index);
	if (!port)
		return -ENODEV;

	endpoint = FUNC6(port, NULL);
	FUNC8(port);
	if (!endpoint)
		return -ENODEV;

	FUNC9(FUNC5(endpoint), ep);
	FUNC8(endpoint);

	return 0;
}