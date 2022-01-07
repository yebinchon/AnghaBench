; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbdrv.c_intelfb_set_fbinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbdrv.c_intelfb_set_fbinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { i32, %struct.TYPE_5__, i32, i32, %struct.fb_info* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.fb_info = type { i32, %struct.TYPE_6__, %struct.TYPE_4__, i32, i32*, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"intelfb_set_fbinfo\0A\00", align 1
@FBINFO_FLAG_DEFAULT = common dso_local global i32 0, align 4
@intel_fb_ops = common dso_local global i32 0, align 4
@FB_PIXMAP_SYSTEM = common dso_local global i32 0, align 4
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@INTEL_REG_SIZE = common dso_local global i32 0, align 4
@FB_ACCEL_I830 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intelfb_info*)* @intelfb_set_fbinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intelfb_set_fbinfo(%struct.intelfb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intelfb_info*, align 8
  %4 = alloca %struct.fb_info*, align 8
  store %struct.intelfb_info* %0, %struct.intelfb_info** %3, align 8
  %5 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %6 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %5, i32 0, i32 4
  %7 = load %struct.fb_info*, %struct.fb_info** %6, align 8
  store %struct.fb_info* %7, %struct.fb_info** %4, align 8
  %8 = call i32 @DBG_MSG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @FBINFO_FLAG_DEFAULT, align 4
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 4
  store i32* @intel_fb_ops, i32** %13, align 8
  %14 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %15 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store i32 65536, i32* %21, align 8
  %22 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %23 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 8, i32* %24, align 4
  %25 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  store i32 32, i32* %27, align 8
  %28 = load i32, i32* @FB_PIXMAP_SYSTEM, align 4
  %29 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 4
  store i32 %28, i32* %31, align 8
  %32 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %33 = call i64 @intelfb_init_var(%struct.intelfb_info* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %96

36:                                               ; preds = %1
  %37 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  store i32 1, i32* %39, align 4
  %40 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 10
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %45 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strcpy(i32 %43, i32 %46)
  %48 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %49 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 9
  store i32 %51, i32* %54, align 8
  %55 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %56 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %60 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 8
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %63 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 7
  store i32 %62, i32* %65, align 8
  %66 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 6
  store i64 0, i64* %68, align 8
  %69 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %70 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 8, i32* %71, align 8
  %72 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %73 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  store i32 1, i32* %74, align 4
  %75 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 5
  store i64 0, i64* %77, align 8
  %78 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %79 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 4
  store i32 %80, i32* %83, align 8
  %84 = load i32, i32* @INTEL_REG_SIZE, align 4
  %85 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %86 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 3
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* @FB_ACCEL_I830, align 4
  %89 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 8
  %92 = load %struct.intelfb_info*, %struct.intelfb_info** %3, align 8
  %93 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %94 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %93, i32 0, i32 0
  %95 = call i32 @update_dinfo(%struct.intelfb_info* %92, i32* %94)
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %36, %35
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @DBG_MSG(i8*) #1

declare dso_local i64 @intelfb_init_var(%struct.intelfb_info*) #1

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i32 @update_dinfo(%struct.intelfb_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
