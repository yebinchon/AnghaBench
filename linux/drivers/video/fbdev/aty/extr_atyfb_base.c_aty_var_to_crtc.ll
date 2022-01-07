; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_atyfb_base.c_aty_var_to_crtc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_atyfb_base.c_aty_var_to_crtc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.crtc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.atyfb_par = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CRTC_PIX_WIDTH_8BPP = common dso_local global i32 0, align 4
@HOST_8BPP = common dso_local global i32 0, align 4
@SRC_8BPP = common dso_local global i32 0, align 4
@DST_8BPP = common dso_local global i32 0, align 4
@BYTE_ORDER_LSB_TO_MSB = common dso_local global i32 0, align 4
@DP_CHAIN_8BPP = common dso_local global i32 0, align 4
@CRTC_PIX_WIDTH_15BPP = common dso_local global i32 0, align 4
@HOST_15BPP = common dso_local global i32 0, align 4
@SRC_15BPP = common dso_local global i32 0, align 4
@DST_15BPP = common dso_local global i32 0, align 4
@DP_CHAIN_15BPP = common dso_local global i32 0, align 4
@CRTC_PIX_WIDTH_16BPP = common dso_local global i32 0, align 4
@HOST_16BPP = common dso_local global i32 0, align 4
@SRC_16BPP = common dso_local global i32 0, align 4
@DST_16BPP = common dso_local global i32 0, align 4
@DP_CHAIN_16BPP = common dso_local global i32 0, align 4
@INTEGRATED = common dso_local global i32 0, align 4
@CRTC_PIX_WIDTH_24BPP = common dso_local global i32 0, align 4
@DP_CHAIN_24BPP = common dso_local global i32 0, align 4
@CRTC_PIX_WIDTH_32BPP = common dso_local global i32 0, align 4
@HOST_32BPP = common dso_local global i32 0, align 4
@SRC_32BPP = common dso_local global i32 0, align 4
@DST_32BPP = common dso_local global i32 0, align 4
@DP_CHAIN_32BPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"invalid bpp\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"not enough video RAM\00", align 1
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"MACH64 chips are designed for max 1920x1200\0Aselect another resolution.\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"h_disp too large\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"h_sync_strt too large\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"h_total too large\00", align 1
@FB_VMODE_DOUBLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"v_disp too large\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"v_sync_stsrt too large\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"v_total too large\00", align 1
@FB_SYNC_COMP_HIGH_ACT = common dso_local global i32 0, align 4
@CRTC_CSYNC_EN = common dso_local global i32 0, align 4
@CRTC_EXT_DISP_EN = common dso_local global i32 0, align 4
@CRTC_EN = common dso_local global i32 0, align 4
@CRTC_VGA_LINEAR = common dso_local global i32 0, align 4
@CRTC_DBL_SCAN_EN = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@CRTC_INTERLACE_EN = common dso_local global i32 0, align 4
@MAGIC_FIFO = common dso_local global i32 0, align 4
@CRTC_GEN_CNTL = common dso_local global i32 0, align 4
@CRTC_FIFO_LWM = common dso_local global i32 0, align 4
@AUTO_HORZ_RATIO = common dso_local global i32 0, align 4
@AUTO_VERT_RATIO = common dso_local global i32 0, align 4
@CNFG_PANEL = common dso_local global i32 0, align 4
@CRTC2_DISPLAY_DIS = common dso_local global i32 0, align 4
@CRTC2_EN = common dso_local global i32 0, align 4
@CRTC2_PIX_WIDTH = common dso_local global i32 0, align 4
@CRTC_RW_SELECT = common dso_local global i32 0, align 4
@CRT_ON = common dso_local global i32 0, align 4
@DIS_HOR_CRT_DIVBY2 = common dso_local global i32 0, align 4
@DONT_SHADOW_VPAR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EXT_VERT_STRETCH = common dso_local global i32 0, align 4
@FB_ACTIVATE_TEST = common dso_local global i32 0, align 4
@HORZ_DIVBY2_EN = common dso_local global i32 0, align 4
@HORZ_STRETCHING = common dso_local global i32 0, align 4
@HORZ_STRETCH_BLEND = common dso_local global i32 0, align 4
@HORZ_STRETCH_EN = common dso_local global i32 0, align 4
@HORZ_STRETCH_LOOP = common dso_local global i32 0, align 4
@HORZ_STRETCH_MODE = common dso_local global i32 0, align 4
@HORZ_STRETCH_RATIO = common dso_local global i32 0, align 4
@LCD_DISPLAY_DIS = common dso_local global i32 0, align 4
@LCD_GEN_CNTL = common dso_local global i32 0, align 4
@LCD_INDEX = common dso_local global i32 0, align 4
@LCD_INDEX_MASK = common dso_local global i32 0, align 4
@LCD_ON = common dso_local global i32 0, align 4
@LCD_SRC_SEL = common dso_local global i32 0, align 4
@LOCK_8DOT = common dso_local global i32 0, align 4
@LT_LCD_REGS = common dso_local global i32 0, align 4
@MOBIL_BUS = common dso_local global i32 0, align 4
@SHADOW_EN = common dso_local global i32 0, align 4
@SHADOW_RW_EN = common dso_local global i32 0, align 4
@TVCLK_PM_EN = common dso_local global i32 0, align 4
@USE_SHADOWED_ROWCUR = common dso_local global i32 0, align 4
@USE_SHADOWED_VEND = common dso_local global i32 0, align 4
@VERT_STRETCH_EN = common dso_local global i32 0, align 4
@VERT_STRETCH_MODE = common dso_local global i32 0, align 4
@VERT_STRETCH_RATIO0 = common dso_local global i32 0, align 4
@VERT_STRETCH_RATIO3 = common dso_local global i32 0, align 4
@VERT_STRETCH_USE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.fb_var_screeninfo*, %struct.crtc*)* @aty_var_to_crtc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aty_var_to_crtc(%struct.fb_info* %0, %struct.fb_var_screeninfo* %1, %struct.crtc* %2) #0 {
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca %struct.crtc*, align 8
  %7 = alloca %struct.atyfb_par*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  store %struct.crtc* %2, %struct.crtc** %6, align 8
  %35 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.atyfb_par*
  store %struct.atyfb_par* %38, %struct.atyfb_par** %7, align 8
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 7
  %43 = and i32 %42, -8
  store i32 %43, i32* %8, align 4
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %9, align 4
  %47 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %48 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 7
  %51 = and i32 %50, -8
  store i32 %51, i32* %10, align 4
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %11, align 4
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 7
  %59 = and i32 %58, -8
  store i32 %59, i32* %12, align 4
  %60 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %61 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %13, align 4
  %63 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp eq i32 %66, 16
  br i1 %67, label %68, label %76

