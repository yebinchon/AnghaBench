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
struct snd_uac_chip {int /*<<< orphan*/  p_prm; } ;
struct g_audio {int /*<<< orphan*/  in_ep; struct snd_uac_chip* uac; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC1(struct g_audio *audio_dev)
{
	struct snd_uac_chip *uac = audio_dev->uac;

	FUNC0(&uac->p_prm, audio_dev->in_ep);
}