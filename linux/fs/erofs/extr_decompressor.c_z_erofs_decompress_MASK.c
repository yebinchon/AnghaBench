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
struct z_erofs_decompress_req {scalar_t__ alg; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ Z_EROFS_COMPRESSION_SHIFTED ; 
 int FUNC0 (struct z_erofs_decompress_req*,struct list_head*) ; 
 int FUNC1 (struct z_erofs_decompress_req*,struct list_head*) ; 

int FUNC2(struct z_erofs_decompress_req *rq,
		       struct list_head *pagepool)
{
	if (rq->alg == Z_EROFS_COMPRESSION_SHIFTED)
		return FUNC1(rq, pagepool);
	return FUNC0(rq, pagepool);
}