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
typedef  int /*<<< orphan*/  u16 ;
struct usbhs_priv {int dummy; } ;
struct usbhs_pipe {int /*<<< orphan*/  list; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,...) ; 
 int FUNC3 (struct usbhs_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC5 (struct usbhs_pipe*) ; 
 scalar_t__ FUNC6 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC7 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC8 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC9 (struct usbhs_pipe*) ; 
 struct device* FUNC10 (struct usbhs_priv*) ; 
 struct usbhs_pipe* FUNC11 (struct usbhs_priv*,int) ; 
 int FUNC12 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC13 (struct usbhs_pipe*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct usbhs_pipe*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * usbhsp_pipe_name ; 
 int /*<<< orphan*/  FUNC15 (struct usbhs_pipe*) ; 
 int /*<<< orphan*/  FUNC16 (struct usbhs_pipe*) ; 
 scalar_t__ FUNC17 (struct usbhs_pipe*,int,int,int /*<<< orphan*/ *) ; 

struct usbhs_pipe *FUNC18(struct usbhs_priv *priv,
				     int endpoint_type,
				     int dir_in)
{
	struct device *dev = FUNC10(priv);
	struct usbhs_pipe *pipe;
	int is_host = FUNC3(priv);
	int ret;
	u16 pipecfg, pipebuf;

	pipe = FUNC11(priv, endpoint_type);
	if (!pipe) {
		FUNC2(dev, "can't get pipe (%s)\n",
			usbhsp_pipe_name[endpoint_type]);
		return NULL;
	}

	FUNC0(&pipe->list);

	FUNC5(pipe);

	/* make sure pipe is not busy */
	ret = FUNC12(pipe);
	if (ret < 0) {
		FUNC2(dev, "pipe setup failed %d\n", FUNC8(pipe));
		return NULL;
	}

	if (FUNC17(pipe, is_host, dir_in, &pipecfg)) {
		FUNC2(dev, "can't setup pipe\n");
		return NULL;
	}

	pipebuf  = FUNC16(pipe);

	FUNC15(pipe);
	FUNC14(pipe, 0xFFFF, pipecfg);
	FUNC13(pipe, 0xFFFF, pipebuf);
	FUNC4(pipe);

	FUNC9(pipe);

	FUNC1(dev, "enable pipe %d : %s (%s)\n",
		FUNC8(pipe),
		FUNC7(pipe),
		FUNC6(pipe) ? "in" : "out");

	/*
	 * epnum / maxp are still not set to this pipe.
	 * call usbhs_pipe_config_update() after this function !!
	 */

	return pipe;
}