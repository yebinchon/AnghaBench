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
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct sdw_cdns_dma_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sdw_cdns_dma_data*) ; 
 struct sdw_cdns_dma_data* FUNC1 (struct snd_soc_dai*,struct snd_pcm_substream*) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_soc_dai*,struct snd_pcm_substream*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct snd_pcm_substream *substream,
			   struct snd_soc_dai *dai)
{
	struct sdw_cdns_dma_data *dma;

	dma = FUNC1(dai, substream);
	if (!dma)
		return;

	FUNC2(dai, substream, NULL);
	FUNC0(dma);
}