; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sa1100fb.c_sa1100fb_init_fbinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sa1100fb.c_sa1100fb_init_fbinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sa1100fb_info = type { i32, i32, i32, i32**, %struct.sa1100fb_mach_info*, %struct.TYPE_6__, i64, i32, i32, %struct.device* }
%struct.sa1100fb_mach_info = type { i32, i64, i32, i32, i32, i32**, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i64 }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@SA1100_NAME = common dso_local global i32 0, align 4
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@sa1100fb_ops = common dso_local global i32 0, align 4
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@monspecs = common dso_local global i32 0, align 4
@rgb_4 = common dso_local global i32 0, align 4
@RGB_4 = common dso_local global i64 0, align 8
@rgb_8 = common dso_local global i32 0, align 4
@RGB_8 = common dso_local global i64 0, align 8
@def_rgb_16 = common dso_local global i32 0, align 4
@RGB_16 = common dso_local global i64 0, align 8
@LCCR3_VrtSnchL = common dso_local global i32 0, align 4
@LCCR3_HorSnchL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"sa1100fb error: invalid LCCR3 fields set or zero pixclock.\00", align 1
@C_STARTUP = common dso_local global i32 0, align 4
@NR_RGB = common dso_local global i32 0, align 4
@sa1100fb_task = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sa1100fb_info* (%struct.device*)* @sa1100fb_init_fbinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sa1100fb_info* @sa1100fb_init_fbinfo(%struct.device* %0) #0 {
  %2 = alloca %struct.sa1100fb_info*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sa1100fb_mach_info*, align 8
  %5 = alloca %struct.sa1100fb_info*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.sa1100fb_mach_info* @dev_get_platdata(%struct.device* %7)
  store %struct.sa1100fb_mach_info* %8, %struct.sa1100fb_mach_info** %4, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.sa1100fb_info* @devm_kzalloc(%struct.device* %9, i32 232, i32 %10)
  store %struct.sa1100fb_info* %11, %struct.sa1100fb_info** %5, align 8
  %12 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %13 = icmp ne %struct.sa1100fb_info* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store %struct.sa1100fb_info* null, %struct.sa1100fb_info** %2, align 8
  br label %292

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %18 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %17, i32 0, i32 9
  store %struct.device* %16, %struct.device** %18, align 8
  %19 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %20 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 7
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SA1100_NAME, align 4
  %25 = call i32 @strcpy(i32 %23, i32 %24)
  %26 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %27 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %28 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %27, i32 0, i32 5
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 6
  store i32 %26, i32* %30, align 8
  %31 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %32 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %36 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 4
  store i64 0, i64* %38, align 8
  %39 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %40 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %39, i32 0, i32 5
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %44 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 2
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @FB_ACCEL_NONE, align 4
  %48 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %49 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %48, i32 0, i32 5
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 %47, i32* %51, align 4
  %52 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %53 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 19
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %57 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %58 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 18
  store i32 %56, i32* %60, align 8
  %61 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %62 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i32 -1, i32* %64, align 8
  %65 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %66 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  store i32 -1, i32* %68, align 4
  %69 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %70 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %69, i32 0, i32 5
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 17
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %74 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %75 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 16
  store i32 %73, i32* %77, align 8
  %78 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %79 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 5
  store i32* @sa1100fb_ops, i32** %80, align 8
  %81 = load i32, i32* @FBINFO_DEFAULT, align 4
  %82 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %83 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 4
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* @monspecs, align 4
  %86 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %87 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %86, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  store i32 %85, i32* %88, align 4
  %89 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %90 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %93 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 2
  store i32 %91, i32* %94, align 8
  %95 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %96 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %95, i32 0, i32 3
  %97 = load i32**, i32*** %96, align 8
  %98 = load i64, i64* @RGB_4, align 8
  %99 = getelementptr inbounds i32*, i32** %97, i64 %98
  store i32* @rgb_4, i32** %99, align 8
  %100 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %101 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %100, i32 0, i32 3
  %102 = load i32**, i32*** %101, align 8
  %103 = load i64, i64* @RGB_8, align 8
  %104 = getelementptr inbounds i32*, i32** %102, i64 %103
  store i32* @rgb_8, i32** %104, align 8
  %105 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %106 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %105, i32 0, i32 3
  %107 = load i32**, i32*** %106, align 8
  %108 = load i64, i64* @RGB_16, align 8
  %109 = getelementptr inbounds i32*, i32** %107, i64 %108
  store i32* @def_rgb_16, i32** %109, align 8
  %110 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %111 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @LCCR3_VrtSnchL, align 4
  %114 = load i32, i32* @LCCR3_HorSnchL, align 4
  %115 = or i32 %113, %114
  %116 = or i32 %115, 255
  %117 = and i32 %112, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %15
  %120 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %121 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %119, %15
  %125 = call i32 @panic(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %126

126:                                              ; preds = %124, %119
  %127 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %128 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %131 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 2
  store i32 %129, i32* %133, align 8
  %134 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %135 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %138 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 3
  store i32 %136, i32* %140, align 4
  %141 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %142 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %145 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 4
  store i32 %143, i32* %147, align 8
  %148 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %149 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %152 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %151, i32 0, i32 5
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 5
  store i32 %150, i32* %154, align 4
  %155 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %156 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %159 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 6
  store i32 %157, i32* %161, align 8
  %162 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %163 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %166 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %165, i32 0, i32 5
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 7
  store i64 %164, i64* %168, align 8
  %169 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %170 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %169, i32 0, i32 13
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %173 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 15
  store i32 %171, i32* %175, align 4
  %176 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %177 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %176, i32 0, i32 12
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %180 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %179, i32 0, i32 5
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 14
  store i32 %178, i32* %182, align 8
  %183 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %184 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %183, i32 0, i32 11
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %187 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 13
  store i32 %185, i32* %189, align 4
  %190 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %191 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %190, i32 0, i32 10
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %194 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %193, i32 0, i32 5
  %195 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 12
  store i32 %192, i32* %196, align 8
  %197 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %198 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %197, i32 0, i32 9
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %201 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 11
  store i32 %199, i32* %203, align 4
  %204 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %205 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %204, i32 0, i32 8
  %206 = load i32, i32* %205, align 8
  %207 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %208 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 10
  store i32 %206, i32* %210, align 8
  %211 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %212 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %211, i32 0, i32 7
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %215 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %214, i32 0, i32 5
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 9
  store i32 %213, i32* %217, align 4
  %218 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %219 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %218, i32 0, i32 6
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %222 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 1
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 8
  store i32 %220, i32* %224, align 8
  %225 = load i32, i32* @C_STARTUP, align 4
  %226 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %227 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %226, i32 0, i32 7
  store i32 %225, i32* %227, align 8
  %228 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %229 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %228, i32 0, i32 6
  store i64 -1, i64* %229, align 8
  %230 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %231 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %234 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 4
  %236 = mul nsw i32 %232, %235
  %237 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %238 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = mul nsw i32 %236, %239
  %241 = sdiv i32 %240, 8
  %242 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %243 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %242, i32 0, i32 5
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 0
  store i32 %241, i32* %245, align 8
  %246 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %247 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %248 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %247, i32 0, i32 4
  store %struct.sa1100fb_mach_info* %246, %struct.sa1100fb_mach_info** %248, align 8
  store i32 0, i32* %6, align 4
  br label %249

249:                                              ; preds = %277, %126
  %250 = load i32, i32* %6, align 4
  %251 = load i32, i32* @NR_RGB, align 4
  %252 = icmp ult i32 %250, %251
  br i1 %252, label %253, label %280

253:                                              ; preds = %249
  %254 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %255 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %254, i32 0, i32 5
  %256 = load i32**, i32*** %255, align 8
  %257 = load i32, i32* %6, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i32*, i32** %256, i64 %258
  %260 = load i32*, i32** %259, align 8
  %261 = icmp ne i32* %260, null
  br i1 %261, label %262, label %276

262:                                              ; preds = %253
  %263 = load %struct.sa1100fb_mach_info*, %struct.sa1100fb_mach_info** %4, align 8
  %264 = getelementptr inbounds %struct.sa1100fb_mach_info, %struct.sa1100fb_mach_info* %263, i32 0, i32 5
  %265 = load i32**, i32*** %264, align 8
  %266 = load i32, i32* %6, align 4
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds i32*, i32** %265, i64 %267
  %269 = load i32*, i32** %268, align 8
  %270 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %271 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %270, i32 0, i32 3
  %272 = load i32**, i32*** %271, align 8
  %273 = load i32, i32* %6, align 4
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds i32*, i32** %272, i64 %274
  store i32* %269, i32** %275, align 8
  br label %276

276:                                              ; preds = %262, %253
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %6, align 4
  %279 = add i32 %278, 1
  store i32 %279, i32* %6, align 4
  br label %249

280:                                              ; preds = %249
  %281 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %282 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %281, i32 0, i32 2
  %283 = call i32 @init_waitqueue_head(i32* %282)
  %284 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %285 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %284, i32 0, i32 1
  %286 = load i32, i32* @sa1100fb_task, align 4
  %287 = call i32 @INIT_WORK(i32* %285, i32 %286)
  %288 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  %289 = getelementptr inbounds %struct.sa1100fb_info, %struct.sa1100fb_info* %288, i32 0, i32 0
  %290 = call i32 @mutex_init(i32* %289)
  %291 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %5, align 8
  store %struct.sa1100fb_info* %291, %struct.sa1100fb_info** %2, align 8
  br label %292

292:                                              ; preds = %280, %14
  %293 = load %struct.sa1100fb_info*, %struct.sa1100fb_info** %2, align 8
  ret %struct.sa1100fb_info* %293
}

declare dso_local %struct.sa1100fb_mach_info* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.sa1100fb_info* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