68:                                               ; preds = %3
  %69 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %70 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %69, i32 0, i32 16
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 5
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i32 15, i32 16
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %68, %3
  %77 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %78 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %15, align 4
  %80 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %81 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %84, %85
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %76
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %89, %90
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %88, %76
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %18, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %95, %96
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %100, %101
  store i32 %102, i32* %11, align 4
  br label %103

103:                                              ; preds = %99, %92
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %25, align 4
  %105 = load i32, i32* %14, align 4
  %106 = icmp sle i32 %105, 8
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  store i32 8, i32* %14, align 4
  %108 = load i32, i32* @CRTC_PIX_WIDTH_8BPP, align 4
  store i32 %108, i32* %31, align 4
  %109 = load i32, i32* @HOST_8BPP, align 4
  %110 = load i32, i32* @SRC_8BPP, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @DST_8BPP, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @BYTE_ORDER_LSB_TO_MSB, align 4
  %115 = or i32 %113, %114
  store i32 %115, i32* %32, align 4
  %116 = load i32, i32* @DP_CHAIN_8BPP, align 4
  store i32 %116, i32* %33, align 4
  br label %179

117:                                              ; preds = %103
  %118 = load i32, i32* %14, align 4
  %119 = icmp sle i32 %118, 15
  br i1 %119, label %120, label %130

