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
struct trf7970a {int /*<<< orphan*/  lock; int /*<<< orphan*/  regulator; int /*<<< orphan*/  ddev; } ;
struct spi_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct trf7970a* FUNC6 (struct spi_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct trf7970a*) ; 

__attribute__((used)) static int FUNC8(struct spi_device *spi)
{
	struct trf7970a *trf = FUNC6(spi);

	FUNC1(&trf->lock);

	FUNC7(trf);

	FUNC2(&trf->lock);

	FUNC4(trf->ddev);
	FUNC3(trf->ddev);

	FUNC5(trf->regulator);

	FUNC0(&trf->lock);

	return 0;
}