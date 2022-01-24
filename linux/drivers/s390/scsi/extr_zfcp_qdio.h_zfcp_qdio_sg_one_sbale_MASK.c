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
struct scatterlist {scalar_t__ length; } ;

/* Variables and functions */
 scalar_t__ ZFCP_QDIO_SBALE_LEN ; 
 scalar_t__ FUNC0 (struct scatterlist*) ; 

__attribute__((used)) static inline
int FUNC1(struct scatterlist *sg)
{
	return FUNC0(sg) && sg->length <= ZFCP_QDIO_SBALE_LEN;
}