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
struct spi_transfer {int dummy; } ;
struct spi_master {int dummy; } ;
struct spi_device {int dummy; } ;
struct npcm_pspi {int /*<<< orphan*/  xfer_done; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int /*<<< orphan*/  NPCM_PSPI_TIMEOUT_MS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct npcm_pspi*) ; 
 int /*<<< orphan*/  FUNC2 (struct npcm_pspi*) ; 
 int /*<<< orphan*/  FUNC3 (struct spi_device*,struct spi_transfer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct npcm_pspi* FUNC5 (struct spi_master*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct spi_master *master,
				  struct spi_device *spi,
				  struct spi_transfer *t)
{
	struct npcm_pspi *priv = FUNC5(master);
	int status;

	FUNC3(spi, t);
	FUNC4(&priv->xfer_done);
	FUNC2(priv);
	status = FUNC6(&priv->xfer_done,
					     FUNC0
					     (NPCM_PSPI_TIMEOUT_MS));
	if (status == 0) {
		FUNC1(priv);
		return -ETIMEDOUT;
	}

	return 0;
}