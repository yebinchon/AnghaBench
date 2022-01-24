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
struct uac_rtd_params {int max_psize; struct snd_uac_chip* rbuf; struct snd_uac_chip* ureq; struct snd_uac_chip* uac; } ;
struct uac_req {int dummy; } ;
struct uac_params {int p_chmask; int c_chmask; int /*<<< orphan*/  req_number; } ;
struct snd_uac_chip {struct uac_rtd_params c_prm; struct uac_rtd_params p_prm; struct snd_pcm* pcm; struct snd_card* card; struct g_audio* audio_dev; } ;
struct snd_pcm {struct snd_uac_chip* private_data; int /*<<< orphan*/  name; } ;
struct snd_card {TYPE_2__* dev; int /*<<< orphan*/  longname; int /*<<< orphan*/  shortname; int /*<<< orphan*/  driver; } ;
struct g_audio {int out_ep_maxpsize; int in_ep_maxpsize; TYPE_1__* gadget; struct uac_params params; struct snd_uac_chip* uac; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUFF_SIZE_MAX ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  SNDRV_DMA_TYPE_CONTINUOUS ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_CAPTURE ; 
 int /*<<< orphan*/  SNDRV_PCM_STREAM_PLAYBACK ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_uac_chip*) ; 
 struct snd_uac_chip* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_card*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct snd_card**) ; 
 int FUNC5 (struct snd_card*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct snd_card*,char const*,int /*<<< orphan*/ ,int,int,struct snd_pcm**) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_pcm*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  uac_pcm_ops ; 

int FUNC12(struct g_audio *g_audio, const char *pcm_name,
					const char *card_name)
{
	struct snd_uac_chip *uac;
	struct snd_card *card;
	struct snd_pcm *pcm;
	struct uac_params *params;
	int p_chmask, c_chmask;
	int err;

	if (!g_audio)
		return -EINVAL;

	uac = FUNC2(sizeof(*uac), GFP_KERNEL);
	if (!uac)
		return -ENOMEM;
	g_audio->uac = uac;
	uac->audio_dev = g_audio;

	params = &g_audio->params;
	p_chmask = params->p_chmask;
	c_chmask = params->c_chmask;

	if (c_chmask) {
		struct uac_rtd_params *prm = &uac->c_prm;

		uac->c_prm.uac = uac;
		prm->max_psize = g_audio->out_ep_maxpsize;

		prm->ureq = FUNC0(params->req_number, sizeof(struct uac_req),
				GFP_KERNEL);
		if (!prm->ureq) {
			err = -ENOMEM;
			goto fail;
		}

		prm->rbuf = FUNC0(params->req_number, prm->max_psize,
				GFP_KERNEL);
		if (!prm->rbuf) {
			prm->max_psize = 0;
			err = -ENOMEM;
			goto fail;
		}
	}

	if (p_chmask) {
		struct uac_rtd_params *prm = &uac->p_prm;

		uac->p_prm.uac = uac;
		prm->max_psize = g_audio->in_ep_maxpsize;

		prm->ureq = FUNC0(params->req_number, sizeof(struct uac_req),
				GFP_KERNEL);
		if (!prm->ureq) {
			err = -ENOMEM;
			goto fail;
		}

		prm->rbuf = FUNC0(params->req_number, prm->max_psize,
				GFP_KERNEL);
		if (!prm->rbuf) {
			prm->max_psize = 0;
			err = -ENOMEM;
			goto fail;
		}
	}

	/* Choose any slot, with no id */
	err = FUNC4(&g_audio->gadget->dev,
			-1, NULL, THIS_MODULE, 0, &card);
	if (err < 0)
		goto fail;

	uac->card = card;

	/*
	 * Create first PCM device
	 * Create a substream only for non-zero channel streams
	 */
	err = FUNC8(uac->card, pcm_name, 0,
			       p_chmask ? 1 : 0, c_chmask ? 1 : 0, &pcm);
	if (err < 0)
		goto snd_fail;

	FUNC11(pcm->name, pcm_name, sizeof(pcm->name));
	pcm->private_data = uac;
	uac->pcm = pcm;

	FUNC9(pcm, SNDRV_PCM_STREAM_PLAYBACK, &uac_pcm_ops);
	FUNC9(pcm, SNDRV_PCM_STREAM_CAPTURE, &uac_pcm_ops);

	FUNC11(card->driver, card_name, sizeof(card->driver));
	FUNC11(card->shortname, card_name, sizeof(card->shortname));
	FUNC10(card->longname, "%s %i", card_name, card->dev->id);

	FUNC7(pcm, SNDRV_DMA_TYPE_CONTINUOUS,
		FUNC6(GFP_KERNEL), 0, BUFF_SIZE_MAX);

	err = FUNC5(card);

	if (!err)
		return 0;

snd_fail:
	FUNC3(card);
fail:
	FUNC1(uac->p_prm.ureq);
	FUNC1(uac->c_prm.ureq);
	FUNC1(uac->p_prm.rbuf);
	FUNC1(uac->c_prm.rbuf);
	FUNC1(uac);

	return err;
}