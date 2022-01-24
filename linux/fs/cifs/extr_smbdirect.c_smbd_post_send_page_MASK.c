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
struct smbd_connection {int dummy; } ;
struct scatterlist {int dummy; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct scatterlist*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scatterlist*,struct page*,size_t,unsigned long) ; 
 int FUNC2 (struct smbd_connection*,struct scatterlist*,size_t,int) ; 

__attribute__((used)) static int FUNC3(struct smbd_connection *info, struct page *page,
		unsigned long offset, size_t size, int remaining_data_length)
{
	struct scatterlist sgl;

	FUNC0(&sgl, 1);
	FUNC1(&sgl, page, size, offset);

	return FUNC2(info, &sgl, size, remaining_data_length);
}