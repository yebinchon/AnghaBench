#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct uea_softc {TYPE_2__* dsp_firm; TYPE_1__* usb_dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ ADI930 ; 
 char* DSP4I_FIRMWARE ; 
 char* DSP4P_FIRMWARE ; 
 char* DSP9I_FIRMWARE ; 
 char* DSP9P_FIRMWARE ; 
 char* DSPEI_FIRMWARE ; 
 char* DSPEP_FIRMWARE ; 
 scalar_t__ EAGLE_IV ; 
 int EILSEQ ; 
 int /*<<< orphan*/  FUNC0 (struct uea_softc*) ; 
 scalar_t__ FUNC1 (struct uea_softc*) ; 
 scalar_t__ FUNC2 (struct uea_softc*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,...) ; 

__attribute__((used)) static int FUNC8(struct uea_softc *sc)
{
	int ret;
	char *dsp_name;

	if (FUNC2(sc) == EAGLE_IV) {
		if (FUNC1(sc))
			dsp_name = DSP4I_FIRMWARE;
		else
			dsp_name = DSP4P_FIRMWARE;
	} else if (FUNC2(sc) == ADI930) {
		if (FUNC1(sc))
			dsp_name = DSP9I_FIRMWARE;
		else
			dsp_name = DSP9P_FIRMWARE;
	} else {
		if (FUNC1(sc))
			dsp_name = DSPEI_FIRMWARE;
		else
			dsp_name = DSPEP_FIRMWARE;
	}

	ret = FUNC6(&sc->dsp_firm, dsp_name, &sc->usb_dev->dev);
	if (ret < 0) {
		FUNC7(FUNC0(sc),
		       "requesting firmware %s failed with error %d\n",
			dsp_name, ret);
		return ret;
	}

	if (FUNC2(sc) == EAGLE_IV)
		ret = FUNC4(sc->dsp_firm->data, sc->dsp_firm->size);
	else
		ret = FUNC3(sc->dsp_firm->data, sc->dsp_firm->size);

	if (ret) {
		FUNC7(FUNC0(sc), "firmware %s is corrupted\n",
		       dsp_name);
		FUNC5(sc->dsp_firm);
		sc->dsp_firm = NULL;
		return -EILSEQ;
	}

	return 0;
}