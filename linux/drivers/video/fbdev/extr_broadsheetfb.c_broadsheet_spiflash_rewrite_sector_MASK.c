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
struct broadsheetfb_par {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct broadsheetfb_par*,int) ; 
 int FUNC1 (struct broadsheetfb_par*,int,int,char*) ; 
 int FUNC2 (struct broadsheetfb_par*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

__attribute__((used)) static int FUNC6(struct broadsheetfb_par *par,
					int sector_size, int data_start_addr,
					int data_len, const char *data)
{
	int err;
	char *sector_buffer;
	int tail_start_addr;
	int start_sector_addr;

	sector_buffer = FUNC4(sector_size, GFP_KERNEL);
	if (!sector_buffer)
		return -ENOMEM;

	/* the start address of the sector is the 0th byte of that sector */
	start_sector_addr = (data_start_addr / sector_size) * sector_size;

	/*
	 * check if there is head data that we need to readback into our sector
	 * buffer first
	 */
	if (data_start_addr != start_sector_addr) {
		/*
		 * we need to read every byte up till the start address of our
		 * data and we put it into our sector buffer.
		 */
		err = FUNC1(par, start_sector_addr,
						data_start_addr, sector_buffer);
		if (err)
			goto out;
	}

	/* now we copy our data into the right place in the sector buffer */
	FUNC5(sector_buffer + data_start_addr, data, data_len);

	/*
	 * now we check if there is a tail section of the sector that we need to
	 * readback.
	 */
	tail_start_addr = (data_start_addr + data_len) % sector_size;

	if (tail_start_addr) {
		int tail_len;

		tail_len = sector_size - tail_start_addr;

		/* now we read this tail into our sector buffer */
		err = FUNC1(par, tail_start_addr,
			tail_len, sector_buffer + tail_start_addr);
		if (err)
			goto out;
	}

	/* if we got here we have the full sector that we want to rewrite. */

	/* first erase the sector */
	err = FUNC0(par, start_sector_addr);
	if (err)
		goto out;

	/* now write it */
	err = FUNC2(par, start_sector_addr,
					sector_buffer, sector_size);
out:
	FUNC3(sector_buffer);
	return err;
}