; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa168fb.c_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa168fb.c_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa168fb_info = type { %struct.fb_info* }
%struct.fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.fb_videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@FB_ACCEL_NONE = common dso_local global i32 0, align 4
@FB_VMODE_NONINTERLACED = common dso_local global i32 0, align 4
@FB_ROTATE_UR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa168fb_info*, %struct.fb_var_screeninfo*, %struct.fb_videomode*, i32, i32)* @set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_mode(%struct.pxa168fb_info* %0, %struct.fb_var_screeninfo* %1, %struct.fb_videomode* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.pxa168fb_info*, align 8
  %7 = alloca %struct.fb_var_screeninfo*, align 8
  %8 = alloca %struct.fb_videomode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fb_info*, align 8
  store %struct.pxa168fb_info* %0, %struct.pxa168fb_info** %6, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %7, align 8
  store %struct.fb_videomode* %2, %struct.fb_videomode** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %6, align 8
  %13 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %12, i32 0, i32 0
  %14 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  store %struct.fb_info* %14, %struct.fb_info** %11, align 8
  %15 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @set_pix_fmt(%struct.fb_var_screeninfo* %15, i32 %16)
  %18 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %19 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 16
  store i32 %20, i32* %22, align 4
  %23 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %24 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 15
  store i32 %25, i32* %27, align 8
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 16
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @max(i32 %30, i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %5
  %41 = load %struct.fb_info*, %struct.fb_info** %11, align 8
  %42 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %46 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = ashr i32 %50, 3
  %52 = mul nsw i32 %47, %51
  %53 = sdiv i32 %44, %52
  %54 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %55 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %67

56:                                               ; preds = %5
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 15
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %61 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @max(i32 %59, i32 %62)
  %64 = ptrtoint i8* %63 to i32
  %65 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  br label %67

67:                                               ; preds = %56, %40
  %68 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %69 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %68, i32 0, i32 14
  store i64 0, i64* %69, align 8
  %70 = load i32, i32* @FB_ACCEL_NONE, align 4
  %71 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %72 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %71, i32 0, i32 13
  store i32 %70, i32* %72, align 4
  %73 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %74 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 12
  store i32 %75, i32* %77, align 8
  %78 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %79 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 11
  store i32 %80, i32* %82, align 4
  %83 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %84 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %87 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %86, i32 0, i32 10
  store i32 %85, i32* %87, align 8
  %88 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %89 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %92 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %91, i32 0, i32 9
  store i32 %90, i32* %92, align 4
  %93 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %94 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %97 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %96, i32 0, i32 8
  store i32 %95, i32* %97, align 8
  %98 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %99 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %102 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 4
  %103 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %104 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %107 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %106, i32 0, i32 6
  store i32 %105, i32* %107, align 8
  %108 = load %struct.fb_videomode*, %struct.fb_videomode** %8, align 8
  %109 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %112 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @FB_VMODE_NONINTERLACED, align 4
  %114 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %115 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %114, i32 0, i32 4
  store i32 %113, i32* %115, align 8
  %116 = load i32, i32* @FB_ROTATE_UR, align 4
  %117 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %7, align 8
  %118 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 4
  ret void
}

declare dso_local i32 @set_pix_fmt(%struct.fb_var_screeninfo*, i32) #1

declare dso_local i8* @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
