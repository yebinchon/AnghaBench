; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_fb_info_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_fb_info_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i64, i32, i64, i64, i32, i32 }
%struct.mmpfb_info = type { i64, i32, i32, i32, i32, i32 }

@FBINFO_DEFAULT = common dso_local global i32 0, align 4
@FBINFO_PARTIAL_PAN_OK = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_XPAN = common dso_local global i32 0, align 4
@FBINFO_HWACCEL_YPAN = common dso_local global i32 0, align 4
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@PIXFMT_PSEUDOCOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@mmpfb_ops = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.mmpfb_info*)* @fb_info_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_info_setup(%struct.fb_info* %0, %struct.mmpfb_info* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.mmpfb_info*, align 8
  %5 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.mmpfb_info* %1, %struct.mmpfb_info** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @FBINFO_DEFAULT, align 4
  %7 = load i32, i32* @FBINFO_PARTIAL_PAN_OK, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @FBINFO_HWACCEL_XPAN, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @FBINFO_HWACCEL_YPAN, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 1
  store i32 -1, i32* %16, align 4
  %17 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %18 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %17, i32 0, i32 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 10
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mmpfb_info*, %struct.mmpfb_info** %4, align 8
  %22 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @strcpy(i32 %20, i32 %23)
  %25 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %26 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %27 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %26, i32 0, i32 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 9
  store i32 %25, i32* %28, align 8
  %29 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 8
  store i64 0, i64* %31, align 8
  %32 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %33 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %32, i32 0, i32 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 7
  store i64 0, i64* %34, align 8
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 7
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 6
  store i32 %38, i32* %41, align 8
  %42 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %43 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %42, i32 0, i32 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @FB_ACCEL_NONE, align 4
  %46 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  store i32 %45, i32* %48, align 8
  %49 = load %struct.mmpfb_info*, %struct.mmpfb_info** %4, align 8
  %50 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load %struct.mmpfb_info*, %struct.mmpfb_info** %4, align 8
  %56 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %59 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %58, i32 0, i32 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 8
  %61 = load %struct.mmpfb_info*, %struct.mmpfb_info** %4, align 8
  %62 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @PIXFMT_PSEUDOCOLOR, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %2
  %67 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  br label %70

68:                                               ; preds = %2
  %69 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  %72 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %73 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %72, i32 0, i32 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 7
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %78, %82
  %84 = sdiv i32 %83, 8
  %85 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %86 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %85, i32 0, i32 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 8
  %88 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %89 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %88, i32 0, i32 6
  store i32* @mmpfb_ops, i32** %89, align 8
  %90 = load %struct.mmpfb_info*, %struct.mmpfb_info** %4, align 8
  %91 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %94 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %93, i32 0, i32 5
  store i32 %92, i32* %94, align 4
  %95 = load %struct.mmpfb_info*, %struct.mmpfb_info** %4, align 8
  %96 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %99 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %98, i32 0, i32 4
  store i32 %97, i32* %99, align 8
  %100 = load %struct.mmpfb_info*, %struct.mmpfb_info** %4, align 8
  %101 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %104 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %106 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %105, i32 0, i32 2
  %107 = call i64 @fb_alloc_cmap(i32* %106, i32 256, i32 0)
  %108 = icmp slt i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %70
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %109, %70
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @strcpy(i32, i32) #1

declare dso_local i64 @fb_alloc_cmap(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
