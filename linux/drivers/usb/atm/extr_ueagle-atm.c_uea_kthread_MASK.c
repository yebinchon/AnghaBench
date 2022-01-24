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
struct uea_softc {int (* stat ) (struct uea_softc*) ;scalar_t__ reset; } ;

/* Variables and functions */
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (struct uea_softc*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct uea_softc*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct uea_softc*) ; 
 int /*<<< orphan*/  FUNC9 (struct uea_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(void *data)
{
	struct uea_softc *sc = data;
	int ret = -EAGAIN;

	FUNC3();
	FUNC6(FUNC0(sc));
	while (!FUNC1()) {
		if (ret < 0 || sc->reset)
			ret = FUNC8(sc);
		if (!ret)
			ret = sc->stat(sc);
		if (ret != -EAGAIN)
			FUNC9(sc, 0, FUNC2(1000));
		FUNC5();
	}
	FUNC7(FUNC0(sc));
	return ret;
}