#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct snd_soc_dai {int /*<<< orphan*/  dev; } ;
struct snd_pcm_substream {int dummy; } ;
struct sdw_cdns_dma_data {int /*<<< orphan*/  port; TYPE_1__* stream; } ;
struct sdw_cdns {int /*<<< orphan*/  bus; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sdw_cdns_dma_data*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 struct sdw_cdns_dma_data* FUNC4 (struct snd_soc_dai*,struct snd_pcm_substream*) ; 
 struct sdw_cdns* FUNC5 (struct snd_soc_dai*) ; 

__attribute__((used)) static int
FUNC6(struct snd_pcm_substream *substream, struct snd_soc_dai *dai)
{
	struct sdw_cdns *cdns = FUNC5(dai);
	struct sdw_cdns_dma_data *dma;
	int ret;

	dma = FUNC4(dai, substream);
	if (!dma)
		return -EIO;

	ret = FUNC3(&cdns->bus, dma->stream);
	if (ret < 0)
		FUNC0(dai->dev, "remove master from stream %s failed: %d\n",
			dma->stream->name, ret);

	FUNC1(dma);
	FUNC2(dma->port);
	return ret;
}