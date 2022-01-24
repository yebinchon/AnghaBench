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
struct fpgaimage {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  bus_2byte ; 
 int /*<<< orphan*/  file ; 
 int FUNC0 (struct fpgaimage*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct fpgaimage*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fpgaimage*) ; 
 int FUNC3 (struct fpgaimage*) ; 
 int FUNC4 (struct fpgaimage*) ; 
 int /*<<< orphan*/  FUNC5 (struct fpgaimage*) ; 
 struct fpgaimage* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int FUNC8(void)
{
	int err;
	struct fpgaimage	*fimage;

	fimage = FUNC6(sizeof(*fimage), GFP_KERNEL);
	if (!fimage)
		return -ENOMEM;

	err = FUNC1(fimage, file);
	if (err) {
		FUNC7("gs_load_image error\n");
		goto err_out1;
	}

	err = FUNC2(fimage);
	if (err) {
		FUNC7("gs_read_image error\n");
		goto err_out2;
	}

	err = FUNC4(fimage);
	if (err) {
		FUNC7("gs_set_download_method error\n");
		goto err_out2;
	}

	err = FUNC0(fimage, bus_2byte);
	if (err) {
		FUNC7("gs_download_image error\n");
		goto err_out2;
	}

	err = FUNC3(fimage);
	if (err) {
		FUNC7("gs_release_image error\n");
		goto err_out1;
	}

	FUNC5(fimage);
	return 0;

err_out2:
	err = FUNC3(fimage);
	if (err)
		FUNC7("gs_release_image error\n");
err_out1:
	FUNC5(fimage);

	return err;
}