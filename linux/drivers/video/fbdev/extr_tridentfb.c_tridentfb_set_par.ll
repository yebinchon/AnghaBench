; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_tridentfb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_tridentfb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, %struct.fb_var_screeninfo, %struct.tridentfb_par* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.tridentfb_par = type { i64, i32 (%struct.tridentfb_par*, i32, i32)*, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@CyberControl = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@nativex = common dso_local global i32 0, align 4
@VGA_MIS_W = common dso_local global i32 0, align 4
@center = common dso_local global i64 0, align 8
@stretch = common dso_local global i64 0, align 8
@VGA_CRTC_V_TOTAL = common dso_local global i32 0, align 4
@VGA_CRTC_V_DISP_END = common dso_local global i32 0, align 4
@VGA_CRTC_V_SYNC_START = common dso_local global i32 0, align 4
@VGA_CRTC_V_SYNC_END = common dso_local global i32 0, align 4
@VGA_CRTC_V_BLANK_START = common dso_local global i32 0, align 4
@VGA_CRTC_V_BLANK_END = common dso_local global i32 0, align 4
@VGA_CRTC_H_TOTAL = common dso_local global i32 0, align 4
@VGA_CRTC_H_DISP = common dso_local global i32 0, align 4
@VGA_CRTC_H_SYNC_START = common dso_local global i32 0, align 4
@VGA_CRTC_H_SYNC_END = common dso_local global i32 0, align 4
@VGA_CRTC_H_BLANK_START = common dso_local global i32 0, align 4
@VGA_CRTC_H_BLANK_END = common dso_local global i32 0, align 4
@VGA_CRTC_OVERFLOW = common dso_local global i32 0, align 4
@CRTHiOrd = common dso_local global i32 0, align 4
@HorizOverflow = common dso_local global i32 0, align 4
@VGA_CRTC_MAX_SCAN = common dso_local global i32 0, align 4
@VGA_CRTC_LINE_COMPARE = common dso_local global i32 0, align 4
@VGA_CRTC_PRESET_ROW = common dso_local global i32 0, align 4
@VGA_CRTC_MODE = common dso_local global i32 0, align 4
@LinearAddReg = common dso_local global i32 0, align 4
@CRTCModuleTest = common dso_local global i32 0, align 4
@MiscIntContReg = common dso_local global i32 0, align 4
@GraphEngReg = common dso_local global i32 0, align 4
@PixelBusReg = common dso_local global i32 0, align 4
@DRAMControl = common dso_local global i32 0, align 4
@InterfaceSel = common dso_local global i32 0, align 4
@Performance = common dso_local global i32 0, align 4
@TGUI9440 = common dso_local global i64 0, align 8
@IMAGE975 = common dso_local global i64 0, align 8
@PCIReg = common dso_local global i32 0, align 4
@MiscExtFunc = common dso_local global i32 0, align 4
@VGA_IS1_RC = common dso_local global i64 0, align 8
@VGA_ATT_W = common dso_local global i32 0, align 4
@VGA_PEL_IW = common dso_local global i32 0, align 4
@VGA_PEL_MSK = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @tridentfb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tridentfb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.tridentfb_par*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
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
  %16 = alloca %struct.fb_var_screeninfo*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8, align 1
  %19 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 4
  %22 = load %struct.tridentfb_par*, %struct.tridentfb_par** %21, align 8
  store %struct.tridentfb_par* %22, %struct.tridentfb_par** %3, align 8
  %23 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %24 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %23, i32 0, i32 3
  store %struct.fb_var_screeninfo* %24, %struct.fb_var_screeninfo** %16, align 8
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %17, align 4
  %28 = call i32 @debug(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 8
  %33 = sub nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  %34 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %35 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %38 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %36, %39
  %41 = sdiv i32 %40, 8
  store i32 %41, i32* %6, align 4
  %42 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %43 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %44, %47
  %49 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %50 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %48, %51
  %53 = sdiv i32 %52, 8
  store i32 %53, i32* %7, align 4
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %62 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %60, %63
  %65 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %64, %67
  %69 = sdiv i32 %68, 8
  %70 = sub nsw i32 %69, 5
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 3
  store i32 %74, i32* %9, align 4
  %75 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %76 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %11, align 4
  %79 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %80 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %83 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %81, %84
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %88 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %87, i32 0, i32 7
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %86, %89
  store i32 %90, i32* %13, align 4
  %91 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %92 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %13, align 4
  %95 = add nsw i32 %93, %94
  %96 = sub nsw i32 %95, 2
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  %99 = load i32, i32* %10, align 4
  store i32 %99, i32* %15, align 4
  %100 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %101 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %101, i32 0, i32 9
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %120

107:                                              ; preds = %1
  %108 = load i32, i32* %10, align 4
  %109 = sdiv i32 %108, 2
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %11, align 4
  %111 = sdiv i32 %110, 2
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %12, align 4
  %113 = sdiv i32 %112, 2
  store i32 %113, i32* %12, align 4
  %114 = load i32, i32* %13, align 4
  %115 = sdiv i32 %114, 2
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %14, align 4
  %117 = sdiv i32 %116, 2
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* %15, align 4
  %119 = sdiv i32 %118, 2
  store i32 %119, i32* %15, align 4
  br label %120

120:                                              ; preds = %107, %1
  %121 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %122 = call i32 @enable_mmio(%struct.tridentfb_par* %121)
  %123 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %124 = call i32 @crtc_unlock(%struct.tridentfb_par* %123)
  %125 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %126 = load i32, i32* @CyberControl, align 4
  %127 = call i32 @write3CE(%struct.tridentfb_par* %125, i32 %126, i32 8)
  store i8 -21, i8* %18, align 1
  %128 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %129 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %128, i32 0, i32 10
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %120
  %135 = load i8, i8* %18, align 1
  %136 = zext i8 %135 to i32
  %137 = and i32 %136, -65
  %138 = trunc i32 %137 to i8
  store i8 %138, i8* %18, align 1
  br label %139

139:                                              ; preds = %134, %120
  %140 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %141 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %140, i32 0, i32 10
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %139
  %147 = load i8, i8* %18, align 1
  %148 = zext i8 %147 to i32
  %149 = and i32 %148, -129
  %150 = trunc i32 %149 to i8
  store i8 %150, i8* %18, align 1
  br label %151

151:                                              ; preds = %146, %139
  %152 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %153 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %185

156:                                              ; preds = %151
  %157 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %16, align 8
  %158 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @nativex, align 4
  %161 = icmp slt i32 %159, %160
  br i1 %161, label %162, label %185

162:                                              ; preds = %156
  %163 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %164 = load i8, i8* %18, align 1
  %165 = zext i8 %164 to i32
  %166 = or i32 %165, 192
  %167 = trunc i32 %166 to i8
  %168 = load i32, i32* @VGA_MIS_W, align 4
  %169 = call i32 @t_outb(%struct.tridentfb_par* %163, i8 zeroext %167, i32 %168)
  %170 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %171 = call i32 @shadowmode_on(%struct.tridentfb_par* %170)
  %172 = load i64, i64* @center, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %162
  %175 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %176 = call i32 @screen_center(%struct.tridentfb_par* %175)
  br label %184

177:                                              ; preds = %162
  %178 = load i64, i64* @stretch, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %177
  %181 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %182 = call i32 @screen_stretch(%struct.tridentfb_par* %181)
  br label %183

183:                                              ; preds = %180, %177
  br label %184

184:                                              ; preds = %183, %174
  br label %193

185:                                              ; preds = %156, %151
  %186 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %187 = load i8, i8* %18, align 1
  %188 = load i32, i32* @VGA_MIS_W, align 4
  %189 = call i32 @t_outb(%struct.tridentfb_par* %186, i8 zeroext %187, i32 %188)
  %190 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %191 = load i32, i32* @CyberControl, align 4
  %192 = call i32 @write3CE(%struct.tridentfb_par* %190, i32 %191, i32 8)
  br label %193

193:                                              ; preds = %185, %184
  %194 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %195 = load i32, i32* @VGA_CRTC_V_TOTAL, align 4
  %196 = load i32, i32* %10, align 4
  %197 = and i32 %196, 255
  %198 = call i32 @write3X4(%struct.tridentfb_par* %194, i32 %195, i32 %197)
  %199 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %200 = load i32, i32* @VGA_CRTC_V_DISP_END, align 4
  %201 = load i32, i32* %11, align 4
  %202 = and i32 %201, 255
  %203 = call i32 @write3X4(%struct.tridentfb_par* %199, i32 %200, i32 %202)
  %204 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %205 = load i32, i32* @VGA_CRTC_V_SYNC_START, align 4
  %206 = load i32, i32* %12, align 4
  %207 = and i32 %206, 255
  %208 = call i32 @write3X4(%struct.tridentfb_par* %204, i32 %205, i32 %207)
  %209 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %210 = load i32, i32* @VGA_CRTC_V_SYNC_END, align 4
  %211 = load i32, i32* %13, align 4
  %212 = and i32 %211, 15
  %213 = call i32 @write3X4(%struct.tridentfb_par* %209, i32 %210, i32 %212)
  %214 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %215 = load i32, i32* @VGA_CRTC_V_BLANK_START, align 4
  %216 = load i32, i32* %14, align 4
  %217 = and i32 %216, 255
  %218 = call i32 @write3X4(%struct.tridentfb_par* %214, i32 %215, i32 %217)
  %219 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %220 = load i32, i32* @VGA_CRTC_V_BLANK_END, align 4
  %221 = load i32, i32* %15, align 4
  %222 = and i32 %221, 255
  %223 = call i32 @write3X4(%struct.tridentfb_par* %219, i32 %220, i32 %222)
  %224 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %225 = load i32, i32* @VGA_CRTC_H_TOTAL, align 4
  %226 = load i32, i32* %4, align 4
  %227 = and i32 %226, 255
  %228 = call i32 @write3X4(%struct.tridentfb_par* %224, i32 %225, i32 %227)
  %229 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %230 = load i32, i32* @VGA_CRTC_H_DISP, align 4
  %231 = load i32, i32* %5, align 4
  %232 = and i32 %231, 255
  %233 = call i32 @write3X4(%struct.tridentfb_par* %229, i32 %230, i32 %232)
  %234 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %235 = load i32, i32* @VGA_CRTC_H_SYNC_START, align 4
  %236 = load i32, i32* %6, align 4
  %237 = and i32 %236, 255
  %238 = call i32 @write3X4(%struct.tridentfb_par* %234, i32 %235, i32 %237)
  %239 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %240 = load i32, i32* @VGA_CRTC_H_SYNC_END, align 4
  %241 = load i32, i32* %7, align 4
  %242 = and i32 %241, 31
  %243 = load i32, i32* %9, align 4
  %244 = and i32 %243, 32
  %245 = shl i32 %244, 2
  %246 = or i32 %242, %245
  %247 = call i32 @write3X4(%struct.tridentfb_par* %239, i32 %240, i32 %246)
  %248 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %249 = load i32, i32* @VGA_CRTC_H_BLANK_START, align 4
  %250 = load i32, i32* %8, align 4
  %251 = and i32 %250, 255
  %252 = call i32 @write3X4(%struct.tridentfb_par* %248, i32 %249, i32 %251)
  %253 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %254 = load i32, i32* @VGA_CRTC_H_BLANK_END, align 4
  %255 = load i32, i32* %9, align 4
  %256 = and i32 %255, 31
  %257 = call i32 @write3X4(%struct.tridentfb_par* %253, i32 %254, i32 %256)
  store i8 16, i8* %18, align 1
  %258 = load i32, i32* %10, align 4
  %259 = and i32 %258, 256
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %266

261:                                              ; preds = %193
  %262 = load i8, i8* %18, align 1
  %263 = zext i8 %262 to i32
  %264 = or i32 %263, 1
  %265 = trunc i32 %264 to i8
  store i8 %265, i8* %18, align 1
  br label %266

266:                                              ; preds = %261, %193
  %267 = load i32, i32* %11, align 4
  %268 = and i32 %267, 256
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %266
  %271 = load i8, i8* %18, align 1
  %272 = zext i8 %271 to i32
  %273 = or i32 %272, 2
  %274 = trunc i32 %273 to i8
  store i8 %274, i8* %18, align 1
  br label %275

275:                                              ; preds = %270, %266
  %276 = load i32, i32* %12, align 4
  %277 = and i32 %276, 256
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %275
  %280 = load i8, i8* %18, align 1
  %281 = zext i8 %280 to i32
  %282 = or i32 %281, 4
  %283 = trunc i32 %282 to i8
  store i8 %283, i8* %18, align 1
  br label %284

284:                                              ; preds = %279, %275
  %285 = load i32, i32* %14, align 4
  %286 = and i32 %285, 256
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %284
  %289 = load i8, i8* %18, align 1
  %290 = zext i8 %289 to i32
  %291 = or i32 %290, 8
  %292 = trunc i32 %291 to i8
  store i8 %292, i8* %18, align 1
  br label %293

293:                                              ; preds = %288, %284
  %294 = load i32, i32* %10, align 4
  %295 = and i32 %294, 512
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %293
  %298 = load i8, i8* %18, align 1
  %299 = zext i8 %298 to i32
  %300 = or i32 %299, 32
  %301 = trunc i32 %300 to i8
  store i8 %301, i8* %18, align 1
  br label %302

302:                                              ; preds = %297, %293
  %303 = load i32, i32* %11, align 4
  %304 = and i32 %303, 512
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %311

306:                                              ; preds = %302
  %307 = load i8, i8* %18, align 1
  %308 = zext i8 %307 to i32
  %309 = or i32 %308, 64
  %310 = trunc i32 %309 to i8
  store i8 %310, i8* %18, align 1
  br label %311

311:                                              ; preds = %306, %302
  %312 = load i32, i32* %12, align 4
  %313 = and i32 %312, 512
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %320

315:                                              ; preds = %311
  %316 = load i8, i8* %18, align 1
  %317 = zext i8 %316 to i32
  %318 = or i32 %317, 128
  %319 = trunc i32 %318 to i8
  store i8 %319, i8* %18, align 1
  br label %320

320:                                              ; preds = %315, %311
  %321 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %322 = load i32, i32* @VGA_CRTC_OVERFLOW, align 4
  %323 = load i8, i8* %18, align 1
  %324 = zext i8 %323 to i32
  %325 = call i32 @write3X4(%struct.tridentfb_par* %321, i32 %322, i32 %324)
  %326 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %327 = load i32, i32* @CRTHiOrd, align 4
  %328 = call i32 @read3X4(%struct.tridentfb_par* %326, i32 %327)
  %329 = and i32 %328, 7
  %330 = trunc i32 %329 to i8
  store i8 %330, i8* %18, align 1
  %331 = load i8, i8* %18, align 1
  %332 = zext i8 %331 to i32
  %333 = or i32 %332, 8
  %334 = trunc i32 %333 to i8
  store i8 %334, i8* %18, align 1
  %335 = load i32, i32* %10, align 4
  %336 = and i32 %335, 1024
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %320
  %339 = load i8, i8* %18, align 1
  %340 = zext i8 %339 to i32
  %341 = or i32 %340, 128
  %342 = trunc i32 %341 to i8
  store i8 %342, i8* %18, align 1
  br label %343

343:                                              ; preds = %338, %320
  %344 = load i32, i32* %14, align 4
  %345 = and i32 %344, 1024
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %352

347:                                              ; preds = %343
  %348 = load i8, i8* %18, align 1
  %349 = zext i8 %348 to i32
  %350 = or i32 %349, 64
  %351 = trunc i32 %350 to i8
  store i8 %351, i8* %18, align 1
  br label %352

352:                                              ; preds = %347, %343
  %353 = load i32, i32* %12, align 4
  %354 = and i32 %353, 1024
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %352
  %357 = load i8, i8* %18, align 1
  %358 = zext i8 %357 to i32
  %359 = or i32 %358, 32
  %360 = trunc i32 %359 to i8
  store i8 %360, i8* %18, align 1
  br label %361

361:                                              ; preds = %356, %352
  %362 = load i32, i32* %11, align 4
  %363 = and i32 %362, 1024
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %370

365:                                              ; preds = %361
  %366 = load i8, i8* %18, align 1
  %367 = zext i8 %366 to i32
  %368 = or i32 %367, 16
  %369 = trunc i32 %368 to i8
  store i8 %369, i8* %18, align 1
  br label %370

370:                                              ; preds = %365, %361
  %371 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %372 = load i32, i32* @CRTHiOrd, align 4
  %373 = load i8, i8* %18, align 1
  %374 = zext i8 %373 to i32
  %375 = call i32 @write3X4(%struct.tridentfb_par* %371, i32 %372, i32 %374)
  %376 = load i32, i32* %4, align 4
  %377 = ashr i32 %376, 8
  %378 = and i32 %377, 1
  %379 = trunc i32 %378 to i8
  store i8 %379, i8* %18, align 1
  %380 = load i32, i32* %5, align 4
  %381 = ashr i32 %380, 7
  %382 = and i32 %381, 2
  %383 = load i8, i8* %18, align 1
  %384 = zext i8 %383 to i32
  %385 = or i32 %384, %382
  %386 = trunc i32 %385 to i8
  store i8 %386, i8* %18, align 1
  %387 = load i32, i32* %6, align 4
  %388 = ashr i32 %387, 5
  %389 = and i32 %388, 8
  %390 = load i8, i8* %18, align 1
  %391 = zext i8 %390 to i32
  %392 = or i32 %391, %389
  %393 = trunc i32 %392 to i8
  store i8 %393, i8* %18, align 1
  %394 = load i32, i32* %8, align 4
  %395 = ashr i32 %394, 4
  %396 = and i32 %395, 16
  %397 = load i8, i8* %18, align 1
  %398 = zext i8 %397 to i32
  %399 = or i32 %398, %396
  %400 = trunc i32 %399 to i8
  store i8 %400, i8* %18, align 1
  %401 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %402 = load i32, i32* @HorizOverflow, align 4
  %403 = load i8, i8* %18, align 1
  %404 = zext i8 %403 to i32
  %405 = call i32 @write3X4(%struct.tridentfb_par* %401, i32 %402, i32 %404)
  store i8 64, i8* %18, align 1
  %406 = load i32, i32* %14, align 4
  %407 = and i32 %406, 512
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %414

409:                                              ; preds = %370
  %410 = load i8, i8* %18, align 1
  %411 = zext i8 %410 to i32
  %412 = or i32 %411, 32
  %413 = trunc i32 %412 to i8
  store i8 %413, i8* %18, align 1
  br label %414

414:                                              ; preds = %409, %370
  %415 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %416 = load i32, i32* @VGA_CRTC_MAX_SCAN, align 4
  %417 = load i8, i8* %18, align 1
  %418 = zext i8 %417 to i32
  %419 = call i32 @write3X4(%struct.tridentfb_par* %415, i32 %416, i32 %418)
  %420 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %421 = load i32, i32* @VGA_CRTC_LINE_COMPARE, align 4
  %422 = call i32 @write3X4(%struct.tridentfb_par* %420, i32 %421, i32 255)
  %423 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %424 = load i32, i32* @VGA_CRTC_PRESET_ROW, align 4
  %425 = call i32 @write3X4(%struct.tridentfb_par* %423, i32 %424, i32 0)
  %426 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %427 = load i32, i32* @VGA_CRTC_MODE, align 4
  %428 = call i32 @write3X4(%struct.tridentfb_par* %426, i32 %427, i32 195)
  %429 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %430 = load i32, i32* @LinearAddReg, align 4
  %431 = call i32 @write3X4(%struct.tridentfb_par* %429, i32 %430, i32 32)
  %432 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %433 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %432, i32 0, i32 3
  %434 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %433, i32 0, i32 9
  %435 = load i32, i32* %434, align 4
  %436 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %437 = and i32 %435, %436
  %438 = icmp ne i32 %437, 0
  %439 = zext i1 %438 to i64
  %440 = select i1 %438, i32 132, i32 128
  %441 = trunc i32 %440 to i8
  store i8 %441, i8* %18, align 1
  %442 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %443 = load i32, i32* @CRTCModuleTest, align 4
  %444 = load i8, i8* %18, align 1
  %445 = zext i8 %444 to i32
  %446 = call i32 @write3X4(%struct.tridentfb_par* %442, i32 %443, i32 %445)
  %447 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %448 = load i32, i32* @MiscIntContReg, align 4
  %449 = call i32 @read3CE(%struct.tridentfb_par* %447, i32 %448)
  %450 = and i32 %449, -5
  %451 = trunc i32 %450 to i8
  store i8 %451, i8* %18, align 1
  %452 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %453 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %452, i32 0, i32 3
  %454 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %453, i32 0, i32 9
  %455 = load i32, i32* %454, align 4
  %456 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %457 = and i32 %455, %456
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %464

459:                                              ; preds = %414
  %460 = load i8, i8* %18, align 1
  %461 = zext i8 %460 to i32
  %462 = or i32 %461, 4
  %463 = trunc i32 %462 to i8
  store i8 %463, i8* %18, align 1
  br label %464

464:                                              ; preds = %459, %414
  %465 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %466 = load i32, i32* @MiscIntContReg, align 4
  %467 = load i8, i8* %18, align 1
  %468 = zext i8 %467 to i32
  %469 = call i32 @write3CE(%struct.tridentfb_par* %465, i32 %466, i32 %468)
  %470 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %471 = load i32, i32* @GraphEngReg, align 4
  %472 = call i32 @write3X4(%struct.tridentfb_par* %470, i32 %471, i32 128)
  %473 = load i32, i32* %17, align 4
  switch i32 %473, label %478 [
    i32 8, label %474
    i32 16, label %475
    i32 24, label %476
    i32 32, label %477
  ]

474:                                              ; preds = %464
  store i8 0, i8* %18, align 1
  br label %478

475:                                              ; preds = %464
  store i8 5, i8* %18, align 1
  br label %478

476:                                              ; preds = %464
  store i8 41, i8* %18, align 1
  br label %478

477:                                              ; preds = %464
  store i8 9, i8* %18, align 1
  br label %478

478:                                              ; preds = %464, %477, %476, %475, %474
  %479 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %480 = load i32, i32* @PixelBusReg, align 4
  %481 = load i8, i8* %18, align 1
  %482 = zext i8 %481 to i32
  %483 = call i32 @write3X4(%struct.tridentfb_par* %479, i32 %480, i32 %482)
  %484 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %485 = load i32, i32* @DRAMControl, align 4
  %486 = call i32 @read3X4(%struct.tridentfb_par* %484, i32 %485)
  %487 = trunc i32 %486 to i8
  store i8 %487, i8* %18, align 1
  %488 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %489 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %488, i32 0, i32 0
  %490 = load i64, i64* %489, align 8
  %491 = call i32 @is_oldprotect(i64 %490)
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %498, label %493

493:                                              ; preds = %478
  %494 = load i8, i8* %18, align 1
  %495 = zext i8 %494 to i32
  %496 = or i32 %495, 16
  %497 = trunc i32 %496 to i8
  store i8 %497, i8* %18, align 1
  br label %498

498:                                              ; preds = %493, %478
  %499 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %500 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %499, i32 0, i32 0
  %501 = load i64, i64* %500, align 8
  %502 = call i64 @iscyber(i64 %501)
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %509

504:                                              ; preds = %498
  %505 = load i8, i8* %18, align 1
  %506 = zext i8 %505 to i32
  %507 = or i32 %506, 32
  %508 = trunc i32 %507 to i8
  store i8 %508, i8* %18, align 1
  br label %509

509:                                              ; preds = %504, %498
  %510 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %511 = load i32, i32* @DRAMControl, align 4
  %512 = load i8, i8* %18, align 1
  %513 = zext i8 %512 to i32
  %514 = call i32 @write3X4(%struct.tridentfb_par* %510, i32 %511, i32 %513)
  %515 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %516 = load i32, i32* @InterfaceSel, align 4
  %517 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %518 = load i32, i32* @InterfaceSel, align 4
  %519 = call i32 @read3X4(%struct.tridentfb_par* %517, i32 %518)
  %520 = or i32 %519, 64
  %521 = call i32 @write3X4(%struct.tridentfb_par* %515, i32 %516, i32 %520)
  %522 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %523 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %522, i32 0, i32 0
  %524 = load i64, i64* %523, align 8
  %525 = call i32 @is_xp(i64 %524)
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %535, label %527

527:                                              ; preds = %509
  %528 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %529 = load i32, i32* @Performance, align 4
  %530 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %531 = load i32, i32* @Performance, align 4
  %532 = call i32 @read3X4(%struct.tridentfb_par* %530, i32 %531)
  %533 = or i32 %532, 16
  %534 = call i32 @write3X4(%struct.tridentfb_par* %528, i32 %529, i32 %533)
  br label %535

535:                                              ; preds = %527, %509
  %536 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %537 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %536, i32 0, i32 0
  %538 = load i64, i64* %537, align 8
  %539 = load i64, i64* @TGUI9440, align 8
  %540 = icmp ne i64 %538, %539
  br i1 %540, label %541, label %555

541:                                              ; preds = %535
  %542 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %543 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %542, i32 0, i32 0
  %544 = load i64, i64* %543, align 8
  %545 = load i64, i64* @IMAGE975, align 8
  %546 = icmp ne i64 %544, %545
  br i1 %546, label %547, label %555

547:                                              ; preds = %541
  %548 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %549 = load i32, i32* @PCIReg, align 4
  %550 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %551 = load i32, i32* @PCIReg, align 4
  %552 = call i32 @read3X4(%struct.tridentfb_par* %550, i32 %551)
  %553 = or i32 %552, 6
  %554 = call i32 @write3X4(%struct.tridentfb_par* %548, i32 %549, i32 %553)
  br label %555

555:                                              ; preds = %547, %541, %535
  %556 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %557 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %556, i32 0, i32 3
  %558 = load i64, i64* %557, align 8
  %559 = call i32 @vga_mm_wseq(i64 %558, i32 0, i32 3)
  %560 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %561 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %560, i32 0, i32 3
  %562 = load i64, i64* %561, align 8
  %563 = call i32 @vga_mm_wseq(i64 %562, i32 1, i32 1)
  %564 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %565 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %564, i32 0, i32 3
  %566 = load i64, i64* %565, align 8
  %567 = call i32 @vga_mm_wseq(i64 %566, i32 2, i32 15)
  %568 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %569 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %568, i32 0, i32 3
  %570 = load i64, i64* %569, align 8
  %571 = call i32 @vga_mm_wseq(i64 %570, i32 3, i32 0)
  %572 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %573 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %572, i32 0, i32 3
  %574 = load i64, i64* %573, align 8
  %575 = call i32 @vga_mm_wseq(i64 %574, i32 4, i32 14)
  %576 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %577 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %576, i32 0, i32 3
  %578 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %577, i32 0, i32 12
  %579 = load i32, i32* %578, align 8
  %580 = call i64 @PICOS2KHZ(i32 %579)
  store i64 %580, i64* %19, align 8
  %581 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %582 = load i32, i32* @MiscExtFunc, align 4
  %583 = call i32 @read3CE(%struct.tridentfb_par* %581, i32 %582)
  %584 = and i32 %583, 240
  %585 = trunc i32 %584 to i8
  store i8 %585, i8* %18, align 1
  %586 = load i32, i32* %17, align 4
  %587 = icmp eq i32 %586, 32
  br i1 %587, label %597, label %588

588:                                              ; preds = %555
  %589 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %590 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %589, i32 0, i32 0
  %591 = load i64, i64* %590, align 8
  %592 = load i64, i64* @TGUI9440, align 8
  %593 = icmp eq i64 %591, %592
  br i1 %593, label %594, label %604

594:                                              ; preds = %588
  %595 = load i32, i32* %17, align 4
  %596 = icmp eq i32 %595, 16
  br i1 %596, label %597, label %604

597:                                              ; preds = %594, %555
  %598 = load i8, i8* %18, align 1
  %599 = zext i8 %598 to i32
  %600 = or i32 %599, 8
  %601 = trunc i32 %600 to i8
  store i8 %601, i8* %18, align 1
  %602 = load i64, i64* %19, align 8
  %603 = mul i64 %602, 2
  store i64 %603, i64* %19, align 8
  br label %604

604:                                              ; preds = %597, %594, %588
  %605 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %606 = load i64, i64* %19, align 8
  %607 = call i32 @set_vclk(%struct.tridentfb_par* %605, i64 %606)
  %608 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %609 = load i32, i32* @MiscExtFunc, align 4
  %610 = load i8, i8* %18, align 1
  %611 = zext i8 %610 to i32
  %612 = or i32 %611, 18
  %613 = call i32 @write3CE(%struct.tridentfb_par* %608, i32 %609, i32 %612)
  %614 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %615 = call i32 @write3CE(%struct.tridentfb_par* %614, i32 5, i32 64)
  %616 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %617 = call i32 @write3CE(%struct.tridentfb_par* %616, i32 6, i32 5)
  %618 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %619 = call i32 @write3CE(%struct.tridentfb_par* %618, i32 7, i32 15)
  %620 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %621 = call i32 @writeAttr(%struct.tridentfb_par* %620, i8 zeroext 16, i8 zeroext 65)
  %622 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %623 = call i32 @writeAttr(%struct.tridentfb_par* %622, i8 zeroext 18, i8 zeroext 15)
  %624 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %625 = call i32 @writeAttr(%struct.tridentfb_par* %624, i8 zeroext 19, i8 zeroext 0)
  store i8 0, i8* %18, align 1
  br label %626

626:                                              ; preds = %635, %604
  %627 = load i8, i8* %18, align 1
  %628 = zext i8 %627 to i32
  %629 = icmp slt i32 %628, 16
  br i1 %629, label %630, label %638

630:                                              ; preds = %626
  %631 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %632 = load i8, i8* %18, align 1
  %633 = load i8, i8* %18, align 1
  %634 = call i32 @writeAttr(%struct.tridentfb_par* %631, i8 zeroext %632, i8 zeroext %633)
  br label %635

635:                                              ; preds = %630
  %636 = load i8, i8* %18, align 1
  %637 = add i8 %636, 1
  store i8 %637, i8* %18, align 1
  br label %626

638:                                              ; preds = %626
  %639 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %640 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %639, i32 0, i32 3
  %641 = load i64, i64* %640, align 8
  %642 = load i64, i64* @VGA_IS1_RC, align 8
  %643 = add nsw i64 %641, %642
  %644 = call i32 @fb_readb(i64 %643)
  %645 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %646 = load i32, i32* @VGA_ATT_W, align 4
  %647 = call i32 @t_outb(%struct.tridentfb_par* %645, i8 zeroext 32, i32 %646)
  %648 = load i32, i32* %17, align 4
  switch i32 %648, label %652 [
    i32 8, label %649
    i32 16, label %650
    i32 24, label %651
    i32 32, label %651
  ]

649:                                              ; preds = %638
  store i8 0, i8* %18, align 1
  br label %652

650:                                              ; preds = %638
  store i8 48, i8* %18, align 1
  br label %652

651:                                              ; preds = %638, %638
  store i8 -48, i8* %18, align 1
  br label %652

652:                                              ; preds = %638, %651, %650, %649
  %653 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %654 = load i32, i32* @VGA_PEL_IW, align 4
  %655 = call i32 @t_inb(%struct.tridentfb_par* %653, i32 %654)
  %656 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %657 = load i32, i32* @VGA_PEL_MSK, align 4
  %658 = call i32 @t_inb(%struct.tridentfb_par* %656, i32 %657)
  %659 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %660 = load i32, i32* @VGA_PEL_MSK, align 4
  %661 = call i32 @t_inb(%struct.tridentfb_par* %659, i32 %660)
  %662 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %663 = load i32, i32* @VGA_PEL_MSK, align 4
  %664 = call i32 @t_inb(%struct.tridentfb_par* %662, i32 %663)
  %665 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %666 = load i32, i32* @VGA_PEL_MSK, align 4
  %667 = call i32 @t_inb(%struct.tridentfb_par* %665, i32 %666)
  %668 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %669 = load i8, i8* %18, align 1
  %670 = load i32, i32* @VGA_PEL_MSK, align 4
  %671 = call i32 @t_outb(%struct.tridentfb_par* %668, i8 zeroext %669, i32 %670)
  %672 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %673 = load i32, i32* @VGA_PEL_IW, align 4
  %674 = call i32 @t_inb(%struct.tridentfb_par* %672, i32 %673)
  %675 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %676 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %675, i32 0, i32 2
  %677 = load i64, i64* %676, align 8
  %678 = icmp ne i64 %677, 0
  br i1 %678, label %679, label %686

679:                                              ; preds = %652
  %680 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %681 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %682 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %681, i32 0, i32 3
  %683 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %682, i32 0, i32 5
  %684 = load i32, i32* %683, align 4
  %685 = call i32 @set_number_of_lines(%struct.tridentfb_par* %680, i32 %684)
  br label %686

686:                                              ; preds = %679, %652
  %687 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %688 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %687, i32 0, i32 3
  %689 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %688, i32 0, i32 11
  %690 = load i32, i32* %689, align 4
  %691 = load i32, i32* %17, align 4
  %692 = mul nsw i32 %690, %691
  %693 = sdiv i32 %692, 8
  %694 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %695 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %694, i32 0, i32 2
  %696 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %695, i32 0, i32 0
  store i32 %693, i32* %696, align 8
  %697 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %698 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %699 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %698, i32 0, i32 2
  %700 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %699, i32 0, i32 0
  %701 = load i32, i32* %700, align 8
  %702 = sdiv i32 %701, 8
  %703 = call i32 @set_lwidth(%struct.tridentfb_par* %697, i32 %702)
  %704 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %705 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %704, i32 0, i32 0
  %706 = load i32, i32* %705, align 8
  %707 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %708 = and i32 %706, %707
  %709 = icmp ne i32 %708, 0
  br i1 %709, label %721, label %710

710:                                              ; preds = %686
  %711 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %712 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %711, i32 0, i32 1
  %713 = load i32 (%struct.tridentfb_par*, i32, i32)*, i32 (%struct.tridentfb_par*, i32, i32)** %712, align 8
  %714 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %715 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %716 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %715, i32 0, i32 3
  %717 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %716, i32 0, i32 11
  %718 = load i32, i32* %717, align 4
  %719 = load i32, i32* %17, align 4
  %720 = call i32 %713(%struct.tridentfb_par* %714, i32 %718, i32 %719)
  br label %721

721:                                              ; preds = %710, %686
  %722 = load i32, i32* %17, align 4
  %723 = icmp eq i32 %722, 8
  br i1 %723, label %724, label %726

724:                                              ; preds = %721
  %725 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  br label %728

726:                                              ; preds = %721
  %727 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  br label %728

728:                                              ; preds = %726, %724
  %729 = phi i32 [ %725, %724 ], [ %727, %726 ]
  %730 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %731 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %730, i32 0, i32 2
  %732 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %731, i32 0, i32 1
  store i32 %729, i32* %732, align 4
  %733 = load i32, i32* %17, align 4
  %734 = icmp eq i32 %733, 8
  %735 = zext i1 %734 to i64
  %736 = select i1 %734, i32 256, i32 16
  %737 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %738 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %737, i32 0, i32 1
  %739 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %738, i32 0, i32 0
  store i32 %736, i32* %739, align 4
  %740 = call i32 @debug(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @enable_mmio(%struct.tridentfb_par*) #1

declare dso_local i32 @crtc_unlock(%struct.tridentfb_par*) #1

declare dso_local i32 @write3CE(%struct.tridentfb_par*, i32, i32) #1

declare dso_local i32 @t_outb(%struct.tridentfb_par*, i8 zeroext, i32) #1

declare dso_local i32 @shadowmode_on(%struct.tridentfb_par*) #1

declare dso_local i32 @screen_center(%struct.tridentfb_par*) #1

declare dso_local i32 @screen_stretch(%struct.tridentfb_par*) #1

declare dso_local i32 @write3X4(%struct.tridentfb_par*, i32, i32) #1

declare dso_local i32 @read3X4(%struct.tridentfb_par*, i32) #1

declare dso_local i32 @read3CE(%struct.tridentfb_par*, i32) #1

declare dso_local i32 @is_oldprotect(i64) #1

declare dso_local i64 @iscyber(i64) #1

declare dso_local i32 @is_xp(i64) #1

declare dso_local i32 @vga_mm_wseq(i64, i32, i32) #1

declare dso_local i64 @PICOS2KHZ(i32) #1

declare dso_local i32 @set_vclk(%struct.tridentfb_par*, i64) #1

declare dso_local i32 @writeAttr(%struct.tridentfb_par*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @fb_readb(i64) #1

declare dso_local i32 @t_inb(%struct.tridentfb_par*, i32) #1

declare dso_local i32 @set_number_of_lines(%struct.tridentfb_par*, i32) #1

declare dso_local i32 @set_lwidth(%struct.tridentfb_par*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
