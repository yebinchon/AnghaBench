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
typedef  int /*<<< orphan*/  u8 ;
typedef  size_t u32 ;
struct wl1271 {int dummy; } ;
struct fw_logger_information {void* actual_buff_size; void* buff_write_ptr; void* buff_read_ptr; void* max_buff_size; } ;
typedef  int /*<<< orphan*/  fw_log ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t WL18XX_DATA_RAM_BASE_ADDRESS ; 
 size_t WL18XX_LOGGER_BUFF_OFFSET ; 
 size_t WL18XX_LOGGER_READ_POINT_OFFSET ; 
 size_t WL18XX_LOGGER_SDIO_BUFF_ADDR ; 
 int /*<<< orphan*/  WL18XX_LOGGER_SDIO_BUFF_MAX ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (struct fw_logger_information*,int /*<<< orphan*/ *,int) ; 
 size_t FUNC5 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct wl1271*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC8 (struct wl1271*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct wl1271*,size_t,void*) ; 

int FUNC10(struct wl1271 *wl)
{
	int ret;
	struct fw_logger_information fw_log;
	u8  *buffer;
	u32 internal_fw_addrbase = WL18XX_DATA_RAM_BASE_ADDRESS;
	u32 addr = WL18XX_LOGGER_SDIO_BUFF_ADDR;
	u32 end_buff_addr = WL18XX_LOGGER_SDIO_BUFF_ADDR +
				WL18XX_LOGGER_BUFF_OFFSET;
	u32 available_len;
	u32 actual_len;
	u32 clear_addr;
	size_t len;
	u32 start_loc;

	buffer = FUNC2(WL18XX_LOGGER_SDIO_BUFF_MAX, GFP_KERNEL);
	if (!buffer) {
		FUNC6("Fail to allocate fw logger memory");
		fw_log.actual_buff_size = FUNC0(0);
		goto out;
	}

	ret = FUNC8(wl, addr, buffer, WL18XX_LOGGER_SDIO_BUFF_MAX,
			  false);
	if (ret < 0) {
		FUNC6("Fail to read logger buffer, error_id = %d",
			     ret);
		fw_log.actual_buff_size = FUNC0(0);
		goto free_out;
	}

	FUNC4(&fw_log, buffer, sizeof(fw_log));

	if (FUNC3(fw_log.actual_buff_size) == 0)
		goto free_out;

	actual_len = FUNC3(fw_log.actual_buff_size);
	start_loc = (FUNC3(fw_log.buff_read_ptr) -
			internal_fw_addrbase) - addr;
	end_buff_addr += FUNC3(fw_log.max_buff_size);
	available_len = end_buff_addr -
			(FUNC3(fw_log.buff_read_ptr) -
				 internal_fw_addrbase);
	actual_len = FUNC5(actual_len, available_len);
	len = actual_len;

	FUNC7(wl, &buffer[start_loc], len);
	clear_addr = addr + start_loc + FUNC3(fw_log.actual_buff_size) +
			internal_fw_addrbase;

	len = FUNC3(fw_log.actual_buff_size) - len;
	if (len) {
		FUNC7(wl,
				  &buffer[WL18XX_LOGGER_BUFF_OFFSET],
				  len);
		clear_addr = addr + WL18XX_LOGGER_BUFF_OFFSET + len +
				internal_fw_addrbase;
	}

	/* double check that clear address and write pointer are the same */
	if (clear_addr != FUNC3(fw_log.buff_write_ptr)) {
		FUNC6("Calculate of clear addr Clear = %x, write = %x",
			     clear_addr, FUNC3(fw_log.buff_write_ptr));
	}

	/* indicate FW about Clear buffer */
	ret = FUNC9(wl, addr + WL18XX_LOGGER_READ_POINT_OFFSET,
			     fw_log.buff_write_ptr);
free_out:
	FUNC1(buffer);
out:
	return FUNC3(fw_log.actual_buff_size);
}