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
struct spi_res {void* data; int /*<<< orphan*/  release; int /*<<< orphan*/  entry; } ;
struct spi_device {int dummy; } ;
typedef  int /*<<< orphan*/  spi_res_release_t ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct spi_res* FUNC1 (int,int /*<<< orphan*/ ) ; 

void *FUNC2(struct spi_device *spi,
		    spi_res_release_t release,
		    size_t size, gfp_t gfp)
{
	struct spi_res *sres;

	sres = FUNC1(sizeof(*sres) + size, gfp);
	if (!sres)
		return NULL;

	FUNC0(&sres->entry);
	sres->release = release;

	return sres->data;
}