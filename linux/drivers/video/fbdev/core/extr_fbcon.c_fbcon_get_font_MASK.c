#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {void** data; int width; int height; } ;
struct vc_data {TYPE_1__ vc_font; scalar_t__ vc_hi_font_mask; } ;
struct console_font {void** data; int width; int height; int charcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**,void**,int) ; 
 int /*<<< orphan*/  FUNC1 (void**,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct vc_data *vc, struct console_font *font)
{
	u8 *fontdata = vc->vc_font.data;
	u8 *data = font->data;
	int i, j;

	font->width = vc->vc_font.width;
	font->height = vc->vc_font.height;
	font->charcount = vc->vc_hi_font_mask ? 512 : 256;
	if (!font->data)
		return 0;

	if (font->width <= 8) {
		j = vc->vc_font.height;
		for (i = 0; i < font->charcount; i++) {
			FUNC0(data, fontdata, j);
			FUNC1(data + j, 0, 32 - j);
			data += 32;
			fontdata += j;
		}
	} else if (font->width <= 16) {
		j = vc->vc_font.height * 2;
		for (i = 0; i < font->charcount; i++) {
			FUNC0(data, fontdata, j);
			FUNC1(data + j, 0, 64 - j);
			data += 64;
			fontdata += j;
		}
	} else if (font->width <= 24) {
		for (i = 0; i < font->charcount; i++) {
			for (j = 0; j < vc->vc_font.height; j++) {
				*data++ = fontdata[0];
				*data++ = fontdata[1];
				*data++ = fontdata[2];
				fontdata += sizeof(u32);
			}
			FUNC1(data, 0, 3 * (32 - j));
			data += 3 * (32 - j);
		}
	} else {
		j = vc->vc_font.height * 4;
		for (i = 0; i < font->charcount; i++) {
			FUNC0(data, fontdata, j);
			FUNC1(data + j, 0, 128 - j);
			data += 128;
			fontdata += j;
		}
	}
	return 0;
}