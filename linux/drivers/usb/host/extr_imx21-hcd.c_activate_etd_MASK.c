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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct imx21 {scalar_t__ regs; int /*<<< orphan*/  dev; struct etd_priv* etd; } ;
struct etd_priv {int dma_handle; scalar_t__ len; scalar_t__ dmem_size; int active_count; int disactivated_frame; int last_int_frame; int last_req_frame; int /*<<< orphan*/  bounce_buffer; int /*<<< orphan*/ * submitted_dwords; int /*<<< orphan*/  activated_frame; int /*<<< orphan*/  cpu_buffer; int /*<<< orphan*/  dmem_offset; } ;
typedef  enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct imx21*,struct etd_priv*,int /*<<< orphan*/ ) ; 
 int DMA_FROM_DEVICE ; 
 int DMA_TO_DEVICE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ TD_DIR_IN ; 
 int /*<<< orphan*/  USBH_ETDDONEEN ; 
 int /*<<< orphan*/  USBH_ETDDONESTAT ; 
 scalar_t__ USBH_ETDENSET ; 
 scalar_t__ USBH_FRMNUB ; 
 int /*<<< orphan*/  USBH_XBUFSTAT ; 
 int /*<<< orphan*/  USBH_XFILLSTAT ; 
 int /*<<< orphan*/  USBH_YBUFSTAT ; 
 int /*<<< orphan*/  USBH_YFILLSTAT ; 
 int /*<<< orphan*/  USB_ETDDMACHANLCLR ; 
 int /*<<< orphan*/  USB_ETDDMAEN ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  activated ; 
 int /*<<< orphan*/  FUNC2 (struct imx21*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct imx21*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct imx21*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct imx21*,struct etd_priv*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct imx21*,struct etd_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct imx21*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (struct imx21*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC16 (int) ; 
 int /*<<< orphan*/  FUNC17 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC18(struct imx21 *imx21, int etd_num, u8 dir)
{
	u32 etd_mask = 1 << etd_num;
	struct etd_priv *etd = &imx21->etd[etd_num];

	if (etd->dma_handle && FUNC16(etd->dma_handle)) {
		/* For non aligned isoc the condition below is always true */
		if (etd->len <= etd->dmem_size) {
			/* Fits into data memory, use PIO */
			if (dir != TD_DIR_IN) {
				FUNC3(imx21,
						etd->dmem_offset,
						etd->cpu_buffer, etd->len);
			}
			etd->dma_handle = 0;

		} else {
			/* Too big for data memory, use bounce buffer */
			enum dma_data_direction dmadir;

			if (dir == TD_DIR_IN) {
				dmadir = DMA_FROM_DEVICE;
				etd->bounce_buffer = FUNC10(etd->len,
								GFP_ATOMIC);
			} else {
				dmadir = DMA_TO_DEVICE;
				etd->bounce_buffer = FUNC11(etd->cpu_buffer,
								etd->len,
								GFP_ATOMIC);
			}
			if (!etd->bounce_buffer) {
				FUNC4(imx21->dev, "failed bounce alloc\n");
				goto err_bounce_alloc;
			}

			etd->dma_handle =
				FUNC5(imx21->dev,
						etd->bounce_buffer,
						etd->len,
						dmadir);
			if (FUNC6(imx21->dev, etd->dma_handle)) {
				FUNC4(imx21->dev, "failed bounce map\n");
				goto err_bounce_map;
			}
		}
	}

	FUNC2(imx21, USBH_ETDDONESTAT, etd_mask);
	FUNC14(imx21, USBH_ETDDONEEN, etd_mask);
	FUNC2(imx21, USBH_XFILLSTAT, etd_mask);
	FUNC2(imx21, USBH_YFILLSTAT, etd_mask);

	if (etd->dma_handle) {
		FUNC14(imx21, USB_ETDDMACHANLCLR, etd_mask);
		FUNC2(imx21, USBH_XBUFSTAT, etd_mask);
		FUNC2(imx21, USBH_YBUFSTAT, etd_mask);
		FUNC17(etd->dma_handle, imx21->regs + FUNC1(etd_num));
		FUNC14(imx21, USB_ETDDMAEN, etd_mask);
	} else {
		if (dir != TD_DIR_IN) {
			/* need to set for ZLP and PIO */
			FUNC15(imx21, USBH_XFILLSTAT, etd_mask);
			FUNC15(imx21, USBH_YFILLSTAT, etd_mask);
		}
	}

	FUNC0(imx21, etd, activated);

#ifdef DEBUG
	if (!etd->active_count) {
		int i;
		etd->activated_frame = readl(imx21->regs + USBH_FRMNUB);
		etd->disactivated_frame = -1;
		etd->last_int_frame = -1;
		etd->last_req_frame = -1;

		for (i = 0; i < 4; i++)
			etd->submitted_dwords[i] = etd_readl(imx21, etd_num, i);
	}
#endif

	etd->active_count = 1;
	FUNC17(etd_mask, imx21->regs + USBH_ETDENSET);
	return;

err_bounce_map:
	FUNC9(etd->bounce_buffer);

err_bounce_alloc:
	FUNC8(imx21, etd);
	FUNC12(imx21, etd, -ENOMEM);
}