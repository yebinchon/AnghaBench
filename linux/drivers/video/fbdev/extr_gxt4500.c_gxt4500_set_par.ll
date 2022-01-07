; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_gxt4500.c_gxt4500_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_gxt4500.c_gxt4500_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.fb_var_screeninfo, %struct.gxt4500_par* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.gxt4500_par = type { i32, i32, i32, i32, i32 }

@DTG_CONTROL = common dso_local global i64 0, align 8
@DTG_CTL_ENABLE = common dso_local global i32 0, align 4
@DTG_CTL_SCREEN_REFRESH = common dso_local global i32 0, align 4
@PLL_C = common dso_local global i64 0, align 8
@PLL_M = common dso_local global i64 0, align 8
@mdivtab = common dso_local global i32* null, align 8
@PLL_N = common dso_local global i64 0, align 8
@ndivtab = common dso_local global i32* null, align 8
@PLL_POSTDIV = common dso_local global i64 0, align 8
@CURSOR_MODE = common dso_local global i64 0, align 8
@CURSOR_MODE_OFF = common dso_local global i32 0, align 4
@CTRL_REG0 = common dso_local global i64 0, align 8
@CR0_RASTER_RESET = common dso_local global i32 0, align 4
@DTG_HORIZ_EXTENT = common dso_local global i64 0, align 8
@DTG_HORIZ_DISPLAY = common dso_local global i64 0, align 8
@DTG_HSYNC_START = common dso_local global i64 0, align 8
@DTG_HSYNC_END = common dso_local global i64 0, align 8
@DTG_HSYNC_END_COMP = common dso_local global i64 0, align 8
@DTG_VERT_EXTENT = common dso_local global i64 0, align 8
@DTG_VERT_DISPLAY = common dso_local global i64 0, align 8
@DTG_VSYNC_START = common dso_local global i64 0, align 8
@DTG_VSYNC_END = common dso_local global i64 0, align 8
@DTG_VERT_SHORT = common dso_local global i64 0, align 8
@DFA_FB_STRIDE_4k = common dso_local global i32 0, align 4
@DFA_FB_STRIDE_2k = common dso_local global i32 0, align 4
@DFA_FB_STRIDE_1k = common dso_local global i32 0, align 4
@FB_AB_CTRL = common dso_local global i64 0, align 8
@FB_CTRL_TYPE = common dso_local global i32 0, align 4
@REFRESH_AB_CTRL = common dso_local global i64 0, align 8
@FB_CD_CTRL = common dso_local global i64 0, align 8
@REFRESH_CD_CTRL = common dso_local global i64 0, align 8
@REFRESH_START = common dso_local global i64 0, align 8
@REFRESH_SIZE = common dso_local global i64 0, align 8
@DFA_FB_ENABLE = common dso_local global i32 0, align 4
@DFA_FB_A = common dso_local global i64 0, align 8
@WAT_FMT = common dso_local global i64 0, align 8
@watfmt = common dso_local global i32* null, align 8
@WAT_CMAP_OFFSET = common dso_local global i64 0, align 8
@WAT_CTRL = common dso_local global i64 0, align 8
@WAT_GAMMA_CTRL = common dso_local global i64 0, align 8
@WAT_GAMMA_DISABLE = common dso_local global i32 0, align 4
@SYNC_CTL = common dso_local global i64 0, align 8
@SYNC_CTL_SYNC_ON_RGB = common dso_local global i32 0, align 4
@SYNC_CTL_HSYNC_INV = common dso_local global i32 0, align 4
@SYNC_CTL_VSYNC_INV = common dso_local global i32 0, align 4
@FB_SYNC_ON_GREEN = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@pixsize = common dso_local global i32* null, align 8
@DFA_PIX_8BIT = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_DIRECTCOLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @gxt4500_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gxt4500_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.gxt4500_par*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.gxt4500_par, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 2
  %19 = load %struct.gxt4500_par*, %struct.gxt4500_par** %18, align 8
  store %struct.gxt4500_par* %19, %struct.gxt4500_par** %4, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 1
  store %struct.fb_var_screeninfo* %21, %struct.fb_var_screeninfo** %5, align 8
  %22 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %23 = bitcast %struct.gxt4500_par* %16 to i8*
  %24 = bitcast %struct.gxt4500_par* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %23, i8* align 4 %24, i64 20, i1 false)
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %26 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %27 = call i32 @gxt4500_var_to_par(%struct.fb_var_screeninfo* %25, %struct.gxt4500_par* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %32 = bitcast %struct.gxt4500_par* %31 to i8*
  %33 = bitcast %struct.gxt4500_par* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 %33, i64 20, i1 false)
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %498

