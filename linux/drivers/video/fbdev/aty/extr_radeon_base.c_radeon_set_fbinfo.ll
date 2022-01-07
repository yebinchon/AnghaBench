; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeon_set_fbinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeon_set_fbinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { i32, i32, i32, i32, i32, i32, i32, %struct.fb_info* }
%struct.fb_info = type { i32, i32, %struct.TYPE_2__, i32, i32, i32*, i32, %struct.radeonfb_info* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32 }

@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_COPYAREA = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_FILLRECT = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_XPAN = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_YPAN = common dso_local global i32 0, align 4
@radeonfb_ops = common dso_local global i32 0, align 4
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@RADEON_REGSIZE = common dso_local global i32 0, align 4
@FB_ACCEL_ATI_RADEON = common dso_local global i32 0, align 4
@noaccel = common dso_local global i64 0, align 8
@FBINFO_HWACCEL_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radeonfb_info*)* @radeon_set_fbinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @radeon_set_fbinfo(%struct.radeonfb_info* %0) #0 {
  %2 = alloca %struct.radeonfb_info*, align 8
  %3 = alloca %struct.fb_info*, align 8
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %2, align 8
  %4 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %5 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %4, i32 0, i32 7
  %6 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  store %struct.fb_info* %6, %struct.fb_info** %3, align 8
  %7 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 7
  store %struct.radeonfb_info* %7, %struct.radeonfb_info** %9, align 8
  %10 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %11 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @FBINFO_DEFAULT, align 4
  %16 = load i32, i32* @FBINFO_HWACCEL_COPYAREA, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @FBINFO_HWACCEL_FILLRECT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @FBINFO_HWACCEL_XPAN, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @FBINFO_HWACCEL_YPAN, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 5
  store i32* @radeonfb_ops, i32** %27, align 8
  %28 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %29 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %34 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %37 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 8
  %38 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %39 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 11
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %43 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strlcpy(i32 %41, i32 %44, i32 4)
  %46 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %47 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %50 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 10
  store i32 %48, i32* %51, align 4
  %52 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %53 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 9
  store i32 %54, i32* %57, align 8
  %58 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %59 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %60 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 8
  store i32 %58, i32* %61, align 4
  %62 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  %63 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %64 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 7
  store i32 %62, i32* %65, align 8
  %66 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %67 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 8, i32* %68, align 8
  %69 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %70 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %73 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 6
  store i64 0, i64* %74, align 8
  %75 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 5
  store i64 0, i64* %77, align 8
  %78 = load %struct.radeonfb_info*, %struct.radeonfb_info** %2, align 8
  %79 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %82 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 4
  store i32 %80, i32* %83, align 8
  %84 = load i32, i32* @RADEON_REGSIZE, align 4
  %85 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %86 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* @FB_ACCEL_ATI_RADEON, align 4
  %89 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %90 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 8
  %92 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %93 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %92, i32 0, i32 1
  %94 = call i32 @fb_alloc_cmap(i32* %93, i32 256, i32 0)
  %95 = load i64, i64* @noaccel, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %1
  %98 = load i32, i32* @FBINFO_HWACCEL_DISABLED, align 4
  %99 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %100 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %97, %1
  ret i32 0
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @fb_alloc_cmap(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
