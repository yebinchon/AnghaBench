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
struct video_frame {int y_addr; int cb_addr; int cr_addr; int aux_addr; int /*<<< orphan*/  y_dmabuf_attachment; int /*<<< orphan*/  cb_dmabuf_attachment; int /*<<< orphan*/  cr_dmabuf_attachment; int /*<<< orphan*/  aux_dmabuf_attachment; } ;
struct tegra_vde_h264_frame {int /*<<< orphan*/  aux_offset; int /*<<< orphan*/  aux_fd; int /*<<< orphan*/  cr_offset; int /*<<< orphan*/  cr_fd; int /*<<< orphan*/  cb_offset; int /*<<< orphan*/  cb_fd; int /*<<< orphan*/  y_offset; int /*<<< orphan*/  y_fd; } ;
struct tegra_vde {int dummy; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int /*<<< orphan*/  SZ_256 ; 
 int FUNC0 (struct tegra_vde*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct tegra_vde*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct tegra_vde *vde,
					     struct video_frame *frame,
					     struct tegra_vde_h264_frame *src,
					     enum dma_data_direction dma_dir,
					     bool baseline_profile,
					     size_t lsize, size_t csize)
{
	int err;

	err = FUNC0(vde, src->y_fd,
				      src->y_offset, lsize, SZ_256,
				      &frame->y_dmabuf_attachment,
				      &frame->y_addr,
				      NULL, dma_dir);
	if (err)
		return err;

	err = FUNC0(vde, src->cb_fd,
				      src->cb_offset, csize, SZ_256,
				      &frame->cb_dmabuf_attachment,
				      &frame->cb_addr,
				      NULL, dma_dir);
	if (err)
		goto err_release_y;

	err = FUNC0(vde, src->cr_fd,
				      src->cr_offset, csize, SZ_256,
				      &frame->cr_dmabuf_attachment,
				      &frame->cr_addr,
				      NULL, dma_dir);
	if (err)
		goto err_release_cb;

	if (baseline_profile) {
		frame->aux_addr = 0x64DEAD00;
		return 0;
	}

	err = FUNC0(vde, src->aux_fd,
				      src->aux_offset, csize, SZ_256,
				      &frame->aux_dmabuf_attachment,
				      &frame->aux_addr,
				      NULL, dma_dir);
	if (err)
		goto err_release_cr;

	return 0;

err_release_cr:
	FUNC1(vde, frame->cr_dmabuf_attachment, true);
err_release_cb:
	FUNC1(vde, frame->cb_dmabuf_attachment, true);
err_release_y:
	FUNC1(vde, frame->y_dmabuf_attachment, true);

	return err;
}