35:                                               ; preds = %1
  %36 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %37 = load i64, i64* @DTG_CONTROL, align 8
  %38 = call i32 @readreg(%struct.gxt4500_par* %36, i64 %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @DTG_CTL_ENABLE, align 4
  %40 = load i32, i32* @DTG_CTL_SCREEN_REFRESH, align 4
  %41 = or i32 %39, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %7, align 4
  %45 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %46 = load i64, i64* @DTG_CONTROL, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @writereg(%struct.gxt4500_par* %45, i64 %46, i32 %47)
  %49 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %50 = load i64, i64* @PLL_C, align 8
  %51 = call i32 @readreg(%struct.gxt4500_par* %49, i64 %50)
  %52 = and i32 %51, -128
  store i32 %52, i32* %8, align 4
  %53 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %54 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %55, 38
  br i1 %56, label %57, label %60

57:                                               ; preds = %35
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, 41
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %57, %35
  %61 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %62 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %63, 69
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %66, 53
  store i32 %67, i32* %8, align 4
  br label %80

68:                                               ; preds = %60
  %69 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %70 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %71, 100
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* %8, align 4
  %75 = or i32 %74, 118
  store i32 %75, i32* %8, align 4
  br label %79

76:                                               ; preds = %68
  %77 = load i32, i32* %8, align 4
  %78 = or i32 %77, 126
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %76, %73
  br label %80

80:                                               ; preds = %79, %65
  %81 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %82 = load i64, i64* @PLL_C, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @writereg(%struct.gxt4500_par* %81, i64 %82, i32 %83)
  %85 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %86 = load i64, i64* @PLL_M, align 8
  %87 = load i32*, i32** @mdivtab, align 8
  %88 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %89 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %90, 1
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @writereg(%struct.gxt4500_par* %85, i64 %86, i32 %94)
  %96 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %97 = load i64, i64* @PLL_N, align 8
  %98 = load i32*, i32** @ndivtab, align 8
  %99 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %100 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sub nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %98, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @writereg(%struct.gxt4500_par* %96, i64 %97, i32 %105)
  %107 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %108 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 8, %109
  %111 = shl i32 %110, 3
  %112 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %113 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 8, %114
  %116 = or i32 %111, %115
  store i32 %116, i32* %8, align 4
  %117 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %118 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 8
  br i1 %120, label %126, label %121

121:                                              ; preds = %80
  %122 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %123 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 8
  br i1 %125, label %126, label %133

126:                                              ; preds = %121, %80
  %127 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %128 = load i64, i64* @PLL_POSTDIV, align 8
  %129 = load i32, i32* %8, align 4
  %130 = or i32 %129, 9
  %131 = call i32 @writereg(%struct.gxt4500_par* %127, i64 %128, i32 %130)
  %132 = call i32 @udelay(i32 1)
  br label %133

133:                                              ; preds = %126, %121
  %134 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %135 = load i64, i64* @PLL_POSTDIV, align 8
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @writereg(%struct.gxt4500_par* %134, i64 %135, i32 %136)
  %138 = call i32 @msleep(i32 20)
  %139 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %140 = load i64, i64* @CURSOR_MODE, align 8
  %141 = load i32, i32* @CURSOR_MODE_OFF, align 4
  %142 = call i32 @writereg(%struct.gxt4500_par* %139, i64 %140, i32 %141)
  %143 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %144 = load i64, i64* @CTRL_REG0, align 8
  %145 = load i32, i32* @CR0_RASTER_RESET, align 4
  %146 = load i32, i32* @CR0_RASTER_RESET, align 4
  %147 = shl i32 %146, 16
  %148 = or i32 %145, %147
  %149 = call i32 @writereg(%struct.gxt4500_par* %143, i64 %144, i32 %148)
  %150 = call i32 @udelay(i32 10)
  %151 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %152 = load i64, i64* @CTRL_REG0, align 8
  %153 = load i32, i32* @CR0_RASTER_RESET, align 4
  %154 = shl i32 %153, 16
  %155 = call i32 @writereg(%struct.gxt4500_par* %151, i64 %152, i32 %154)
  %156 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %157 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %160 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = add i32 %158, %161
  %163 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %164 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  %166 = add i32 %162, %165
  %167 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %168 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = add i32 %166, %169
  store i32 %170, i32* %15, align 4
  %171 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %172 = load i64, i64* @DTG_HORIZ_EXTENT, align 8
  %173 = load i32, i32* %15, align 4
  %174 = sub i32 %173, 1
  %175 = call i32 @writereg(%struct.gxt4500_par* %171, i64 %172, i32 %174)
  %176 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %177 = load i64, i64* @DTG_HORIZ_DISPLAY, align 8
  %178 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %179 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = sub i32 %180, 1
  %182 = call i32 @writereg(%struct.gxt4500_par* %176, i64 %177, i32 %181)
  %183 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %184 = load i64, i64* @DTG_HSYNC_START, align 8
  %185 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %186 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %189 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 4
  %191 = add i32 %187, %190
  %192 = sub i32 %191, 1
  %193 = call i32 @writereg(%struct.gxt4500_par* %183, i64 %184, i32 %192)
  %194 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %195 = load i64, i64* @DTG_HSYNC_END, align 8
  %196 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %197 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %200 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = add i32 %198, %201
  %203 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %204 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = add i32 %202, %205
  %207 = sub i32 %206, 1
  %208 = call i32 @writereg(%struct.gxt4500_par* %194, i64 %195, i32 %207)
  %209 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %210 = load i64, i64* @DTG_HSYNC_END_COMP, align 8
  %211 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %212 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %215 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = add i32 %213, %216
  %218 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %219 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = add i32 %217, %220
  %222 = sub i32 %221, 1
  %223 = call i32 @writereg(%struct.gxt4500_par* %209, i64 %210, i32 %222)
  %224 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %225 = load i64, i64* @DTG_VERT_EXTENT, align 8
  %226 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %227 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %230 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %229, i32 0, i32 5
  %231 = load i32, i32* %230, align 4
  %232 = add nsw i32 %228, %231
  %233 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %234 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %232, %235
  %237 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %238 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %237, i32 0, i32 7
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %236, %239
  %241 = sub nsw i32 %240, 1
  %242 = call i32 @writereg(%struct.gxt4500_par* %224, i64 %225, i32 %241)
  %243 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %244 = load i64, i64* @DTG_VERT_DISPLAY, align 8
  %245 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %246 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = sub nsw i32 %247, 1
  %249 = call i32 @writereg(%struct.gxt4500_par* %243, i64 %244, i32 %248)
  %250 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %251 = load i64, i64* @DTG_VSYNC_START, align 8
  %252 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %253 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %256 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %255, i32 0, i32 6
  %257 = load i32, i32* %256, align 4
  %258 = add nsw i32 %254, %257
  %259 = sub nsw i32 %258, 1
  %260 = call i32 @writereg(%struct.gxt4500_par* %250, i64 %251, i32 %259)
  %261 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %262 = load i64, i64* @DTG_VSYNC_END, align 8
  %263 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %264 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %267 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %266, i32 0, i32 6
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %265, %268
  %270 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %271 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %270, i32 0, i32 7
  %272 = load i32, i32* %271, align 4
  %273 = add nsw i32 %269, %272
  %274 = sub nsw i32 %273, 1
  %275 = call i32 @writereg(%struct.gxt4500_par* %261, i64 %262, i32 %274)
  %276 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %277 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %276, i32 0, i32 8
  %278 = load i32, i32* %277, align 4
  %279 = sdiv i32 3300000, %278
  store i32 %279, i32* %14, align 4
  %280 = load i32, i32* %14, align 4
  %281 = load i32, i32* %15, align 4
  %282 = icmp uge i32 %280, %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %133
  %284 = load i32, i32* %15, align 4
  %285 = sub i32 %284, 1
  store i32 %285, i32* %14, align 4
  br label %286

286:                                              ; preds = %283, %133
  %287 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %288 = load i64, i64* @DTG_VERT_SHORT, align 8
  %289 = load i32, i32* %15, align 4
  %290 = load i32, i32* %14, align 4
  %291 = sub i32 %289, %290
  %292 = sub i32 %291, 1
  %293 = call i32 @writereg(%struct.gxt4500_par* %287, i64 %288, i32 %292)
  %294 = load i32, i32* @DTG_CTL_ENABLE, align 4
  %295 = load i32, i32* @DTG_CTL_SCREEN_REFRESH, align 4
  %296 = or i32 %294, %295
  %297 = load i32, i32* %7, align 4
  %298 = or i32 %297, %296
  store i32 %298, i32* %7, align 4
  %299 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %300 = load i64, i64* @DTG_CONTROL, align 8
  %301 = load i32, i32* %7, align 4
  %302 = call i32 @writereg(%struct.gxt4500_par* %299, i64 %300, i32 %301)
  %303 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %304 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %303, i32 0, i32 9
  %305 = load i32, i32* %304, align 4
  %306 = icmp sgt i32 %305, 2048
  br i1 %306, label %307, label %309

307:                                              ; preds = %286
  store i32 4096, i32* %11, align 4
  %308 = load i32, i32* @DFA_FB_STRIDE_4k, align 4
  store i32 %308, i32* %9, align 4
  br label %319

309:                                              ; preds = %286
  %310 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %311 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %310, i32 0, i32 9
  %312 = load i32, i32* %311, align 4
  %313 = icmp sgt i32 %312, 1024
  br i1 %313, label %314, label %316

314:                                              ; preds = %309
  store i32 2048, i32* %11, align 4
  %315 = load i32, i32* @DFA_FB_STRIDE_2k, align 4
  store i32 %315, i32* %9, align 4
  br label %318

316:                                              ; preds = %309
  store i32 1024, i32* %11, align 4
  %317 = load i32, i32* @DFA_FB_STRIDE_1k, align 4
  store i32 %317, i32* %9, align 4
  br label %318

318:                                              ; preds = %316, %314
  br label %319

319:                                              ; preds = %318, %307
  %320 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %321 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %320, i32 0, i32 9
  %322 = load i32, i32* %321, align 4
  %323 = add nsw i32 %322, 63
  %324 = ashr i32 %323, 6
  store i32 %324, i32* %12, align 4
  %325 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %326 = load i64, i64* @FB_AB_CTRL, align 8
  %327 = load i32, i32* @FB_CTRL_TYPE, align 4
  %328 = load i32, i32* %12, align 4
  %329 = shl i32 %328, 16
  %330 = or i32 %327, %329
  %331 = call i32 @writereg(%struct.gxt4500_par* %325, i64 %326, i32 %330)
  %332 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %333 = load i64, i64* @REFRESH_AB_CTRL, align 8
  %334 = load i32, i32* @FB_CTRL_TYPE, align 4
  %335 = load i32, i32* %12, align 4
  %336 = shl i32 %335, 16
  %337 = or i32 %334, %336
  %338 = call i32 @writereg(%struct.gxt4500_par* %332, i64 %333, i32 %337)
  %339 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %340 = load i64, i64* @FB_CD_CTRL, align 8
  %341 = load i32, i32* @FB_CTRL_TYPE, align 4
  %342 = load i32, i32* %12, align 4
  %343 = shl i32 %342, 16
  %344 = or i32 %341, %343
  %345 = call i32 @writereg(%struct.gxt4500_par* %339, i64 %340, i32 %344)
  %346 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %347 = load i64, i64* @REFRESH_CD_CTRL, align 8
  %348 = load i32, i32* @FB_CTRL_TYPE, align 4
  %349 = load i32, i32* %12, align 4
  %350 = shl i32 %349, 16
  %351 = or i32 %348, %350
  %352 = call i32 @writereg(%struct.gxt4500_par* %346, i64 %347, i32 %351)
  %353 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %354 = load i64, i64* @REFRESH_START, align 8
  %355 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %356 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %355, i32 0, i32 10
  %357 = load i32, i32* %356, align 4
  %358 = shl i32 %357, 16
  %359 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %360 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %359, i32 0, i32 11
  %361 = load i32, i32* %360, align 4
  %362 = or i32 %358, %361
  %363 = call i32 @writereg(%struct.gxt4500_par* %353, i64 %354, i32 %362)
  %364 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %365 = load i64, i64* @REFRESH_SIZE, align 8
  %366 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %367 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %366, i32 0, i32 0
  %368 = load i32, i32* %367, align 4
  %369 = shl i32 %368, 16
  %370 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %371 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %370, i32 0, i32 4
  %372 = load i32, i32* %371, align 4
  %373 = or i32 %369, %372
  %374 = call i32 @writereg(%struct.gxt4500_par* %364, i64 %365, i32 %373)
  %375 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %376 = getelementptr inbounds %struct.gxt4500_par, %struct.gxt4500_par* %375, i32 0, i32 4
  %377 = load i32, i32* %376, align 4
  store i32 %377, i32* %10, align 4
  %378 = load i32, i32* @DFA_FB_ENABLE, align 4
  %379 = load i32, i32* %10, align 4
  %380 = or i32 %378, %379
  %381 = load i32, i32* %9, align 4
  %382 = or i32 %381, %380
  store i32 %382, i32* %9, align 4
  %383 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %384 = load i64, i64* @DFA_FB_A, align 8
  %385 = load i32, i32* %9, align 4
  %386 = call i32 @writereg(%struct.gxt4500_par* %383, i64 %384, i32 %385)
  store i32 0, i32* %13, align 4
  br label %387

387:                                              ; preds = %425, %319
  %388 = load i32, i32* %13, align 4
  %389 = icmp ult i32 %388, 32
  br i1 %389, label %390, label %428

390:                                              ; preds = %387
  %391 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %392 = load i64, i64* @WAT_FMT, align 8
  %393 = load i32, i32* %13, align 4
  %394 = shl i32 %393, 4
  %395 = zext i32 %394 to i64
  %396 = add nsw i64 %392, %395
  %397 = load i32*, i32** @watfmt, align 8
  %398 = load i32, i32* %10, align 4
  %399 = zext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = call i32 @writereg(%struct.gxt4500_par* %391, i64 %396, i32 %401)
  %403 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %404 = load i64, i64* @WAT_CMAP_OFFSET, align 8
  %405 = load i32, i32* %13, align 4
  %406 = shl i32 %405, 4
  %407 = zext i32 %406 to i64
  %408 = add nsw i64 %404, %407
  %409 = call i32 @writereg(%struct.gxt4500_par* %403, i64 %408, i32 0)
  %410 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %411 = load i64, i64* @WAT_CTRL, align 8
  %412 = load i32, i32* %13, align 4
  %413 = shl i32 %412, 4
  %414 = zext i32 %413 to i64
  %415 = add nsw i64 %411, %414
  %416 = call i32 @writereg(%struct.gxt4500_par* %410, i64 %415, i32 0)
  %417 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %418 = load i64, i64* @WAT_GAMMA_CTRL, align 8
  %419 = load i32, i32* %13, align 4
  %420 = shl i32 %419, 4
  %421 = zext i32 %420 to i64
  %422 = add nsw i64 %418, %421
  %423 = load i32, i32* @WAT_GAMMA_DISABLE, align 4
  %424 = call i32 @writereg(%struct.gxt4500_par* %417, i64 %422, i32 %423)
  br label %425

425:                                              ; preds = %390
  %426 = load i32, i32* %13, align 4
  %427 = add i32 %426, 1
  store i32 %427, i32* %13, align 4
  br label %387

428:                                              ; preds = %387
  %429 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %430 = load i64, i64* @SYNC_CTL, align 8
  %431 = call i32 @readreg(%struct.gxt4500_par* %429, i64 %430)
  %432 = load i32, i32* @SYNC_CTL_SYNC_ON_RGB, align 4
  %433 = load i32, i32* @SYNC_CTL_HSYNC_INV, align 4
  %434 = or i32 %432, %433
  %435 = load i32, i32* @SYNC_CTL_VSYNC_INV, align 4
  %436 = or i32 %434, %435
  %437 = xor i32 %436, -1
  %438 = and i32 %431, %437
  store i32 %438, i32* %7, align 4
  %439 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %440 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %439, i32 0, i32 12
  %441 = load i32, i32* %440, align 4
  %442 = load i32, i32* @FB_SYNC_ON_GREEN, align 4
  %443 = and i32 %441, %442
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %449

445:                                              ; preds = %428
  %446 = load i32, i32* @SYNC_CTL_SYNC_ON_RGB, align 4
  %447 = load i32, i32* %7, align 4
  %448 = or i32 %447, %446
  store i32 %448, i32* %7, align 4
  br label %449

449:                                              ; preds = %445, %428
  %450 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %451 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %450, i32 0, i32 12
  %452 = load i32, i32* %451, align 4
  %453 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %454 = and i32 %452, %453
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %460, label %456

456:                                              ; preds = %449
  %457 = load i32, i32* @SYNC_CTL_HSYNC_INV, align 4
  %458 = load i32, i32* %7, align 4
  %459 = or i32 %458, %457
  store i32 %459, i32* %7, align 4
  br label %460

460:                                              ; preds = %456, %449
  %461 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %462 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %461, i32 0, i32 12
  %463 = load i32, i32* %462, align 4
  %464 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %465 = and i32 %463, %464
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %471, label %467

467:                                              ; preds = %460
  %468 = load i32, i32* @SYNC_CTL_VSYNC_INV, align 4
  %469 = load i32, i32* %7, align 4
  %470 = or i32 %469, %468
  store i32 %470, i32* %7, align 4
  br label %471

471:                                              ; preds = %467, %460
  %472 = load %struct.gxt4500_par*, %struct.gxt4500_par** %4, align 8
  %473 = load i64, i64* @SYNC_CTL, align 8
  %474 = load i32, i32* %7, align 4
  %475 = call i32 @writereg(%struct.gxt4500_par* %472, i64 %473, i32 %474)
  %476 = load i32, i32* %11, align 4
  %477 = load i32*, i32** @pixsize, align 8
  %478 = load i32, i32* %10, align 4
  %479 = zext i32 %478 to i64
  %480 = getelementptr inbounds i32, i32* %477, i64 %479
  %481 = load i32, i32* %480, align 4
  %482 = mul i32 %476, %481
  %483 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %484 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %484, i32 0, i32 0
  store i32 %482, i32* %485, align 8
  %486 = load i32, i32* %10, align 4
  %487 = load i32, i32* @DFA_PIX_8BIT, align 4
  %488 = icmp eq i32 %486, %487
  br i1 %488, label %489, label %491

489:                                              ; preds = %471
  %490 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  br label %493

491:                                              ; preds = %471
  %492 = load i32, i32* @FB_VISUAL_DIRECTCOLOR, align 4
  br label %493

493:                                              ; preds = %491, %489
  %494 = phi i32 [ %490, %489 ], [ %492, %491 ]
  %495 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %496 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %495, i32 0, i32 0
  %497 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %496, i32 0, i32 1
  store i32 %494, i32* %497, align 4
  store i32 0, i32* %2, align 4
  br label %498

498:                                              ; preds = %493, %30
  %499 = load i32, i32* %2, align 4
  ret i32 %499
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gxt4500_var_to_par(%struct.fb_var_screeninfo*, %struct.gxt4500_par*) #2

declare dso_local i32 @readreg(%struct.gxt4500_par*, i64) #2

declare dso_local i32 @writereg(%struct.gxt4500_par*, i64, i32) #2

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @msleep(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
