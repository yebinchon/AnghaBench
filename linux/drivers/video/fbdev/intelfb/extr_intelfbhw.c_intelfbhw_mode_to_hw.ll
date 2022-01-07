; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_mode_to_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_intelfbhw_mode_to_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.intelfb_hwstate = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"intelfbhw_mode_to_hw\0A\00", align 1
@VGA_DISABLE = common dso_local global i32 0, align 4
@PIPE_B = common dso_local global i32 0, align 4
@ADPA_USE_VGA_HVPOLARITY = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@ADPA_SYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@ADPA_SYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@ADPA_SYNC_ACTIVE_MASK = common dso_local global i32 0, align 4
@ADPA_VSYNC_ACTIVE_SHIFT = common dso_local global i32 0, align 4
@ADPA_HSYNC_ACTIVE_SHIFT = common dso_local global i32 0, align 4
@PIPE_MASK = common dso_local global i32 0, align 4
@ADPA_PIPE_SELECT_SHIFT = common dso_local global i32 0, align 4
@ADPA_DPMS_CONTROL_MASK = common dso_local global i32 0, align 4
@ADPA_DPMS_D0 = common dso_local global i32 0, align 4
@ADPA_DAC_ENABLE = common dso_local global i32 0, align 4
@DPLL_VCO_ENABLE = common dso_local global i32 0, align 4
@DPLL_VGA_MODE_DISABLE = common dso_local global i32 0, align 4
@DPLL_RATE_SELECT_MASK = common dso_local global i32 0, align 4
@DPLL_REFERENCE_SELECT_MASK = common dso_local global i32 0, align 4
@DPLL_REFERENCE_DEFAULT = common dso_local global i32 0, align 4
@DPLL_RATE_SELECT_FP0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"calc_pll_params failed\0A\00", align 1
@DPLL_P1_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"PLL P1 parameter\00", align 1
@DPLL_P2_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"PLL P2 parameter\00", align 1
@FP_DIVISOR_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"PLL M1 parameter\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"PLL M2 parameter\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"PLL N parameter\00", align 1
@DPLL_P1_FORCE_DIV2 = common dso_local global i32 0, align 4
@DPLL_P2_SHIFT = common dso_local global i32 0, align 4
@DPLL_P1_SHIFT = common dso_local global i32 0, align 4
@DPLL_I9XX_P2_SHIFT = common dso_local global i32 0, align 4
@FP_N_DIVISOR_SHIFT = common dso_local global i32 0, align 4
@FP_M1_DIVISOR_SHIFT = common dso_local global i32 0, align 4
@FP_M2_DIVISOR_SHIFT = common dso_local global i32 0, align 4
@PORT_ENABLE = common dso_local global i32 0, align 4
@DISPPLANE_PLANE_ENABLE = common dso_local global i32 0, align 4
@DISPPLANE_GAMMA_ENABLE = common dso_local global i32 0, align 4
@DISPPLANE_PIXFORMAT_MASK = common dso_local global i32 0, align 4
@DISPPLANE_8BPP = common dso_local global i32 0, align 4
@DISPPLANE_15_16BPP = common dso_local global i32 0, align 4
@DISPPLANE_16BPP = common dso_local global i32 0, align 4
@DISPPLANE_32BPP_NO_ALPHA = common dso_local global i32 0, align 4
@DISPPLANE_SEL_PIPE_SHIFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [46 x i8] c"H: act %d, ss %d, se %d, tot %d bs %d, be %d\0A\00", align 1
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"V: act %d, ss %d, se %d, tot %d bs %d, be %d\0A\00", align 1
@HACTIVE_MASK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [13 x i8] c"CRTC hactive\00", align 1
@HSYNCSTART_MASK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c"CRTC hsync_start\00", align 1
@HSYNCEND_MASK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"CRTC hsync_end\00", align 1
@HTOTAL_MASK = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"CRTC htotal\00", align 1
@HBLANKSTART_MASK = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"CRTC hblank_start\00", align 1
@HBLANKEND_MASK = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [16 x i8] c"CRTC hblank_end\00", align 1
@VACTIVE_MASK = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [13 x i8] c"CRTC vactive\00", align 1
@VSYNCSTART_MASK = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [17 x i8] c"CRTC vsync_start\00", align 1
@VSYNCEND_MASK = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [15 x i8] c"CRTC vsync_end\00", align 1
@VTOTAL_MASK = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [12 x i8] c"CRTC vtotal\00", align 1
@VBLANKSTART_MASK = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [18 x i8] c"CRTC vblank_start\00", align 1
@VBLANKEND_MASK = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [16 x i8] c"CRTC vblank_end\00", align 1
@HTOTAL_SHIFT = common dso_local global i32 0, align 4
@HACTIVE_SHIFT = common dso_local global i32 0, align 4
@HBLANKSTART_SHIFT = common dso_local global i32 0, align 4
@HSYNCEND_SHIFT = common dso_local global i32 0, align 4
@HSYNCSTART_SHIFT = common dso_local global i32 0, align 4
@VTOTAL_SHIFT = common dso_local global i32 0, align 4
@VACTIVE_SHIFT = common dso_local global i32 0, align 4
@VBLANKSTART_SHIFT = common dso_local global i32 0, align 4
@VSYNCEND_SHIFT = common dso_local global i32 0, align 4
@VSYNCSTART_SHIFT = common dso_local global i32 0, align 4
@SRC_SIZE_HORIZ_SHIFT = common dso_local global i32 0, align 4
@SRC_SIZE_VERT_SHIFT = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [13 x i8] c"pitch is %d\0A\00", align 1
@STRIDE_ALIGNMENT_I9XX = common dso_local global i32 0, align 4
@STRIDE_ALIGNMENT = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [40 x i8] c"display stride %d has bad alignment %d\0A\00", align 1
@PIPECONF_GAMMA = common dso_local global i32 0, align 4
@PIPECONF_INTERLACE_W_FIELD_INDICATION = common dso_local global i32 0, align 4
@PIPECONF_INTERLACE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intelfbhw_mode_to_hw(%struct.intelfb_info* %0, %struct.intelfb_hwstate* %1, %struct.fb_var_screeninfo* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.intelfb_info*, align 8
  %6 = alloca %struct.intelfb_hwstate*, align 8
  %7 = alloca %struct.fb_var_screeninfo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
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
  %33 = alloca i32*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32, align 4
  store %struct.intelfb_info* %0, %struct.intelfb_info** %5, align 8
  store %struct.intelfb_hwstate* %1, %struct.intelfb_hwstate** %6, align 8
  store %struct.fb_var_screeninfo* %2, %struct.fb_var_screeninfo** %7, align 8
  %42 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %43 = call i32 @intelfbhw_active_pipe(%struct.intelfb_hwstate* %42)
  store i32 %43, i32* %8, align 4
  %44 = call i32 (i8*, ...) @DBG_MSG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @VGA_DISABLE, align 4
  %46 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %47 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %46, i32 0, i32 28
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %45
  store i32 %49, i32* %47, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @PIPE_B, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %76

53:                                               ; preds = %3
  %54 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %55 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %54, i32 0, i32 0
  store i32* %55, i32** %9, align 8
  %56 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %57 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %56, i32 0, i32 1
  store i32* %57, i32** %10, align 8
  %58 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %59 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %58, i32 0, i32 2
  store i32* %59, i32** %11, align 8
  %60 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %61 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %60, i32 0, i32 3
  store i32* %61, i32** %36, align 8
  %62 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %63 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %62, i32 0, i32 4
  store i32* %63, i32** %37, align 8
  %64 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %65 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %64, i32 0, i32 5
  store i32* %65, i32** %38, align 8
  %66 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %67 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %66, i32 0, i32 6
  store i32* %67, i32** %33, align 8
  %68 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %69 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %68, i32 0, i32 7
  store i32* %69, i32** %34, align 8
  %70 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %71 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %70, i32 0, i32 8
  store i32* %71, i32** %35, align 8
  %72 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %73 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %72, i32 0, i32 9
  store i32* %73, i32** %39, align 8
  %74 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %75 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %74, i32 0, i32 10
  store i32* %75, i32** %40, align 8
  br label %99

76:                                               ; preds = %3
  %77 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %78 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %77, i32 0, i32 11
  store i32* %78, i32** %9, align 8
  %79 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %80 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %79, i32 0, i32 12
  store i32* %80, i32** %10, align 8
  %81 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %82 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %81, i32 0, i32 13
  store i32* %82, i32** %11, align 8
  %83 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %84 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %83, i32 0, i32 14
  store i32* %84, i32** %36, align 8
  %85 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %86 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %85, i32 0, i32 15
  store i32* %86, i32** %37, align 8
  %87 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %88 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %87, i32 0, i32 16
  store i32* %88, i32** %38, align 8
  %89 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %90 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %89, i32 0, i32 17
  store i32* %90, i32** %33, align 8
  %91 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %92 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %91, i32 0, i32 18
  store i32* %92, i32** %34, align 8
  %93 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %94 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %93, i32 0, i32 19
  store i32* %94, i32** %35, align 8
  %95 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %96 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %95, i32 0, i32 20
  store i32* %96, i32** %39, align 8
  %97 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %98 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %97, i32 0, i32 21
  store i32* %98, i32** %40, align 8
  br label %99

99:                                               ; preds = %76, %53
  %100 = load i32, i32* @ADPA_USE_VGA_HVPOLARITY, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %103 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %102, i32 0, i32 22
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %107 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %99
  %113 = load i32, i32* @ADPA_SYNC_ACTIVE_HIGH, align 4
  br label %116

114:                                              ; preds = %99
  %115 = load i32, i32* @ADPA_SYNC_ACTIVE_LOW, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  store i32 %117, i32* %32, align 4
  %118 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %119 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = load i32, i32* @ADPA_SYNC_ACTIVE_HIGH, align 4
  br label %128

126:                                              ; preds = %116
  %127 = load i32, i32* @ADPA_SYNC_ACTIVE_LOW, align 4
  br label %128

128:                                              ; preds = %126, %124
  %129 = phi i32 [ %125, %124 ], [ %127, %126 ]
  store i32 %129, i32* %31, align 4
  %130 = load i32, i32* @ADPA_SYNC_ACTIVE_MASK, align 4
  %131 = load i32, i32* @ADPA_VSYNC_ACTIVE_SHIFT, align 4
  %132 = shl i32 %130, %131
  %133 = load i32, i32* @ADPA_SYNC_ACTIVE_MASK, align 4
  %134 = load i32, i32* @ADPA_HSYNC_ACTIVE_SHIFT, align 4
  %135 = shl i32 %133, %134
  %136 = or i32 %132, %135
  %137 = xor i32 %136, -1
  %138 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %139 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %138, i32 0, i32 22
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* %32, align 4
  %143 = load i32, i32* @ADPA_HSYNC_ACTIVE_SHIFT, align 4
  %144 = shl i32 %142, %143
  %145 = load i32, i32* %31, align 4
  %146 = load i32, i32* @ADPA_VSYNC_ACTIVE_SHIFT, align 4
  %147 = shl i32 %145, %146
  %148 = or i32 %144, %147
  %149 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %150 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %149, i32 0, i32 22
  %151 = load i32, i32* %150, align 4
  %152 = or i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* @PIPE_MASK, align 4
  %154 = load i32, i32* @ADPA_PIPE_SELECT_SHIFT, align 4
  %155 = shl i32 %153, %154
  %156 = xor i32 %155, -1
  %157 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %158 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %157, i32 0, i32 22
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, %156
  store i32 %160, i32* %158, align 4
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @ADPA_PIPE_SELECT_SHIFT, align 4
  %163 = shl i32 %161, %162
  %164 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %165 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %164, i32 0, i32 22
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  %168 = load i32, i32* @ADPA_DPMS_CONTROL_MASK, align 4
  %169 = xor i32 %168, -1
  %170 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %171 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %170, i32 0, i32 22
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, %169
  store i32 %173, i32* %171, align 4
  %174 = load i32, i32* @ADPA_DPMS_D0, align 4
  %175 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %176 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %175, i32 0, i32 22
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 4
  %179 = load i32, i32* @ADPA_DAC_ENABLE, align 4
  %180 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %181 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %180, i32 0, i32 22
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %182, %179
  store i32 %183, i32* %181, align 4
  %184 = load i32, i32* @DPLL_VCO_ENABLE, align 4
  %185 = load i32, i32* @DPLL_VGA_MODE_DISABLE, align 4
  %186 = or i32 %184, %185
  %187 = load i32*, i32** %9, align 8
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %186
  store i32 %189, i32* %187, align 4
  %190 = load i32, i32* @DPLL_RATE_SELECT_MASK, align 4
  %191 = load i32, i32* @DPLL_REFERENCE_SELECT_MASK, align 4
  %192 = or i32 %190, %191
  %193 = xor i32 %192, -1
  %194 = load i32*, i32** %9, align 8
  %195 = load i32, i32* %194, align 4
  %196 = and i32 %195, %193
  store i32 %196, i32* %194, align 4
  %197 = load i32, i32* @DPLL_REFERENCE_DEFAULT, align 4
  %198 = load i32, i32* @DPLL_RATE_SELECT_FP0, align 4
  %199 = or i32 %197, %198
  %200 = load i32*, i32** %9, align 8
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %199
  store i32 %202, i32* %200, align 4
  %203 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %204 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = sdiv i32 1000000000, %205
  store i32 %206, i32* %17, align 4
  %207 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %208 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* %17, align 4
  %211 = call i64 @calc_pll_params(i32 %209, i32 %210, i32* %12, i32* %13, i32* %14, i32* %15, i32* %16, i32* %18)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %128
  %214 = call i32 (i8*, ...) @WRN_MSG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %678

215:                                              ; preds = %128
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* @DPLL_P1_MASK, align 4
  %218 = call i64 @check_overflow(i32 %216, i32 %217, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %215
  store i32 1, i32* %4, align 4
  br label %678

221:                                              ; preds = %215
  %222 = load i32, i32* %16, align 4
  %223 = load i32, i32* @DPLL_P2_MASK, align 4
  %224 = call i64 @check_overflow(i32 %222, i32 %223, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %221
  store i32 1, i32* %4, align 4
  br label %678

227:                                              ; preds = %221
  %228 = load i32, i32* %12, align 4
  %229 = load i32, i32* @FP_DIVISOR_MASK, align 4
  %230 = call i64 @check_overflow(i32 %228, i32 %229, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %227
  store i32 1, i32* %4, align 4
  br label %678

233:                                              ; preds = %227
  %234 = load i32, i32* %13, align 4
  %235 = load i32, i32* @FP_DIVISOR_MASK, align 4
  %236 = call i64 @check_overflow(i32 %234, i32 %235, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %233
  store i32 1, i32* %4, align 4
  br label %678

239:                                              ; preds = %233
  %240 = load i32, i32* %14, align 4
  %241 = load i32, i32* @FP_DIVISOR_MASK, align 4
  %242 = call i64 @check_overflow(i32 %240, i32 %241, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %239
  store i32 1, i32* %4, align 4
  br label %678

245:                                              ; preds = %239
  %246 = load i32, i32* @DPLL_P1_FORCE_DIV2, align 4
  %247 = xor i32 %246, -1
  %248 = load i32*, i32** %9, align 8
  %249 = load i32, i32* %248, align 4
  %250 = and i32 %249, %247
  store i32 %250, i32* %248, align 4
  %251 = load i32, i32* @DPLL_P2_MASK, align 4
  %252 = load i32, i32* @DPLL_P2_SHIFT, align 4
  %253 = shl i32 %251, %252
  %254 = load i32, i32* @DPLL_P1_MASK, align 4
  %255 = load i32, i32* @DPLL_P1_SHIFT, align 4
  %256 = shl i32 %254, %255
  %257 = or i32 %253, %256
  %258 = xor i32 %257, -1
  %259 = load i32*, i32** %9, align 8
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %260, %258
  store i32 %261, i32* %259, align 4
  %262 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %263 = call i64 @IS_I9XX(%struct.intelfb_info* %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %280

265:                                              ; preds = %245
  %266 = load i32, i32* %16, align 4
  %267 = load i32, i32* @DPLL_I9XX_P2_SHIFT, align 4
  %268 = shl i32 %266, %267
  %269 = load i32*, i32** %9, align 8
  %270 = load i32, i32* %269, align 4
  %271 = or i32 %270, %268
  store i32 %271, i32* %269, align 4
  %272 = load i32, i32* %15, align 4
  %273 = sub nsw i32 %272, 1
  %274 = shl i32 1, %273
  %275 = load i32, i32* @DPLL_P1_SHIFT, align 4
  %276 = shl i32 %274, %275
  %277 = load i32*, i32** %9, align 8
  %278 = load i32, i32* %277, align 4
  %279 = or i32 %278, %276
  store i32 %279, i32* %277, align 4
  br label %291

280:                                              ; preds = %245
  %281 = load i32, i32* %16, align 4
  %282 = load i32, i32* @DPLL_P2_SHIFT, align 4
  %283 = shl i32 %281, %282
  %284 = load i32, i32* %15, align 4
  %285 = load i32, i32* @DPLL_P1_SHIFT, align 4
  %286 = shl i32 %284, %285
  %287 = or i32 %283, %286
  %288 = load i32*, i32** %9, align 8
  %289 = load i32, i32* %288, align 4
  %290 = or i32 %289, %287
  store i32 %290, i32* %288, align 4
  br label %291

291:                                              ; preds = %280, %265
  %292 = load i32, i32* %14, align 4
  %293 = load i32, i32* @FP_N_DIVISOR_SHIFT, align 4
  %294 = shl i32 %292, %293
  %295 = load i32, i32* %12, align 4
  %296 = load i32, i32* @FP_M1_DIVISOR_SHIFT, align 4
  %297 = shl i32 %295, %296
  %298 = or i32 %294, %297
  %299 = load i32, i32* %13, align 4
  %300 = load i32, i32* @FP_M2_DIVISOR_SHIFT, align 4
  %301 = shl i32 %299, %300
  %302 = or i32 %298, %301
  %303 = load i32*, i32** %10, align 8
  store i32 %302, i32* %303, align 4
  %304 = load i32*, i32** %10, align 8
  %305 = load i32, i32* %304, align 4
  %306 = load i32*, i32** %11, align 8
  store i32 %305, i32* %306, align 4
  %307 = load i32, i32* @PORT_ENABLE, align 4
  %308 = xor i32 %307, -1
  %309 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %310 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %309, i32 0, i32 27
  %311 = load i32, i32* %310, align 4
  %312 = and i32 %311, %308
  store i32 %312, i32* %310, align 4
  %313 = load i32, i32* @PORT_ENABLE, align 4
  %314 = xor i32 %313, -1
  %315 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %316 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %315, i32 0, i32 26
  %317 = load i32, i32* %316, align 4
  %318 = and i32 %317, %314
  store i32 %318, i32* %316, align 4
  %319 = load i32, i32* @DISPPLANE_PLANE_ENABLE, align 4
  %320 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %321 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %320, i32 0, i32 23
  %322 = load i32, i32* %321, align 4
  %323 = or i32 %322, %319
  store i32 %323, i32* %321, align 4
  %324 = load i32, i32* @DISPPLANE_GAMMA_ENABLE, align 4
  %325 = xor i32 %324, -1
  %326 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %327 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %326, i32 0, i32 23
  %328 = load i32, i32* %327, align 4
  %329 = and i32 %328, %325
  store i32 %329, i32* %327, align 4
  %330 = load i32, i32* @DISPPLANE_PIXFORMAT_MASK, align 4
  %331 = xor i32 %330, -1
  %332 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %333 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %332, i32 0, i32 23
  %334 = load i32, i32* %333, align 4
  %335 = and i32 %334, %331
  store i32 %335, i32* %333, align 4
  %336 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %337 = call i32 @intelfb_var_to_depth(%struct.fb_var_screeninfo* %336)
  switch i32 %337, label %364 [
    i32 8, label %338
    i32 15, label %346
    i32 16, label %352
    i32 24, label %358
  ]

338:                                              ; preds = %291
  %339 = load i32, i32* @DISPPLANE_8BPP, align 4
  %340 = load i32, i32* @DISPPLANE_GAMMA_ENABLE, align 4
  %341 = or i32 %339, %340
  %342 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %343 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %342, i32 0, i32 23
  %344 = load i32, i32* %343, align 4
  %345 = or i32 %344, %341
  store i32 %345, i32* %343, align 4
  br label %364

346:                                              ; preds = %291
  %347 = load i32, i32* @DISPPLANE_15_16BPP, align 4
  %348 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %349 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %348, i32 0, i32 23
  %350 = load i32, i32* %349, align 4
  %351 = or i32 %350, %347
  store i32 %351, i32* %349, align 4
  br label %364

352:                                              ; preds = %291
  %353 = load i32, i32* @DISPPLANE_16BPP, align 4
  %354 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %355 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %354, i32 0, i32 23
  %356 = load i32, i32* %355, align 4
  %357 = or i32 %356, %353
  store i32 %357, i32* %355, align 4
  br label %364

358:                                              ; preds = %291
  %359 = load i32, i32* @DISPPLANE_32BPP_NO_ALPHA, align 4
  %360 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %361 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %360, i32 0, i32 23
  %362 = load i32, i32* %361, align 4
  %363 = or i32 %362, %359
  store i32 %363, i32* %361, align 4
  br label %364

364:                                              ; preds = %291, %358, %352, %346, %338
  %365 = load i32, i32* @PIPE_MASK, align 4
  %366 = load i32, i32* @DISPPLANE_SEL_PIPE_SHIFT, align 4
  %367 = shl i32 %365, %366
  %368 = xor i32 %367, -1
  %369 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %370 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %369, i32 0, i32 23
  %371 = load i32, i32* %370, align 4
  %372 = and i32 %371, %368
  store i32 %372, i32* %370, align 4
  %373 = load i32, i32* %8, align 4
  %374 = load i32, i32* @DISPPLANE_SEL_PIPE_SHIFT, align 4
  %375 = shl i32 %373, %374
  %376 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %377 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %376, i32 0, i32 23
  %378 = load i32, i32* %377, align 4
  %379 = or i32 %378, %375
  store i32 %379, i32* %377, align 4
  %380 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %381 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 4
  store i32 %382, i32* %24, align 4
  %383 = load i32, i32* %24, align 4
  %384 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %385 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %384, i32 0, i32 3
  %386 = load i32, i32* %385, align 4
  %387 = add nsw i32 %383, %386
  store i32 %387, i32* %19, align 4
  %388 = load i32, i32* %19, align 4
  %389 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %390 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %389, i32 0, i32 4
  %391 = load i32, i32* %390, align 4
  %392 = add nsw i32 %388, %391
  store i32 %392, i32* %20, align 4
  %393 = load i32, i32* %20, align 4
  %394 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %395 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %394, i32 0, i32 5
  %396 = load i32, i32* %395, align 4
  %397 = add nsw i32 %393, %396
  store i32 %397, i32* %23, align 4
  %398 = load i32, i32* %24, align 4
  store i32 %398, i32* %21, align 4
  %399 = load i32, i32* %23, align 4
  store i32 %399, i32* %22, align 4
  %400 = load i32, i32* %24, align 4
  %401 = load i32, i32* %19, align 4
  %402 = load i32, i32* %20, align 4
  %403 = load i32, i32* %23, align 4
  %404 = load i32, i32* %21, align 4
  %405 = load i32, i32* %22, align 4
  %406 = call i32 (i8*, ...) @DBG_MSG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i32 %400, i32 %401, i32 %402, i32 %403, i32 %404, i32 %405)
  %407 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %408 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %407, i32 0, i32 6
  %409 = load i32, i32* %408, align 4
  store i32 %409, i32* %30, align 4
  %410 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %411 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %410, i32 0, i32 7
  %412 = load i32, i32* %411, align 4
  %413 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %414 = and i32 %412, %413
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %419

416:                                              ; preds = %364
  %417 = load i32, i32* %30, align 4
  %418 = add nsw i32 %417, -1
  store i32 %418, i32* %30, align 4
  br label %419

419:                                              ; preds = %416, %364
  %420 = load i32, i32* %30, align 4
  %421 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %422 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %421, i32 0, i32 8
  %423 = load i32, i32* %422, align 4
  %424 = add nsw i32 %420, %423
  store i32 %424, i32* %25, align 4
  %425 = load i32, i32* %25, align 4
  %426 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %427 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %426, i32 0, i32 9
  %428 = load i32, i32* %427, align 4
  %429 = add nsw i32 %425, %428
  store i32 %429, i32* %26, align 4
  %430 = load i32, i32* %26, align 4
  %431 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %432 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %431, i32 0, i32 10
  %433 = load i32, i32* %432, align 4
  %434 = add nsw i32 %430, %433
  store i32 %434, i32* %29, align 4
  %435 = load i32, i32* %30, align 4
  store i32 %435, i32* %27, align 4
  %436 = load i32, i32* %26, align 4
  %437 = add nsw i32 %436, 1
  store i32 %437, i32* %28, align 4
  %438 = load i32, i32* %30, align 4
  %439 = load i32, i32* %25, align 4
  %440 = load i32, i32* %26, align 4
  %441 = load i32, i32* %29, align 4
  %442 = load i32, i32* %27, align 4
  %443 = load i32, i32* %28, align 4
  %444 = call i32 (i8*, ...) @DBG_MSG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0), i32 %438, i32 %439, i32 %440, i32 %441, i32 %442, i32 %443)
  %445 = load i32, i32* %24, align 4
  %446 = add nsw i32 %445, -1
  store i32 %446, i32* %24, align 4
  %447 = load i32, i32* %24, align 4
  %448 = load i32, i32* @HACTIVE_MASK, align 4
  %449 = call i64 @check_overflow(i32 %447, i32 %448, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %450 = icmp ne i64 %449, 0
  br i1 %450, label %451, label %452

451:                                              ; preds = %419
  store i32 1, i32* %4, align 4
  br label %678

452:                                              ; preds = %419
  %453 = load i32, i32* %19, align 4
  %454 = add nsw i32 %453, -1
  store i32 %454, i32* %19, align 4
  %455 = load i32, i32* %19, align 4
  %456 = load i32, i32* @HSYNCSTART_MASK, align 4
  %457 = call i64 @check_overflow(i32 %455, i32 %456, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %459, label %460

459:                                              ; preds = %452
  store i32 1, i32* %4, align 4
  br label %678

460:                                              ; preds = %452
  %461 = load i32, i32* %20, align 4
  %462 = add nsw i32 %461, -1
  store i32 %462, i32* %20, align 4
  %463 = load i32, i32* %20, align 4
  %464 = load i32, i32* @HSYNCEND_MASK, align 4
  %465 = call i64 @check_overflow(i32 %463, i32 %464, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %468

467:                                              ; preds = %460
  store i32 1, i32* %4, align 4
  br label %678

468:                                              ; preds = %460
  %469 = load i32, i32* %23, align 4
  %470 = add nsw i32 %469, -1
  store i32 %470, i32* %23, align 4
  %471 = load i32, i32* %23, align 4
  %472 = load i32, i32* @HTOTAL_MASK, align 4
  %473 = call i64 @check_overflow(i32 %471, i32 %472, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %474 = icmp ne i64 %473, 0
  br i1 %474, label %475, label %476

475:                                              ; preds = %468
  store i32 1, i32* %4, align 4
  br label %678

476:                                              ; preds = %468
  %477 = load i32, i32* %21, align 4
  %478 = add nsw i32 %477, -1
  store i32 %478, i32* %21, align 4
  %479 = load i32, i32* %21, align 4
  %480 = load i32, i32* @HBLANKSTART_MASK, align 4
  %481 = call i64 @check_overflow(i32 %479, i32 %480, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %484

483:                                              ; preds = %476
  store i32 1, i32* %4, align 4
  br label %678

484:                                              ; preds = %476
  %485 = load i32, i32* %22, align 4
  %486 = add nsw i32 %485, -1
  store i32 %486, i32* %22, align 4
  %487 = load i32, i32* %22, align 4
  %488 = load i32, i32* @HBLANKEND_MASK, align 4
  %489 = call i64 @check_overflow(i32 %487, i32 %488, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0))
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %492

491:                                              ; preds = %484
  store i32 1, i32* %4, align 4
  br label %678

492:                                              ; preds = %484
  %493 = load i32, i32* %30, align 4
  %494 = add nsw i32 %493, -1
  store i32 %494, i32* %30, align 4
  %495 = load i32, i32* %30, align 4
  %496 = load i32, i32* @VACTIVE_MASK, align 4
  %497 = call i64 @check_overflow(i32 %495, i32 %496, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  %498 = icmp ne i64 %497, 0
  br i1 %498, label %499, label %500

499:                                              ; preds = %492
  store i32 1, i32* %4, align 4
  br label %678

500:                                              ; preds = %492
  %501 = load i32, i32* %25, align 4
  %502 = add nsw i32 %501, -1
  store i32 %502, i32* %25, align 4
  %503 = load i32, i32* %25, align 4
  %504 = load i32, i32* @VSYNCSTART_MASK, align 4
  %505 = call i64 @check_overflow(i32 %503, i32 %504, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0))
  %506 = icmp ne i64 %505, 0
  br i1 %506, label %507, label %508

507:                                              ; preds = %500
  store i32 1, i32* %4, align 4
  br label %678

508:                                              ; preds = %500
  %509 = load i32, i32* %26, align 4
  %510 = add nsw i32 %509, -1
  store i32 %510, i32* %26, align 4
  %511 = load i32, i32* %26, align 4
  %512 = load i32, i32* @VSYNCEND_MASK, align 4
  %513 = call i64 @check_overflow(i32 %511, i32 %512, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0))
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %516

515:                                              ; preds = %508
  store i32 1, i32* %4, align 4
  br label %678

516:                                              ; preds = %508
  %517 = load i32, i32* %29, align 4
  %518 = add nsw i32 %517, -1
  store i32 %518, i32* %29, align 4
  %519 = load i32, i32* %29, align 4
  %520 = load i32, i32* @VTOTAL_MASK, align 4
  %521 = call i64 @check_overflow(i32 %519, i32 %520, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.18, i64 0, i64 0))
  %522 = icmp ne i64 %521, 0
  br i1 %522, label %523, label %524

523:                                              ; preds = %516
  store i32 1, i32* %4, align 4
  br label %678

524:                                              ; preds = %516
  %525 = load i32, i32* %27, align 4
  %526 = add nsw i32 %525, -1
  store i32 %526, i32* %27, align 4
  %527 = load i32, i32* %27, align 4
  %528 = load i32, i32* @VBLANKSTART_MASK, align 4
  %529 = call i64 @check_overflow(i32 %527, i32 %528, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0))
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %531, label %532

531:                                              ; preds = %524
  store i32 1, i32* %4, align 4
  br label %678

532:                                              ; preds = %524
  %533 = load i32, i32* %28, align 4
  %534 = add nsw i32 %533, -1
  store i32 %534, i32* %28, align 4
  %535 = load i32, i32* %28, align 4
  %536 = load i32, i32* @VBLANKEND_MASK, align 4
  %537 = call i64 @check_overflow(i32 %535, i32 %536, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %540

539:                                              ; preds = %532
  store i32 1, i32* %4, align 4
  br label %678

540:                                              ; preds = %532
  %541 = load i32, i32* %23, align 4
  %542 = load i32, i32* @HTOTAL_SHIFT, align 4
  %543 = shl i32 %541, %542
  %544 = load i32, i32* %24, align 4
  %545 = load i32, i32* @HACTIVE_SHIFT, align 4
  %546 = shl i32 %544, %545
  %547 = or i32 %543, %546
  %548 = load i32*, i32** %38, align 8
  store i32 %547, i32* %548, align 4
  %549 = load i32, i32* %21, align 4
  %550 = load i32, i32* @HBLANKSTART_SHIFT, align 4
  %551 = shl i32 %549, %550
  %552 = load i32, i32* %22, align 4
  %553 = load i32, i32* @HSYNCEND_SHIFT, align 4
  %554 = shl i32 %552, %553
  %555 = or i32 %551, %554
  %556 = load i32*, i32** %37, align 8
  store i32 %555, i32* %556, align 4
  %557 = load i32, i32* %19, align 4
  %558 = load i32, i32* @HSYNCSTART_SHIFT, align 4
  %559 = shl i32 %557, %558
  %560 = load i32, i32* %20, align 4
  %561 = load i32, i32* @HSYNCEND_SHIFT, align 4
  %562 = shl i32 %560, %561
  %563 = or i32 %559, %562
  %564 = load i32*, i32** %36, align 8
  store i32 %563, i32* %564, align 4
  %565 = load i32, i32* %29, align 4
  %566 = load i32, i32* @VTOTAL_SHIFT, align 4
  %567 = shl i32 %565, %566
  %568 = load i32, i32* %30, align 4
  %569 = load i32, i32* @VACTIVE_SHIFT, align 4
  %570 = shl i32 %568, %569
  %571 = or i32 %567, %570
  %572 = load i32*, i32** %35, align 8
  store i32 %571, i32* %572, align 4
  %573 = load i32, i32* %27, align 4
  %574 = load i32, i32* @VBLANKSTART_SHIFT, align 4
  %575 = shl i32 %573, %574
  %576 = load i32, i32* %28, align 4
  %577 = load i32, i32* @VSYNCEND_SHIFT, align 4
  %578 = shl i32 %576, %577
  %579 = or i32 %575, %578
  %580 = load i32*, i32** %34, align 8
  store i32 %579, i32* %580, align 4
  %581 = load i32, i32* %25, align 4
  %582 = load i32, i32* @VSYNCSTART_SHIFT, align 4
  %583 = shl i32 %581, %582
  %584 = load i32, i32* %26, align 4
  %585 = load i32, i32* @VSYNCEND_SHIFT, align 4
  %586 = shl i32 %584, %585
  %587 = or i32 %583, %586
  %588 = load i32*, i32** %33, align 8
  store i32 %587, i32* %588, align 4
  %589 = load i32, i32* %24, align 4
  %590 = load i32, i32* @SRC_SIZE_HORIZ_SHIFT, align 4
  %591 = shl i32 %589, %590
  %592 = load i32, i32* %30, align 4
  %593 = load i32, i32* @SRC_SIZE_VERT_SHIFT, align 4
  %594 = shl i32 %592, %593
  %595 = or i32 %591, %594
  %596 = load i32*, i32** %39, align 8
  store i32 %595, i32* %596, align 4
  %597 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %598 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %597, i32 0, i32 0
  %599 = load i32, i32* %598, align 4
  %600 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %601 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %600, i32 0, i32 24
  store i32 %599, i32* %601, align 4
  %602 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %603 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %602, i32 0, i32 24
  %604 = load i32, i32* %603, align 4
  %605 = call i32 (i8*, ...) @DBG_MSG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i32 %604)
  %606 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %607 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %606, i32 0, i32 24
  %608 = load i32, i32* %607, align 4
  %609 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %610 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %609, i32 0, i32 11
  %611 = load i32, i32* %610, align 4
  %612 = mul nsw i32 %608, %611
  %613 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %614 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %613, i32 0, i32 12
  %615 = load i32, i32* %614, align 4
  %616 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %617 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %616, i32 0, i32 13
  %618 = load i32, i32* %617, align 4
  %619 = mul nsw i32 %615, %618
  %620 = sdiv i32 %619, 8
  %621 = add nsw i32 %612, %620
  %622 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %623 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %622, i32 0, i32 25
  store i32 %621, i32* %623, align 4
  %624 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %625 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %624, i32 0, i32 1
  %626 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %625, i32 0, i32 0
  %627 = load i32, i32* %626, align 4
  %628 = shl i32 %627, 12
  %629 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %630 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %629, i32 0, i32 25
  %631 = load i32, i32* %630, align 4
  %632 = add nsw i32 %631, %628
  store i32 %632, i32* %630, align 4
  %633 = load %struct.intelfb_info*, %struct.intelfb_info** %5, align 8
  %634 = call i64 @IS_I9XX(%struct.intelfb_info* %633)
  %635 = icmp ne i64 %634, 0
  br i1 %635, label %636, label %638

636:                                              ; preds = %540
  %637 = load i32, i32* @STRIDE_ALIGNMENT_I9XX, align 4
  br label %640

638:                                              ; preds = %540
  %639 = load i32, i32* @STRIDE_ALIGNMENT, align 4
  br label %640

640:                                              ; preds = %638, %636
  %641 = phi i32 [ %637, %636 ], [ %639, %638 ]
  store i32 %641, i32* %41, align 4
  %642 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %643 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %642, i32 0, i32 24
  %644 = load i32, i32* %643, align 4
  %645 = load i32, i32* %41, align 4
  %646 = srem i32 %644, %645
  %647 = icmp ne i32 %646, 0
  br i1 %647, label %648, label %654

648:                                              ; preds = %640
  %649 = load %struct.intelfb_hwstate*, %struct.intelfb_hwstate** %6, align 8
  %650 = getelementptr inbounds %struct.intelfb_hwstate, %struct.intelfb_hwstate* %649, i32 0, i32 24
  %651 = load i32, i32* %650, align 4
  %652 = load i32, i32* %41, align 4
  %653 = call i32 (i8*, ...) @WRN_MSG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.22, i64 0, i64 0), i32 %651, i32 %652)
  store i32 1, i32* %4, align 4
  br label %678

654:                                              ; preds = %640
  %655 = load i32, i32* @PIPECONF_GAMMA, align 4
  %656 = xor i32 %655, -1
  %657 = load i32*, i32** %40, align 8
  %658 = load i32, i32* %657, align 4
  %659 = and i32 %658, %656
  store i32 %659, i32* %657, align 4
  %660 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %661 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %660, i32 0, i32 7
  %662 = load i32, i32* %661, align 4
  %663 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %664 = and i32 %662, %663
  %665 = icmp ne i32 %664, 0
  br i1 %665, label %666, label %671

666:                                              ; preds = %654
  %667 = load i32, i32* @PIPECONF_INTERLACE_W_FIELD_INDICATION, align 4
  %668 = load i32*, i32** %40, align 8
  %669 = load i32, i32* %668, align 4
  %670 = or i32 %669, %667
  store i32 %670, i32* %668, align 4
  br label %677

671:                                              ; preds = %654
  %672 = load i32, i32* @PIPECONF_INTERLACE_MASK, align 4
  %673 = xor i32 %672, -1
  %674 = load i32*, i32** %40, align 8
  %675 = load i32, i32* %674, align 4
  %676 = and i32 %675, %673
  store i32 %676, i32* %674, align 4
  br label %677

677:                                              ; preds = %671, %666
  store i32 0, i32* %4, align 4
  br label %678

678:                                              ; preds = %677, %648, %539, %531, %523, %515, %507, %499, %491, %483, %475, %467, %459, %451, %244, %238, %232, %226, %220, %213
  %679 = load i32, i32* %4, align 4
  ret i32 %679
}

declare dso_local i32 @intelfbhw_active_pipe(%struct.intelfb_hwstate*) #1

declare dso_local i32 @DBG_MSG(i8*, ...) #1

declare dso_local i64 @calc_pll_params(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @WRN_MSG(i8*, ...) #1

declare dso_local i64 @check_overflow(i32, i32, i8*) #1

declare dso_local i64 @IS_I9XX(%struct.intelfb_info*) #1

declare dso_local i32 @intelfb_var_to_depth(%struct.fb_var_screeninfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
