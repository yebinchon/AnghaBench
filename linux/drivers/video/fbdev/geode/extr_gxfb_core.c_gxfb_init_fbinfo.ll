; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_gxfb_core.c_gxfb_init_fbinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/geode/extr_gxfb_core.c_gxfb_init_fbinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, i32, %struct.TYPE_4__, i8*, i32, i32*, %struct.TYPE_3__, %struct.gxfb_par* }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i64, i32, i64 }
%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i32, i32 }
%struct.gxfb_par = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"Geode GX\00", align 1
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@FB_ACTIVATE_NOW = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@gxfb_ops = common dso_local global i32 0, align 4
@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fb_info* (%struct.device*)* @gxfb_init_fbinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fb_info* @gxfb_init_fbinfo(%struct.device* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.gxfb_par*, align 8
  %5 = alloca %struct.fb_info*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.fb_info* @framebuffer_alloc(i32 68, %struct.device* %6)
  store %struct.fb_info* %7, %struct.fb_info** %5, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %9 = icmp ne %struct.fb_info* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.fb_info* null, %struct.fb_info** %2, align 8
  br label %84

11:                                               ; preds = %1
  %12 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 7
  %14 = load %struct.gxfb_par*, %struct.gxfb_par** %13, align 8
  store %struct.gxfb_par* %14, %struct.gxfb_par** %4, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @strcpy(i32 %18, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %21 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 6
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 5
  store i32 %20, i32* %23, align 8
  %24 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 4
  store i64 0, i64* %26, align 8
  %27 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 6
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 3
  store i64 0, i64* %29, align 8
  %30 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %34 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %33, i32 0, i32 6
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @FB_ACCEL_NONE, align 4
  %37 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 6
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 6
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @FB_ACTIVATE_NOW, align 4
  %44 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %45 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 5
  store i32 %43, i32* %46, align 8
  %47 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %48 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 -1, i32* %49, align 8
  %50 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %51 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store i32 -1, i32* %52, align 4
  %53 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %57 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 8
  %60 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %60, i32 0, i32 5
  store i32* @gxfb_ops, i32** %61, align 8
  %62 = load i32, i32* @FBINFO_DEFAULT, align 4
  %63 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 8
  %65 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %66 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %65, i32 0, i32 0
  store i32 -1, i32* %66, align 8
  %67 = load %struct.gxfb_par*, %struct.gxfb_par** %4, align 8
  %68 = bitcast %struct.gxfb_par* %67 to i8*
  %69 = getelementptr i8, i8* %68, i64 4
  %70 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %71 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %70, i32 0, i32 3
  store i8* %69, i8** %71, align 8
  %72 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %73 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 1
  %77 = call i64 @fb_alloc_cmap(i32* %76, i32 256, i32 0)
  %78 = icmp slt i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %11
  %80 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %81 = call i32 @framebuffer_release(%struct.fb_info* %80)
  store %struct.fb_info* null, %struct.fb_info** %2, align 8
  br label %84

82:                                               ; preds = %11
  %83 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  store %struct.fb_info* %83, %struct.fb_info** %2, align 8
  br label %84

84:                                               ; preds = %82, %79, %10
  %85 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  ret %struct.fb_info* %85
}

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, %struct.device*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i64 @fb_alloc_cmap(i32*, i32, i32) #1

declare dso_local i32 @framebuffer_release(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