120:                                              ; preds = %117
  store i32 16, i32* %14, align 4
  %121 = load i32, i32* @CRTC_PIX_WIDTH_15BPP, align 4
  store i32 %121, i32* %31, align 4
  %122 = load i32, i32* @HOST_15BPP, align 4
  %123 = load i32, i32* @SRC_15BPP, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @DST_15BPP, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @BYTE_ORDER_LSB_TO_MSB, align 4
  %128 = or i32 %126, %127
  store i32 %128, i32* %32, align 4
  %129 = load i32, i32* @DP_CHAIN_15BPP, align 4
  store i32 %129, i32* %33, align 4
  br label %178

130:                                              ; preds = %117
  %131 = load i32, i32* %14, align 4
  %132 = icmp sle i32 %131, 16
  br i1 %132, label %133, label %143

133:                                              ; preds = %130
  store i32 16, i32* %14, align 4
  %134 = load i32, i32* @CRTC_PIX_WIDTH_16BPP, align 4
  store i32 %134, i32* %31, align 4
  %135 = load i32, i32* @HOST_16BPP, align 4
  %136 = load i32, i32* @SRC_16BPP, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @DST_16BPP, align 4
  %139 = or i32 %137, %138
  %140 = load i32, i32* @BYTE_ORDER_LSB_TO_MSB, align 4
  %141 = or i32 %139, %140
  store i32 %141, i32* %32, align 4
  %142 = load i32, i32* @DP_CHAIN_16BPP, align 4
  store i32 %142, i32* %33, align 4
  br label %177

143:                                              ; preds = %130
  %144 = load i32, i32* %14, align 4
  %145 = icmp sle i32 %144, 24
  br i1 %145, label %146, label %160

