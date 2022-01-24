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
struct spi_message {int dummy; } ;
struct spi_master {int dummy; } ;
struct geni_se {scalar_t__ base; } ;
struct spi_geni_master {int /*<<< orphan*/  dev; int /*<<< orphan*/  xfer_done; int /*<<< orphan*/  lock; int /*<<< orphan*/  cur_mcmd; struct geni_se se; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_CANCEL ; 
 int /*<<< orphan*/  HZ ; 
 scalar_t__ SE_GENI_TX_WATERMARK_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct geni_se*) ; 
 int /*<<< orphan*/  FUNC2 (struct geni_se*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct spi_geni_master* FUNC4 (struct spi_master*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct spi_master *spi,
				struct spi_message *msg)
{
	struct spi_geni_master *mas = FUNC4(spi);
	unsigned long time_left, flags;
	struct geni_se *se = &mas->se;

	FUNC5(&mas->lock, flags);
	FUNC3(&mas->xfer_done);
	mas->cur_mcmd = CMD_CANCEL;
	FUNC2(se);
	FUNC8(0, se->base + SE_GENI_TX_WATERMARK_REG);
	FUNC6(&mas->lock, flags);
	time_left = FUNC7(&mas->xfer_done, HZ);
	if (time_left)
		return;

	FUNC5(&mas->lock, flags);
	FUNC3(&mas->xfer_done);
	FUNC1(se);
	FUNC6(&mas->lock, flags);
	time_left = FUNC7(&mas->xfer_done, HZ);
	if (!time_left)
		FUNC0(mas->dev, "Failed to cancel/abort m_cmd\n");
}