; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_i740fb.c_i740fb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_i740fb.c_i740fb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_3__, %struct.TYPE_4__, i32, i32, %struct.i740fb_par* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.i740fb_par = type { i32, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@XRX = common dso_local global i32 0, align 4
@DRAM_EXT_CNTL = common dso_local global i32 0, align 4
@DRAM_REFRESH_DISABLE = common dso_local global i32 0, align 4
@VCLK2_VCO_M = common dso_local global i32 0, align 4
@VCLK2_VCO_N = common dso_local global i32 0, align 4
@VCLK2_VCO_MN_MSBS = common dso_local global i32 0, align 4
@VCLK2_VCO_DIV_SEL = common dso_local global i32 0, align 4
@PIXPIPE_CONFIG_0 = common dso_local global i32 0, align 4
@DAC_8_BIT = common dso_local global i32 0, align 4
@VGA_MIS_W = common dso_local global i32 0, align 4
@VGA_SEQ_I = common dso_local global i32 0, align 4
@VGA_SEQ_RESET = common dso_local global i32 0, align 4
@VGA_SEQ_CLOCK_MODE = common dso_local global i64 0, align 8
@VGA_SEQ_C = common dso_local global i32 0, align 4
@VGA_CRT_IC = common dso_local global i32 0, align 4
@VGA_CRTC_V_SYNC_END = common dso_local global i64 0, align 8
@VGA_CRT_C = common dso_local global i32 0, align 4
@VGA_GFX_C = common dso_local global i32 0, align 4
@VGA_GFX_I = common dso_local global i32 0, align 4
@VGA_ATT_C = common dso_local global i32 0, align 4
@VGA_IS1_RC = common dso_local global i32 0, align 4
@VGA_ATT_IW = common dso_local global i32 0, align 4
@EXT_VERT_TOTAL = common dso_local global i32 0, align 4
@EXT_VERT_DISPLAY = common dso_local global i32 0, align 4
@EXT_VERT_SYNC_START = common dso_local global i32 0, align 4
@EXT_VERT_BLANK_START = common dso_local global i32 0, align 4
@EXT_HORIZ_TOTAL = common dso_local global i32 0, align 4
@EXT_HORIZ_BLANK = common dso_local global i32 0, align 4
@EXT_OFFSET = common dso_local global i32 0, align 4
@EXT_START_ADDR_HI = common dso_local global i32 0, align 4
@EXT_START_ADDR = common dso_local global i32 0, align 4
@INTERLACE_CNTL = common dso_local global i32 0, align 4
@INTERLACE_ENABLE = common dso_local global i32 0, align 4
@ADDRESS_MAPPING = common dso_local global i32 0, align 4
@BITBLT_CNTL = common dso_local global i32 0, align 4
@COLEXP_MODE = common dso_local global i32 0, align 4
@DISPLAY_CNTL = common dso_local global i32 0, align 4
@VGA_WRAP_MODE = common dso_local global i32 0, align 4
@GUI_MODE = common dso_local global i32 0, align 4
@PIXPIPE_CONFIG_2 = common dso_local global i32 0, align 4
@PLL_CNTL = common dso_local global i32 0, align 4
@PIXPIPE_CONFIG_1 = common dso_local global i32 0, align 4
@DISPLAY_COLOR_MODE = common dso_local global i32 0, align 4
@FWATER_BLC = common dso_local global i64 0, align 8
@LMI_BURST_LENGTH = common dso_local global i32 0, align 4
@LMI_FIFO_WATERMARK = common dso_local global i32 0, align 4
@DRAM_REFRESH_60HZ = common dso_local global i32 0, align 4
@MRX = common dso_local global i32 0, align 4
@COL_KEY_CNTL_1 = common dso_local global i32 0, align 4
@BLANK_DISP_OVERLAY = common dso_local global i32 0, align 4
@IO_CTNL = common dso_local global i32 0, align 4
@EXTENDED_ATTR_CNTL = common dso_local global i32 0, align 4
@EXTENDED_CRTC_CNTL = common dso_local global i32 0, align 4
@DISPLAY_8BPP_MODE = common dso_local global i32 0, align 4
@VGA_PEL_MSK = common dso_local global i32 0, align 4
@VGA_PEL_IW = common dso_local global i32 0, align 4
@VGA_PEL_D = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @i740fb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i740fb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.i740fb_par*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 4
  %9 = load %struct.i740fb_par*, %struct.i740fb_par** %8, align 8
  store %struct.i740fb_par* %9, %struct.i740fb_par** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 1
  %12 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = call i32 @i740fb_decode_var(%struct.TYPE_4__* %11, %struct.i740fb_par* %12, %struct.fb_info* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %453

19:                                               ; preds = %1
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @memset(i32 %22, i32 0, i32 %25)
  %27 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %28 = call i32 @vga_protect(%struct.i740fb_par* %27)
  %29 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %30 = load i32, i32* @XRX, align 4
  %31 = load i32, i32* @DRAM_EXT_CNTL, align 4
  %32 = load i32, i32* @DRAM_REFRESH_DISABLE, align 4
  %33 = call i32 @i740outreg(%struct.i740fb_par* %29, i32 %30, i32 %31, i32 %32)
  %34 = call i32 @mdelay(i32 1)
  %35 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %36 = load i32, i32* @XRX, align 4
  %37 = load i32, i32* @VCLK2_VCO_M, align 4
  %38 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %39 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @i740outreg(%struct.i740fb_par* %35, i32 %36, i32 %37, i32 %40)
  %42 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %43 = load i32, i32* @XRX, align 4
  %44 = load i32, i32* @VCLK2_VCO_N, align 4
  %45 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %46 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @i740outreg(%struct.i740fb_par* %42, i32 %43, i32 %44, i32 %47)
  %49 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %50 = load i32, i32* @XRX, align 4
  %51 = load i32, i32* @VCLK2_VCO_MN_MSBS, align 4
  %52 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %53 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @i740outreg(%struct.i740fb_par* %49, i32 %50, i32 %51, i32 %54)
  %56 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %57 = load i32, i32* @XRX, align 4
  %58 = load i32, i32* @VCLK2_VCO_DIV_SEL, align 4
  %59 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %60 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @i740outreg(%struct.i740fb_par* %56, i32 %57, i32 %58, i32 %61)
  %63 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %64 = load i32, i32* @XRX, align 4
  %65 = load i32, i32* @PIXPIPE_CONFIG_0, align 4
  %66 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %67 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @DAC_8_BIT, align 4
  %70 = and i32 %68, %69
  %71 = call i32 @i740outreg_mask(%struct.i740fb_par* %63, i32 %64, i32 %65, i32 %70, i32 128)
  %72 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %73 = call i32 @i740inb(%struct.i740fb_par* %72, i32 986)
  %74 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %75 = call i32 @i740outb(%struct.i740fb_par* %74, i32 960, i32 0)
  %76 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %77 = load i32, i32* @VGA_MIS_W, align 4
  %78 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %79 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, 1
  %82 = call i32 @i740outb(%struct.i740fb_par* %76, i32 %77, i32 %81)
  %83 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %84 = load i32, i32* @VGA_SEQ_I, align 4
  %85 = load i32, i32* @VGA_SEQ_RESET, align 4
  %86 = call i32 @i740outreg(%struct.i740fb_par* %83, i32 %84, i32 %85, i32 1)
  %87 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %88 = load i32, i32* @VGA_SEQ_I, align 4
  %89 = load i64, i64* @VGA_SEQ_CLOCK_MODE, align 8
  %90 = trunc i64 %89 to i32
  %91 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %92 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %91, i32 0, i32 6
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @VGA_SEQ_CLOCK_MODE, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, 32
  %98 = call i32 @i740outreg(%struct.i740fb_par* %87, i32 %88, i32 %90, i32 %97)
  store i32 2, i32* %6, align 4
  br label %99

99:                                               ; preds = %115, %19
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @VGA_SEQ_C, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %118

103:                                              ; preds = %99
  %104 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %105 = load i32, i32* @VGA_SEQ_I, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %108 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %107, i32 0, i32 6
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @i740outreg(%struct.i740fb_par* %104, i32 %105, i32 %106, i32 %113)
  br label %115

115:                                              ; preds = %103
  %116 = load i32, i32* %6, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %99

118:                                              ; preds = %99
  %119 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %120 = load i32, i32* @VGA_SEQ_I, align 4
  %121 = load i32, i32* @VGA_SEQ_RESET, align 4
  %122 = call i32 @i740outreg(%struct.i740fb_par* %119, i32 %120, i32 %121, i32 3)
  %123 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %124 = load i32, i32* @VGA_CRT_IC, align 4
  %125 = load i64, i64* @VGA_CRTC_V_SYNC_END, align 8
  %126 = trunc i64 %125 to i32
  %127 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %128 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %127, i32 0, i32 7
  %129 = load i32*, i32** %128, align 8
  %130 = load i64, i64* @VGA_CRTC_V_SYNC_END, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @i740outreg(%struct.i740fb_par* %123, i32 %124, i32 %126, i32 %132)
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %150, %118
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @VGA_CRT_C, align 4
  %137 = icmp slt i32 %135, %136
  br i1 %137, label %138, label %153

138:                                              ; preds = %134
  %139 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %140 = load i32, i32* @VGA_CRT_IC, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %143 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %142, i32 0, i32 7
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @i740outreg(%struct.i740fb_par* %139, i32 %140, i32 %141, i32 %148)
  br label %150

150:                                              ; preds = %138
  %151 = load i32, i32* %6, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %6, align 4
  br label %134

153:                                              ; preds = %134
  store i32 0, i32* %6, align 4
  br label %154

154:                                              ; preds = %170, %153
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @VGA_GFX_C, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %173

158:                                              ; preds = %154
  %159 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %160 = load i32, i32* @VGA_GFX_I, align 4
  %161 = load i32, i32* %6, align 4
  %162 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %163 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %162, i32 0, i32 8
  %164 = load i32*, i32** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @i740outreg(%struct.i740fb_par* %159, i32 %160, i32 %161, i32 %168)
  br label %170

170:                                              ; preds = %158
  %171 = load i32, i32* %6, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %6, align 4
  br label %154

173:                                              ; preds = %154
  store i32 0, i32* %6, align 4
  br label %174

174:                                              ; preds = %196, %173
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* @VGA_ATT_C, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %199

178:                                              ; preds = %174
  %179 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %180 = load i32, i32* @VGA_IS1_RC, align 4
  %181 = call i32 @i740inb(%struct.i740fb_par* %179, i32 %180)
  %182 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %183 = load i32, i32* @VGA_ATT_IW, align 4
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @i740outb(%struct.i740fb_par* %182, i32 %183, i32 %184)
  %186 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %187 = load i32, i32* @VGA_ATT_IW, align 4
  %188 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %189 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %188, i32 0, i32 9
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %6, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @i740outb(%struct.i740fb_par* %186, i32 %187, i32 %194)
  br label %196

196:                                              ; preds = %178
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %6, align 4
  br label %174

199:                                              ; preds = %174
  %200 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %201 = load i32, i32* @VGA_IS1_RC, align 4
  %202 = call i32 @i740inb(%struct.i740fb_par* %200, i32 %201)
  %203 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %204 = load i32, i32* @VGA_ATT_IW, align 4
  %205 = call i32 @i740outb(%struct.i740fb_par* %203, i32 %204, i32 32)
  %206 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %207 = load i32, i32* @VGA_CRT_IC, align 4
  %208 = load i32, i32* @EXT_VERT_TOTAL, align 4
  %209 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %210 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %209, i32 0, i32 10
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @i740outreg(%struct.i740fb_par* %206, i32 %207, i32 %208, i32 %211)
  %213 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %214 = load i32, i32* @VGA_CRT_IC, align 4
  %215 = load i32, i32* @EXT_VERT_DISPLAY, align 4
  %216 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %217 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %216, i32 0, i32 11
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @i740outreg(%struct.i740fb_par* %213, i32 %214, i32 %215, i32 %218)
  %220 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %221 = load i32, i32* @VGA_CRT_IC, align 4
  %222 = load i32, i32* @EXT_VERT_SYNC_START, align 4
  %223 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %224 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %223, i32 0, i32 12
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @i740outreg(%struct.i740fb_par* %220, i32 %221, i32 %222, i32 %225)
  %227 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %228 = load i32, i32* @VGA_CRT_IC, align 4
  %229 = load i32, i32* @EXT_VERT_BLANK_START, align 4
  %230 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %231 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %230, i32 0, i32 13
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @i740outreg(%struct.i740fb_par* %227, i32 %228, i32 %229, i32 %232)
  %234 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %235 = load i32, i32* @VGA_CRT_IC, align 4
  %236 = load i32, i32* @EXT_HORIZ_TOTAL, align 4
  %237 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %238 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %237, i32 0, i32 14
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @i740outreg(%struct.i740fb_par* %234, i32 %235, i32 %236, i32 %239)
  %241 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %242 = load i32, i32* @VGA_CRT_IC, align 4
  %243 = load i32, i32* @EXT_HORIZ_BLANK, align 4
  %244 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %245 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %244, i32 0, i32 15
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @i740outreg(%struct.i740fb_par* %241, i32 %242, i32 %243, i32 %246)
  %248 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %249 = load i32, i32* @VGA_CRT_IC, align 4
  %250 = load i32, i32* @EXT_OFFSET, align 4
  %251 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %252 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %251, i32 0, i32 16
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @i740outreg(%struct.i740fb_par* %248, i32 %249, i32 %250, i32 %253)
  %255 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %256 = load i32, i32* @VGA_CRT_IC, align 4
  %257 = load i32, i32* @EXT_START_ADDR_HI, align 4
  %258 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %259 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %258, i32 0, i32 17
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @i740outreg(%struct.i740fb_par* %255, i32 %256, i32 %257, i32 %260)
  %262 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %263 = load i32, i32* @VGA_CRT_IC, align 4
  %264 = load i32, i32* @EXT_START_ADDR, align 4
  %265 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %266 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %265, i32 0, i32 18
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @i740outreg(%struct.i740fb_par* %262, i32 %263, i32 %264, i32 %267)
  %269 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %270 = load i32, i32* @VGA_CRT_IC, align 4
  %271 = load i32, i32* @INTERLACE_CNTL, align 4
  %272 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %273 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %272, i32 0, i32 19
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @INTERLACE_ENABLE, align 4
  %276 = call i32 @i740outreg_mask(%struct.i740fb_par* %269, i32 %270, i32 %271, i32 %274, i32 %275)
  %277 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %278 = load i32, i32* @XRX, align 4
  %279 = load i32, i32* @ADDRESS_MAPPING, align 4
  %280 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %281 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %280, i32 0, i32 20
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @i740outreg_mask(%struct.i740fb_par* %277, i32 %278, i32 %279, i32 %282, i32 31)
  %284 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %285 = load i32, i32* @XRX, align 4
  %286 = load i32, i32* @BITBLT_CNTL, align 4
  %287 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %288 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %287, i32 0, i32 21
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @COLEXP_MODE, align 4
  %291 = call i32 @i740outreg_mask(%struct.i740fb_par* %284, i32 %285, i32 %286, i32 %289, i32 %290)
  %292 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %293 = load i32, i32* @XRX, align 4
  %294 = load i32, i32* @DISPLAY_CNTL, align 4
  %295 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %296 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %295, i32 0, i32 22
  %297 = load i32, i32* %296, align 8
  %298 = load i32, i32* @VGA_WRAP_MODE, align 4
  %299 = load i32, i32* @GUI_MODE, align 4
  %300 = or i32 %298, %299
  %301 = call i32 @i740outreg_mask(%struct.i740fb_par* %292, i32 %293, i32 %294, i32 %297, i32 %300)
  %302 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %303 = load i32, i32* @XRX, align 4
  %304 = load i32, i32* @PIXPIPE_CONFIG_0, align 4
  %305 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %306 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 8
  %308 = call i32 @i740outreg_mask(%struct.i740fb_par* %302, i32 %303, i32 %304, i32 %307, i32 155)
  %309 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %310 = load i32, i32* @XRX, align 4
  %311 = load i32, i32* @PIXPIPE_CONFIG_2, align 4
  %312 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %313 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %312, i32 0, i32 23
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @i740outreg_mask(%struct.i740fb_par* %309, i32 %310, i32 %311, i32 %314, i32 12)
  %316 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %317 = load i32, i32* @XRX, align 4
  %318 = load i32, i32* @PLL_CNTL, align 4
  %319 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %320 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %319, i32 0, i32 24
  %321 = load i32, i32* %320, align 8
  %322 = call i32 @i740outreg(%struct.i740fb_par* %316, i32 %317, i32 %318, i32 %321)
  %323 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %324 = load i32, i32* @XRX, align 4
  %325 = load i32, i32* @PIXPIPE_CONFIG_1, align 4
  %326 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %327 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %326, i32 0, i32 25
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @DISPLAY_COLOR_MODE, align 4
  %330 = call i32 @i740outreg_mask(%struct.i740fb_par* %323, i32 %324, i32 %325, i32 %328, i32 %329)
  %331 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %332 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %331, i32 0, i32 28
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @FWATER_BLC, align 8
  %335 = add nsw i64 %333, %334
  %336 = call i32 @readl(i64 %335)
  store i32 %336, i32* %5, align 4
  %337 = load i32, i32* @LMI_BURST_LENGTH, align 4
  %338 = load i32, i32* @LMI_FIFO_WATERMARK, align 4
  %339 = or i32 %337, %338
  %340 = xor i32 %339, -1
  %341 = load i32, i32* %5, align 4
  %342 = and i32 %341, %340
  store i32 %342, i32* %5, align 4
  %343 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %344 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %343, i32 0, i32 26
  %345 = load i32, i32* %344, align 8
  %346 = load i32, i32* %5, align 4
  %347 = or i32 %346, %345
  store i32 %347, i32* %5, align 4
  %348 = load i32, i32* %5, align 4
  %349 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %350 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %349, i32 0, i32 28
  %351 = load i64, i64* %350, align 8
  %352 = load i64, i64* @FWATER_BLC, align 8
  %353 = add nsw i64 %351, %352
  %354 = call i32 @writel(i32 %348, i64 %353)
  %355 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %356 = load i32, i32* @XRX, align 4
  %357 = load i32, i32* @DRAM_EXT_CNTL, align 4
  %358 = load i32, i32* @DRAM_REFRESH_60HZ, align 4
  %359 = call i32 @i740outreg(%struct.i740fb_par* %355, i32 %356, i32 %357, i32 %358)
  %360 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %361 = load i32, i32* @MRX, align 4
  %362 = load i32, i32* @COL_KEY_CNTL_1, align 4
  %363 = load i32, i32* @BLANK_DISP_OVERLAY, align 4
  %364 = call i32 @i740outreg_mask(%struct.i740fb_par* %360, i32 %361, i32 %362, i32 0, i32 %363)
  %365 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %366 = load i32, i32* @XRX, align 4
  %367 = load i32, i32* @IO_CTNL, align 4
  %368 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %369 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %368, i32 0, i32 27
  %370 = load i32, i32* %369, align 4
  %371 = load i32, i32* @EXTENDED_ATTR_CNTL, align 4
  %372 = load i32, i32* @EXTENDED_CRTC_CNTL, align 4
  %373 = or i32 %371, %372
  %374 = call i32 @i740outreg_mask(%struct.i740fb_par* %365, i32 %366, i32 %367, i32 %370, i32 %373)
  %375 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %376 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %375, i32 0, i32 25
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* @DISPLAY_8BPP_MODE, align 4
  %379 = icmp ne i32 %377, %378
  br i1 %379, label %380, label %420

380:                                              ; preds = %199
  %381 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %382 = load i32, i32* @VGA_PEL_MSK, align 4
  %383 = call i32 @i740outb(%struct.i740fb_par* %381, i32 %382, i32 255)
  %384 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %385 = load i32, i32* @VGA_PEL_IW, align 4
  %386 = call i32 @i740outb(%struct.i740fb_par* %384, i32 %385, i32 0)
  store i32 0, i32* %6, align 4
  br label %387

387:                                              ; preds = %416, %380
  %388 = load i32, i32* %6, align 4
  %389 = icmp slt i32 %388, 256
  br i1 %389, label %390, label %419

390:                                              ; preds = %387
  %391 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %392 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %391, i32 0, i32 4
  %393 = load i32, i32* %392, align 8
  %394 = load i32, i32* @DAC_8_BIT, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %390
  %398 = load i32, i32* %6, align 4
  br label %402

399:                                              ; preds = %390
  %400 = load i32, i32* %6, align 4
  %401 = ashr i32 %400, 2
  br label %402

402:                                              ; preds = %399, %397
  %403 = phi i32 [ %398, %397 ], [ %401, %399 ]
  store i32 %403, i32* %5, align 4
  %404 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %405 = load i32, i32* @VGA_PEL_D, align 4
  %406 = load i32, i32* %5, align 4
  %407 = call i32 @i740outb(%struct.i740fb_par* %404, i32 %405, i32 %406)
  %408 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %409 = load i32, i32* @VGA_PEL_D, align 4
  %410 = load i32, i32* %5, align 4
  %411 = call i32 @i740outb(%struct.i740fb_par* %408, i32 %409, i32 %410)
  %412 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %413 = load i32, i32* @VGA_PEL_D, align 4
  %414 = load i32, i32* %5, align 4
  %415 = call i32 @i740outb(%struct.i740fb_par* %412, i32 %413, i32 %414)
  br label %416

416:                                              ; preds = %402
  %417 = load i32, i32* %6, align 4
  %418 = add nsw i32 %417, 1
  store i32 %418, i32* %6, align 4
  br label %387

419:                                              ; preds = %387
  br label %420

420:                                              ; preds = %419, %199
  %421 = call i32 @mdelay(i32 50)
  %422 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %423 = call i32 @vga_unprotect(%struct.i740fb_par* %422)
  %424 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %425 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %424, i32 0, i32 1
  %426 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %425, i32 0, i32 0
  %427 = load i32, i32* %426, align 8
  %428 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %429 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %428, i32 0, i32 1
  %430 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = mul nsw i32 %427, %431
  %433 = sdiv i32 %432, 8
  %434 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %435 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %434, i32 0, i32 0
  %436 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %435, i32 0, i32 0
  store i32 %433, i32* %436, align 8
  %437 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %438 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %437, i32 0, i32 1
  %439 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  %441 = icmp eq i32 %440, 8
  br i1 %441, label %442, label %447

442:                                              ; preds = %420
  %443 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  %444 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %445 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %445, i32 0, i32 1
  store i32 %443, i32* %446, align 4
  br label %452

447:                                              ; preds = %420
  %448 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %449 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %450 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %450, i32 0, i32 1
  store i32 %448, i32* %451, align 4
  br label %452

452:                                              ; preds = %447, %442
  store i32 0, i32* %2, align 4
  br label %453

453:                                              ; preds = %452, %17
  %454 = load i32, i32* %2, align 4
  ret i32 %454
}

declare dso_local i32 @i740fb_decode_var(%struct.TYPE_4__*, %struct.i740fb_par*, %struct.fb_info*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @vga_protect(%struct.i740fb_par*) #1

declare dso_local i32 @i740outreg(%struct.i740fb_par*, i32, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @i740outreg_mask(%struct.i740fb_par*, i32, i32, i32, i32) #1

declare dso_local i32 @i740inb(%struct.i740fb_par*, i32) #1

declare dso_local i32 @i740outb(%struct.i740fb_par*, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @vga_unprotect(%struct.i740fb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