146:                                              ; preds = %143
  %147 = load i32, i32* @INTEGRATED, align 4
  %148 = call i64 @M64_HAS(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %146
  store i32 24, i32* %14, align 4
  %151 = load i32, i32* @CRTC_PIX_WIDTH_24BPP, align 4
  store i32 %151, i32* %31, align 4
  %152 = load i32, i32* @HOST_8BPP, align 4
  %153 = load i32, i32* @SRC_8BPP, align 4
  %154 = or i32 %152, %153
  %155 = load i32, i32* @DST_8BPP, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @BYTE_ORDER_LSB_TO_MSB, align 4
  %158 = or i32 %156, %157
  store i32 %158, i32* %32, align 4
  %159 = load i32, i32* @DP_CHAIN_24BPP, align 4
  store i32 %159, i32* %33, align 4
  br label %176

160:                                              ; preds = %146, %143
  %161 = load i32, i32* %14, align 4
  %162 = icmp sle i32 %161, 32
  br i1 %162, label %163, label %173

163:                                              ; preds = %160
  store i32 32, i32* %14, align 4
  %164 = load i32, i32* @CRTC_PIX_WIDTH_32BPP, align 4
  store i32 %164, i32* %31, align 4
  %165 = load i32, i32* @HOST_32BPP, align 4
  %166 = load i32, i32* @SRC_32BPP, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @DST_32BPP, align 4
  %169 = or i32 %167, %168
  %170 = load i32, i32* @BYTE_ORDER_LSB_TO_MSB, align 4
  %171 = or i32 %169, %170
  store i32 %171, i32* %32, align 4
  %172 = load i32, i32* @DP_CHAIN_32BPP, align 4
  store i32 %172, i32* %33, align 4
  br label %175

173:                                              ; preds = %160
  %174 = call i32 @FAIL(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %175

175:                                              ; preds = %173, %163
  br label %176

176:                                              ; preds = %175, %150
  br label %177

177:                                              ; preds = %176, %133
  br label %178

178:                                              ; preds = %177, %120
  br label %179

179:                                              ; preds = %178, %107
  %180 = load %struct.atyfb_par*, %struct.atyfb_par** %7, align 8
  %181 = load i32, i32* %10, align 4
  %182 = load i32, i32* %14, align 4
  %183 = call i32 @calc_line_length(%struct.atyfb_par* %180, i32 %181, i32 %182)
  store i32 %183, i32* %34, align 4
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %34, align 4
  %186 = mul nsw i32 %184, %185
  %187 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %188 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = icmp sgt i32 %186, %190
  br i1 %191, label %192, label %194

192:                                              ; preds = %179
  %193 = call i32 @FAIL(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %179
  %195 = load i32, i32* %15, align 4
  %196 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  %199 = zext i1 %198 to i64
  %200 = select i1 %198, i32 0, i32 1
  store i32 %200, i32* %23, align 4
  %201 = load i32, i32* %15, align 4
  %202 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  %205 = zext i1 %204 to i64
  %206 = select i1 %204, i32 0, i32 1
  store i32 %206, i32* %29, align 4
  %207 = load i32, i32* %8, align 4
  %208 = icmp sgt i32 %207, 1920
  br i1 %208, label %212, label %209

209:                                              ; preds = %194
  %210 = load i32, i32* %9, align 4
  %211 = icmp sgt i32 %210, 1200
  br i1 %211, label %212, label %214

212:                                              ; preds = %209, %194
  %213 = call i32 @FAIL(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  br label %214

214:                                              ; preds = %212, %209
  %215 = load i32, i32* %18, align 4
  %216 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %217 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %216, i32 0, i32 9
  %218 = load i32, i32* %217, align 4
  %219 = add nsw i32 %215, %218
  store i32 %219, i32* %19, align 4
  %220 = load i32, i32* %19, align 4
  %221 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %222 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %221, i32 0, i32 10
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %220, %223
  store i32 %224, i32* %20, align 4
  %225 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %226 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %225, i32 0, i32 9
  %227 = load i32, i32* %226, align 4
  %228 = and i32 %227, 7
  store i32 %228, i32* %21, align 4
  %229 = load i32, i32* %20, align 4
  %230 = load i32, i32* %21, align 4
  %231 = add nsw i32 %229, %230
  %232 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %233 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %232, i32 0, i32 11
  %234 = load i32, i32* %233, align 4
  %235 = add nsw i32 %231, %234
  store i32 %235, i32* %17, align 4
  %236 = load i32, i32* %25, align 4
  %237 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %238 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %237, i32 0, i32 12
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %236, %239
  store i32 %240, i32* %26, align 4
  %241 = load i32, i32* %26, align 4
  %242 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %243 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %242, i32 0, i32 13
  %244 = load i32, i32* %243, align 4
  %245 = add nsw i32 %241, %244
  store i32 %245, i32* %27, align 4
  %246 = load i32, i32* %27, align 4
  %247 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %248 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %247, i32 0, i32 14
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %246, %249
  store i32 %250, i32* %24, align 4
  %251 = load i32, i32* %18, align 4
  %252 = ashr i32 %251, 3
  %253 = sub nsw i32 %252, 1
  store i32 %253, i32* %18, align 4
  %254 = load i32, i32* %19, align 4
  %255 = ashr i32 %254, 3
  %256 = sub nsw i32 %255, 1
  store i32 %256, i32* %19, align 4
  %257 = load i32, i32* %20, align 4
  %258 = ashr i32 %257, 3
  %259 = sub nsw i32 %258, 1
  store i32 %259, i32* %20, align 4
  %260 = load i32, i32* %17, align 4
  %261 = ashr i32 %260, 3
  %262 = sub nsw i32 %261, 1
  store i32 %262, i32* %17, align 4
  %263 = load i32, i32* %20, align 4
  %264 = load i32, i32* %19, align 4
  %265 = sub nsw i32 %263, %264
  store i32 %265, i32* %22, align 4
  %266 = load i32, i32* %18, align 4
  %267 = call i32 @FAIL_MAX(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %266, i32 255)
  %268 = load i32, i32* %19, align 4
  %269 = call i32 @FAIL_MAX(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %268, i32 511)
  %270 = load i32, i32* %22, align 4
  %271 = icmp sgt i32 %270, 31
  br i1 %271, label %272, label %273

272:                                              ; preds = %214
  store i32 31, i32* %22, align 4
  br label %273

273:                                              ; preds = %272, %214
  %274 = load i32, i32* %17, align 4
  %275 = call i32 @FAIL_MAX(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %274, i32 511)
  %276 = load i32, i32* %16, align 4
  %277 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %289

280:                                              ; preds = %273
  %281 = load i32, i32* %25, align 4
  %282 = shl i32 %281, 1
  store i32 %282, i32* %25, align 4
  %283 = load i32, i32* %26, align 4
  %284 = shl i32 %283, 1
  store i32 %284, i32* %26, align 4
  %285 = load i32, i32* %27, align 4
  %286 = shl i32 %285, 1
  store i32 %286, i32* %27, align 4
  %287 = load i32, i32* %24, align 4
  %288 = shl i32 %287, 1
  store i32 %288, i32* %24, align 4
  br label %289

289:                                              ; preds = %280, %273
  %290 = load i32, i32* %25, align 4
  %291 = add nsw i32 %290, -1
  store i32 %291, i32* %25, align 4
  %292 = load i32, i32* %26, align 4
  %293 = add nsw i32 %292, -1
  store i32 %293, i32* %26, align 4
  %294 = load i32, i32* %27, align 4
  %295 = add nsw i32 %294, -1
  store i32 %295, i32* %27, align 4
  %296 = load i32, i32* %24, align 4
  %297 = add nsw i32 %296, -1
  store i32 %297, i32* %24, align 4
  %298 = load i32, i32* %27, align 4
  %299 = load i32, i32* %26, align 4
  %300 = sub nsw i32 %298, %299
  store i32 %300, i32* %28, align 4
  %301 = load i32, i32* %25, align 4
  %302 = call i32 @FAIL_MAX(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %301, i32 2047)
  %303 = load i32, i32* %26, align 4
  %304 = call i32 @FAIL_MAX(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %303, i32 2047)
  %305 = load i32, i32* %28, align 4
  %306 = icmp sgt i32 %305, 31
  br i1 %306, label %307, label %308

307:                                              ; preds = %289
  store i32 31, i32* %28, align 4
  br label %308

308:                                              ; preds = %307, %289
  %309 = load i32, i32* %24, align 4
  %310 = call i32 @FAIL_MAX(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %309, i32 2047)
  %311 = load i32, i32* %15, align 4
  %312 = load i32, i32* @FB_SYNC_COMP_HIGH_ACT, align 4
  %313 = and i32 %311, %312
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %317

315:                                              ; preds = %308
  %316 = load i32, i32* @CRTC_CSYNC_EN, align 4
  br label %318

317:                                              ; preds = %308
  br label %318

318:                                              ; preds = %317, %315
  %319 = phi i32 [ %316, %315 ], [ 0, %317 ]
  store i32 %319, i32* %30, align 4
  %320 = load i32, i32* %10, align 4
  %321 = load %struct.crtc*, %struct.crtc** %6, align 8
  %322 = getelementptr inbounds %struct.crtc, %struct.crtc* %321, i32 0, i32 3
  store i32 %320, i32* %322, align 4
  %323 = load i32, i32* %11, align 4
  %324 = load %struct.crtc*, %struct.crtc** %6, align 8
  %325 = getelementptr inbounds %struct.crtc, %struct.crtc* %324, i32 0, i32 4
  store i32 %323, i32* %325, align 8
  %326 = load i32, i32* %12, align 4
  %327 = load %struct.crtc*, %struct.crtc** %6, align 8
  %328 = getelementptr inbounds %struct.crtc, %struct.crtc* %327, i32 0, i32 5
  store i32 %326, i32* %328, align 4
  %329 = load i32, i32* %13, align 4
  %330 = load %struct.crtc*, %struct.crtc** %6, align 8
  %331 = getelementptr inbounds %struct.crtc, %struct.crtc* %330, i32 0, i32 6
  store i32 %329, i32* %331, align 8
  %332 = load i32, i32* %14, align 4
  %333 = load %struct.crtc*, %struct.crtc** %6, align 8
  %334 = getelementptr inbounds %struct.crtc, %struct.crtc* %333, i32 0, i32 7
  store i32 %332, i32* %334, align 4
  %335 = load i32, i32* %13, align 4
  %336 = load i32, i32* %34, align 4
  %337 = mul nsw i32 %335, %336
  %338 = load i32, i32* %12, align 4
  %339 = load i32, i32* %14, align 4
  %340 = mul nsw i32 %338, %339
  %341 = sdiv i32 %340, 8
  %342 = add nsw i32 %337, %341
  %343 = sdiv i32 %342, 8
  %344 = load i32, i32* %34, align 4
  %345 = load i32, i32* %14, align 4
  %346 = sdiv i32 %344, %345
  %347 = shl i32 %346, 22
  %348 = or i32 %343, %347
  %349 = load %struct.crtc*, %struct.crtc** %6, align 8
  %350 = getelementptr inbounds %struct.crtc, %struct.crtc* %349, i32 0, i32 8
  store i32 %348, i32* %350, align 8
  %351 = load %struct.crtc*, %struct.crtc** %6, align 8
  %352 = getelementptr inbounds %struct.crtc, %struct.crtc* %351, i32 0, i32 23
  store i64 0, i64* %352, align 8
  %353 = load i32, i32* %17, align 4
  %354 = load i32, i32* %18, align 4
  %355 = shl i32 %354, 16
  %356 = or i32 %353, %355
  %357 = load %struct.crtc*, %struct.crtc** %6, align 8
  %358 = getelementptr inbounds %struct.crtc, %struct.crtc* %357, i32 0, i32 9
  store i32 %356, i32* %358, align 4
  %359 = load i32, i32* %19, align 4
  %360 = and i32 %359, 255
  %361 = load i32, i32* %21, align 4
  %362 = shl i32 %361, 8
  %363 = or i32 %360, %362
  %364 = load i32, i32* %19, align 4
  %365 = and i32 %364, 256
  %366 = shl i32 %365, 4
  %367 = or i32 %363, %366
  %368 = load i32, i32* %22, align 4
  %369 = shl i32 %368, 16
  %370 = or i32 %367, %369
  %371 = load i32, i32* %23, align 4
  %372 = shl i32 %371, 21
  %373 = or i32 %370, %372
  %374 = load %struct.crtc*, %struct.crtc** %6, align 8
  %375 = getelementptr inbounds %struct.crtc, %struct.crtc* %374, i32 0, i32 10
  store i32 %373, i32* %375, align 8
  %376 = load i32, i32* %24, align 4
  %377 = load i32, i32* %25, align 4
  %378 = shl i32 %377, 16
  %379 = or i32 %376, %378
  %380 = load %struct.crtc*, %struct.crtc** %6, align 8
  %381 = getelementptr inbounds %struct.crtc, %struct.crtc* %380, i32 0, i32 11
  store i32 %379, i32* %381, align 4
  %382 = load i32, i32* %26, align 4
  %383 = load i32, i32* %28, align 4
  %384 = shl i32 %383, 16
  %385 = or i32 %382, %384
  %386 = load i32, i32* %29, align 4
  %387 = shl i32 %386, 21
  %388 = or i32 %385, %387
  %389 = load %struct.crtc*, %struct.crtc** %6, align 8
  %390 = getelementptr inbounds %struct.crtc, %struct.crtc* %389, i32 0, i32 12
  store i32 %388, i32* %390, align 8
  %391 = load i32, i32* @CRTC_EXT_DISP_EN, align 4
  %392 = load i32, i32* @CRTC_EN, align 4
  %393 = or i32 %391, %392
  %394 = load i32, i32* %31, align 4
  %395 = or i32 %393, %394
  %396 = load i32, i32* %30, align 4
  %397 = or i32 %395, %396
  %398 = load %struct.crtc*, %struct.crtc** %6, align 8
  %399 = getelementptr inbounds %struct.crtc, %struct.crtc* %398, i32 0, i32 13
  store i32 %397, i32* %399, align 4
  %400 = load i32, i32* @CRTC_VGA_LINEAR, align 4
  %401 = load %struct.crtc*, %struct.crtc** %6, align 8
  %402 = getelementptr inbounds %struct.crtc, %struct.crtc* %401, i32 0, i32 13
  %403 = load i32, i32* %402, align 4
  %404 = or i32 %403, %400
  store i32 %404, i32* %402, align 4
  %405 = load i32, i32* %16, align 4
  %406 = load i32, i32* @FB_VMODE_DOUBLE, align 4
  %407 = and i32 %405, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %415

409:                                              ; preds = %318
  %410 = load i32, i32* @CRTC_DBL_SCAN_EN, align 4
  %411 = load %struct.crtc*, %struct.crtc** %6, align 8
  %412 = getelementptr inbounds %struct.crtc, %struct.crtc* %411, i32 0, i32 13
  %413 = load i32, i32* %412, align 4
  %414 = or i32 %413, %410
  store i32 %414, i32* %412, align 4
  br label %415

415:                                              ; preds = %409, %318
  %416 = load i32, i32* %16, align 4
  %417 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %418 = and i32 %416, %417
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %426

420:                                              ; preds = %415
  %421 = load i32, i32* @CRTC_INTERLACE_EN, align 4
  %422 = load %struct.crtc*, %struct.crtc** %6, align 8
  %423 = getelementptr inbounds %struct.crtc, %struct.crtc* %422, i32 0, i32 13
  %424 = load i32, i32* %423, align 4
  %425 = or i32 %424, %421
  store i32 %425, i32* %423, align 4
  br label %426

426:                                              ; preds = %420, %415
  %427 = load i32, i32* @MAGIC_FIFO, align 4
  %428 = call i64 @M64_HAS(i32 %427)
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %440

430:                                              ; preds = %426
  %431 = load i32, i32* @CRTC_GEN_CNTL, align 4
  %432 = load %struct.atyfb_par*, %struct.atyfb_par** %7, align 8
  %433 = call i32 @aty_ld_le32(i32 %431, %struct.atyfb_par* %432)
  %434 = load i32, i32* @CRTC_FIFO_LWM, align 4
  %435 = and i32 %433, %434
  %436 = load %struct.crtc*, %struct.crtc** %6, align 8
  %437 = getelementptr inbounds %struct.crtc, %struct.crtc* %436, i32 0, i32 13
  %438 = load i32, i32* %437, align 4
  %439 = or i32 %438, %435
  store i32 %439, i32* %437, align 4
  br label %440

440:                                              ; preds = %430, %426
  %441 = load i32, i32* %32, align 4
  %442 = load %struct.crtc*, %struct.crtc** %6, align 8
  %443 = getelementptr inbounds %struct.crtc, %struct.crtc* %442, i32 0, i32 21
  store i32 %441, i32* %443, align 4
  %444 = load i32, i32* %33, align 4
  %445 = load %struct.crtc*, %struct.crtc** %6, align 8
  %446 = getelementptr inbounds %struct.crtc, %struct.crtc* %445, i32 0, i32 22
  store i32 %444, i32* %446, align 8
  ret i32 0
}

declare dso_local i64 @M64_HAS(i32) #1

declare dso_local i32 @FAIL(i8*) #1

declare dso_local i32 @calc_line_length(%struct.atyfb_par*, i32, i32) #1

declare dso_local i32 @FAIL_MAX(i8*, i32, i32) #1

declare dso_local i32 @aty_ld_le32(i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
