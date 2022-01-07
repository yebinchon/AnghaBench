; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfbdrv.c_mb862xxfb_init_fbinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mb862xx/extr_mb862xxfbdrv.c_mb862xxfb_init_fbinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 (%struct.TYPE_9__*, %struct.fb_info*)* }
%struct.TYPE_9__ = type { i64, i32, i64, i32, i64, i32, i64, i64, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64 }
%struct.fb_info = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_10__*, i32, i32, %struct.mb862xxfb_par* }
%struct.TYPE_8__ = type { i64, i64, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.mb862xxfb_par = type { i32, i64, i32, i32, i32, %struct.TYPE_7__, i32, i32, i64, i64, i32, i32, %struct.mb862xx_gc_mode* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.mb862xx_gc_mode = type { i32 }
%struct.fb_videomode = type { i32 }

@mb862xxfb_ops = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@DRV_NAME = common dso_local global i32 0, align 4
@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@disp = common dso_local global i32 0, align 4
@GC_DCM1 = common dso_local global i32 0, align 4
@GC_DCM01_DEN = common dso_local global i64 0, align 8
@GC_DCM01_L0E = common dso_local global i64 0, align 8
@GC_DCM01_SC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"using bootloader's disp. mode\0A\00", align 1
@GC_HDB_HDP = common dso_local global i32 0, align 4
@GC_VDP_VSP = common dso_local global i32 0, align 4
@GC_L0EM = common dso_local global i32 0, align 4
@GC_L0EM_L0EC_24 = common dso_local global i64 0, align 8
@GC_L0M = common dso_local global i32 0, align 4
@GC_L0M_L0C_16 = common dso_local global i64 0, align 8
@GC_VSW_HSW_HSP = common dso_local global i32 0, align 4
@GC_HTP = common dso_local global i32 0, align 4
@GC_VTR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"using supplied mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"640x480-16@60\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"failed to get initial mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_XPAN = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_YPAN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"check_var() failed on initial setup?\0A\00", align 1
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@cap = common dso_local global i32 0, align 4
@GC_CAP_CBM = common dso_local global i32 0, align 4
@GC_CBM_OO = common dso_local global i32 0, align 4
@GC_CBM_CBST = common dso_local global i32 0, align 4
@GC_CAP_CBOA = common dso_local global i32 0, align 4
@GC_CAP_CBLA = common dso_local global i32 0, align 4
@FBINFO_FOREIGN_ENDIAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @mb862xxfb_init_fbinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mb862xxfb_init_fbinfo(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.mb862xxfb_par*, align 8
  %5 = alloca %struct.mb862xx_gc_mode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 7
  %16 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %15, align 8
  store %struct.mb862xxfb_par* %16, %struct.mb862xxfb_par** %4, align 8
  %17 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %18 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %17, i32 0, i32 12
  %19 = load %struct.mb862xx_gc_mode*, %struct.mb862xx_gc_mode** %18, align 8
  store %struct.mb862xx_gc_mode* %19, %struct.mb862xx_gc_mode** %5, align 8
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 4
  store %struct.TYPE_10__* @mb862xxfb_ops, %struct.TYPE_10__** %21, align 8
  %22 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %23 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %22, i32 0, i32 11
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %28 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %27, i32 0, i32 10
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 8
  %32 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %33 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 12
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @DRV_NAME, align 4
  %42 = call i32 @strcpy(i32 %40, i32 %41)
  %43 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %44 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %43, i32 0, i32 9
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  store i64 %45, i64* %48, align 8
  %49 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %50 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  store i64 %51, i64* %54, align 8
  %55 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %56 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %59 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 11
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* @FB_ACCEL_NONE, align 4
  %62 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %63 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 10
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %66 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 9
  store i32 %65, i32* %68, align 8
  %69 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %70 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 8
  store i64 0, i64* %71, align 8
  %72 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %73 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 2
  store i32 1, i32* %74, align 8
  %75 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 3
  store i32 1, i32* %77, align 4
  %78 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %79 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 7
  store i64 0, i64* %80, align 8
  %81 = load i32, i32* @disp, align 4
  %82 = load i32, i32* @GC_DCM1, align 4
  %83 = call i32 @inreg(i32 %81, i32 %82)
  %84 = sext i32 %83 to i64
  store i64 %84, i64* %6, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* @GC_DCM01_DEN, align 8
  %87 = and i64 %85, %86
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %257

89:                                               ; preds = %1
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* @GC_DCM01_L0E, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %257

94:                                               ; preds = %89
  %95 = load i64, i64* %6, align 8
  %96 = load i64, i64* @GC_DCM01_SC, align 8
  %97 = and i64 %95, %96
  %98 = lshr i64 %97, 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %8, align 8
  %100 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %101 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @dev_dbg(i32 %102, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %104 = load i64, i64* %8, align 8
  %105 = mul i64 %104, 1000000
  %106 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %107 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = udiv i64 %105, %108
  %110 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %111 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  store i64 %109, i64* %112, align 8
  %113 = load i32, i32* @disp, align 4
  %114 = load i32, i32* @GC_HDB_HDP, align 4
  %115 = call i32 @inreg(i32 %113, i32 %114)
  %116 = and i32 %115, 4095
  %117 = add nsw i32 %116, 1
  %118 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %119 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  store i32 %117, i32* %120, align 8
  %121 = load i32, i32* @disp, align 4
  %122 = load i32, i32* @GC_VDP_VSP, align 4
  %123 = call i32 @inreg(i32 %121, i32 %122)
  %124 = sext i32 %123 to i64
  store i64 %124, i64* %6, align 8
  %125 = load i64, i64* %6, align 8
  %126 = lshr i64 %125, 16
  %127 = and i64 %126, 4095
  %128 = add i64 %127, 1
  %129 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %130 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 2
  store i64 %128, i64* %131, align 8
  %132 = load i64, i64* %6, align 8
  %133 = and i64 %132, 4095
  %134 = add i64 %133, 1
  store i64 %134, i64* %10, align 8
  %135 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %136 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %140 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 3
  store i32 %138, i32* %141, align 8
  %142 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %143 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %147 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 4
  store i64 %145, i64* %148, align 8
  %149 = load i32, i32* @disp, align 4
  %150 = load i32, i32* @GC_L0EM, align 4
  %151 = call i32 @inreg(i32 %149, i32 %150)
  %152 = sext i32 %151 to i64
  store i64 %152, i64* %6, align 8
  %153 = load i64, i64* %6, align 8
  %154 = load i64, i64* @GC_L0EM_L0EC_24, align 8
  %155 = and i64 %153, %154
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %94
  %158 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %159 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 5
  store i32 32, i32* %160, align 8
  br label %179

161:                                              ; preds = %94
  %162 = load i32, i32* @disp, align 4
  %163 = load i32, i32* @GC_L0M, align 4
  %164 = call i32 @inreg(i32 %162, i32 %163)
  %165 = sext i32 %164 to i64
  store i64 %165, i64* %6, align 8
  %166 = load i64, i64* %6, align 8
  %167 = load i64, i64* @GC_L0M_L0C_16, align 8
  %168 = and i64 %166, %167
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %161
  %171 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %172 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 5
  store i32 16, i32* %173, align 8
  br label %178

174:                                              ; preds = %161
  %175 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %176 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %176, i32 0, i32 5
  store i32 8, i32* %177, align 8
  br label %178

178:                                              ; preds = %174, %170
  br label %179

179:                                              ; preds = %178, %157
  %180 = load i32, i32* @disp, align 4
  %181 = load i32, i32* @GC_VSW_HSW_HSP, align 4
  %182 = call i32 @inreg(i32 %180, i32 %181)
  %183 = sext i32 %182 to i64
  store i64 %183, i64* %6, align 8
  %184 = load i64, i64* %6, align 8
  %185 = and i64 %184, 16711680
  %186 = lshr i64 %185, 16
  %187 = add i64 %186, 1
  %188 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %189 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %188, i32 0, i32 2
  %190 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %189, i32 0, i32 6
  store i64 %187, i64* %190, align 8
  %191 = load i64, i64* %6, align 8
  %192 = and i64 %191, 1056964608
  %193 = lshr i64 %192, 24
  %194 = add i64 %193, 1
  %195 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %196 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %195, i32 0, i32 2
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 7
  store i64 %194, i64* %197, align 8
  %198 = load i64, i64* %6, align 8
  %199 = and i64 %198, 65535
  %200 = add i64 %199, 1
  store i64 %200, i64* %9, align 8
  %201 = load i32, i32* @disp, align 4
  %202 = load i32, i32* @GC_HTP, align 4
  %203 = call i32 @inreg(i32 %201, i32 %202)
  %204 = and i32 %203, 268369920
  %205 = ashr i32 %204, 16
  %206 = add nsw i32 %205, 1
  %207 = sext i32 %206 to i64
  store i64 %207, i64* %11, align 8
  %208 = load i64, i64* %9, align 8
  %209 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %210 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = sub i64 %208, %213
  %215 = trunc i64 %214 to i32
  %216 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %217 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 8
  store i32 %215, i32* %218, align 8
  %219 = load i64, i64* %11, align 8
  %220 = load i64, i64* %9, align 8
  %221 = sub i64 %219, %220
  %222 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %223 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 6
  %225 = load i64, i64* %224, align 8
  %226 = sub i64 %221, %225
  %227 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %228 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 9
  store i64 %226, i64* %229, align 8
  %230 = load i32, i32* @disp, align 4
  %231 = load i32, i32* @GC_VTR, align 4
  %232 = call i32 @inreg(i32 %230, i32 %231)
  %233 = and i32 %232, 268369920
  %234 = ashr i32 %233, 16
  %235 = add nsw i32 %234, 1
  %236 = sext i32 %235 to i64
  store i64 %236, i64* %12, align 8
  %237 = load i64, i64* %10, align 8
  %238 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %239 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = sub i64 %237, %241
  %243 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %244 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %243, i32 0, i32 2
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 10
  store i64 %242, i64* %245, align 8
  %246 = load i64, i64* %12, align 8
  %247 = load i64, i64* %10, align 8
  %248 = sub i64 %246, %247
  %249 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %250 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 7
  %252 = load i64, i64* %251, align 8
  %253 = sub i64 %248, %252
  %254 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %255 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %254, i32 0, i32 2
  %256 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %255, i32 0, i32 11
  store i64 %253, i64* %256, align 8
  br label %303

257:                                              ; preds = %89, %1
  %258 = load %struct.mb862xx_gc_mode*, %struct.mb862xx_gc_mode** %5, align 8
  %259 = icmp ne %struct.mb862xx_gc_mode* %258, null
  br i1 %259, label %260, label %284

260:                                              ; preds = %257
  %261 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %262 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %261, i32 0, i32 6
  %263 = load i32, i32* %262, align 8
  %264 = call i32 @dev_dbg(i32 %263, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %265 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %266 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %265, i32 0, i32 2
  %267 = load %struct.mb862xx_gc_mode*, %struct.mb862xx_gc_mode** %5, align 8
  %268 = bitcast %struct.mb862xx_gc_mode* %267 to %struct.fb_videomode*
  %269 = call i32 @fb_videomode_to_var(%struct.TYPE_9__* %266, %struct.fb_videomode* %268)
  %270 = load %struct.mb862xx_gc_mode*, %struct.mb862xx_gc_mode** %5, align 8
  %271 = getelementptr inbounds %struct.mb862xx_gc_mode, %struct.mb862xx_gc_mode* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %260
  %275 = load %struct.mb862xx_gc_mode*, %struct.mb862xx_gc_mode** %5, align 8
  %276 = getelementptr inbounds %struct.mb862xx_gc_mode, %struct.mb862xx_gc_mode* %275, i32 0, i32 0
  %277 = load i32, i32* %276, align 4
  br label %279

278:                                              ; preds = %260
  br label %279

279:                                              ; preds = %278, %274
  %280 = phi i32 [ %277, %274 ], [ 8, %278 ]
  %281 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %282 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i32 0, i32 5
  store i32 %280, i32* %283, align 8
  br label %302

284:                                              ; preds = %257
  %285 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %286 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %285, i32 0, i32 2
  %287 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %288 = call i32 @fb_find_mode(%struct.TYPE_9__* %286, %struct.fb_info* %287, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 0, i32* null, i32 16)
  store i32 %288, i32* %13, align 4
  %289 = load i32, i32* %13, align 4
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %294, label %291

291:                                              ; preds = %284
  %292 = load i32, i32* %13, align 4
  %293 = icmp eq i32 %292, 4
  br i1 %293, label %294, label %301

294:                                              ; preds = %291, %284
  %295 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %296 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %295, i32 0, i32 6
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @dev_err(i32 %297, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %299 = load i32, i32* @EINVAL, align 4
  %300 = sub nsw i32 0, %299
  store i32 %300, i32* %2, align 4
  br label %477

301:                                              ; preds = %291
  br label %302

302:                                              ; preds = %301, %279
  br label %303

303:                                              ; preds = %302, %179
  %304 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %305 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %305, i32 0, i32 20
  store i64 0, i64* %306, align 8
  %307 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %308 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %307, i32 0, i32 2
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 19
  store i64 0, i64* %309, align 8
  %310 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %311 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %310, i32 0, i32 2
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 18
  store i64 0, i64* %312, align 8
  %313 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %314 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %314, i32 0, i32 17
  store i64 0, i64* %315, align 8
  %316 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %317 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %316, i32 0, i32 2
  %318 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %317, i32 0, i32 12
  store i32 -1, i32* %318, align 8
  %319 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %320 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %320, i32 0, i32 13
  store i32 -1, i32* %321, align 4
  %322 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %323 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %322, i32 0, i32 2
  %324 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %323, i32 0, i32 16
  store i64 0, i64* %324, align 8
  %325 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %326 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %327 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %326, i32 0, i32 2
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 15
  store i32 %325, i32* %328, align 4
  %329 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %330 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %331 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %330, i32 0, i32 2
  %332 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %331, i32 0, i32 14
  store i32 %329, i32* %332, align 8
  %333 = load i32, i32* @FBINFO_DEFAULT, align 4
  %334 = load i32, i32* @FBINFO_HWACCEL_XPAN, align 4
  %335 = or i32 %333, %334
  %336 = load i32, i32* @FBINFO_HWACCEL_YPAN, align 4
  %337 = or i32 %335, %336
  %338 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %339 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %338, i32 0, i32 1
  store i32 %337, i32* %339, align 4
  %340 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %341 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %340, i32 0, i32 4
  %342 = load %struct.TYPE_10__*, %struct.TYPE_10__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %342, i32 0, i32 0
  %344 = load i64 (%struct.TYPE_9__*, %struct.fb_info*)*, i64 (%struct.TYPE_9__*, %struct.fb_info*)** %343, align 8
  %345 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %346 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %345, i32 0, i32 2
  %347 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %348 = call i64 %344(%struct.TYPE_9__* %346, %struct.fb_info* %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %355

350:                                              ; preds = %303
  %351 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %352 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %351, i32 0, i32 6
  %353 = load i32, i32* %352, align 8
  %354 = call i32 @dev_err(i32 %353, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %355

355:                                              ; preds = %350, %303
  %356 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %357 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %356, i32 0, i32 2
  %358 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %357, i32 0, i32 5
  %359 = load i32, i32* %358, align 8
  %360 = icmp eq i32 %359, 8
  br i1 %360, label %361, label %363

361:                                              ; preds = %355
  %362 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  br label %365

363:                                              ; preds = %355
  %364 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  br label %365

365:                                              ; preds = %363, %361
  %366 = phi i32 [ %362, %361 ], [ %364, %363 ]
  %367 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %368 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %367, i32 0, i32 3
  %369 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %368, i32 0, i32 6
  store i32 %366, i32* %369, align 8
  %370 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %371 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %370, i32 0, i32 2
  %372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 8
  %374 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %375 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %374, i32 0, i32 2
  %376 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %375, i32 0, i32 5
  %377 = load i32, i32* %376, align 8
  %378 = mul nsw i32 %373, %377
  %379 = sdiv i32 %378, 8
  %380 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %381 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %380, i32 0, i32 3
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 4
  store i32 %379, i32* %382, align 8
  %383 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %384 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %383, i32 0, i32 3
  %385 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %384, i32 0, i32 4
  %386 = load i32, i32* %385, align 8
  %387 = sext i32 %386 to i64
  %388 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %389 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %388, i32 0, i32 2
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i32 0, i32 4
  %391 = load i64, i64* %390, align 8
  %392 = mul i64 %387, %391
  %393 = trunc i64 %392 to i32
  %394 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %395 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %394, i32 0, i32 3
  %396 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %395, i32 0, i32 5
  store i32 %393, i32* %396, align 4
  %397 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %398 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = sub nsw i32 %399, 1824768
  %401 = sub nsw i32 %400, 65536
  %402 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %403 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %402, i32 0, i32 2
  store i32 %401, i32* %403, align 8
  %404 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %405 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %404, i32 0, i32 3
  store i32 1824768, i32* %405, align 4
  %406 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %407 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %406, i32 0, i32 5
  %408 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %407, i32 0, i32 7
  store i64 0, i64* %408, align 8
  %409 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %410 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %409, i32 0, i32 5
  %411 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %410, i32 0, i32 6
  store i64 0, i64* %411, align 8
  %412 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %413 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %412, i32 0, i32 5
  %414 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %413, i32 0, i32 0
  store i32 720, i32* %414, align 8
  %415 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %416 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %415, i32 0, i32 5
  %417 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %416, i32 0, i32 1
  store i32 576, i32* %417, align 4
  %418 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %419 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %418, i32 0, i32 5
  %420 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %419, i32 0, i32 5
  store i64 0, i64* %420, align 8
  %421 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %422 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %421, i32 0, i32 5
  %423 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %422, i32 0, i32 4
  store i64 0, i64* %423, align 8
  %424 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %425 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %424, i32 0, i32 5
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %425, i32 0, i32 2
  store i32 720, i32* %426, align 8
  %427 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %428 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %427, i32 0, i32 5
  %429 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %428, i32 0, i32 3
  store i32 576, i32* %429, align 4
  %430 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %431 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %430, i32 0, i32 5
  %432 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %435 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %434, i32 0, i32 2
  %436 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %435, i32 0, i32 5
  %437 = load i32, i32* %436, align 8
  %438 = sdiv i32 %437, 8
  %439 = mul nsw i32 %433, %438
  store i32 %439, i32* %7, align 4
  %440 = load i32, i32* %7, align 4
  %441 = sdiv i32 %440, 64
  %442 = load i32, i32* %7, align 4
  %443 = srem i32 %442, 64
  %444 = icmp ne i32 %443, 0
  %445 = zext i1 %444 to i64
  %446 = select i1 %444, i32 1, i32 0
  %447 = add nsw i32 %441, %446
  %448 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %449 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %448, i32 0, i32 4
  store i32 %447, i32* %449, align 8
  %450 = load i32, i32* @cap, align 4
  %451 = load i32, i32* @GC_CAP_CBM, align 4
  %452 = load i32, i32* @GC_CBM_OO, align 4
  %453 = load i32, i32* @GC_CBM_CBST, align 4
  %454 = or i32 %452, %453
  %455 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %456 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %455, i32 0, i32 4
  %457 = load i32, i32* %456, align 8
  %458 = shl i32 %457, 16
  %459 = or i32 %454, %458
  %460 = call i32 @outreg(i32 %450, i32 %451, i32 %459)
  %461 = load i32, i32* @cap, align 4
  %462 = load i32, i32* @GC_CAP_CBOA, align 4
  %463 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %464 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %463, i32 0, i32 2
  %465 = load i32, i32* %464, align 8
  %466 = call i32 @outreg(i32 %461, i32 %462, i32 %465)
  %467 = load i32, i32* @cap, align 4
  %468 = load i32, i32* @GC_CAP_CBLA, align 4
  %469 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %470 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %469, i32 0, i32 2
  %471 = load i32, i32* %470, align 8
  %472 = load %struct.mb862xxfb_par*, %struct.mb862xxfb_par** %4, align 8
  %473 = getelementptr inbounds %struct.mb862xxfb_par, %struct.mb862xxfb_par* %472, i32 0, i32 3
  %474 = load i32, i32* %473, align 4
  %475 = add nsw i32 %471, %474
  %476 = call i32 @outreg(i32 %467, i32 %468, i32 %475)
  store i32 0, i32* %2, align 4
  br label %477

477:                                              ; preds = %365, %294
  %478 = load i32, i32* %2, align 4
  ret i32 %478
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @inreg(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @fb_videomode_to_var(%struct.TYPE_9__*, %struct.fb_videomode*) #1

declare dso_local i32 @fb_find_mode(%struct.TYPE_9__*, %struct.fb_info*, i8*, i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @outreg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
