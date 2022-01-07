; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_monitor.c_radeon_var_to_panel_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_monitor.c_radeon_var_to_panel_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeonfb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i64, i64, i64, i64, i64, i64, i32, i32 }

@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeonfb_info*, %struct.fb_var_screeninfo*)* @radeon_var_to_panel_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_var_to_panel_info(%struct.radeonfb_info* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca %struct.radeonfb_info*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %3, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %4, align 8
  %5 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %6 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %5, i32 0, i32 9
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %9 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 12
  store i32 %7, i32* %10, align 4
  %11 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %12 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %15 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 11
  store i32 %13, i32* %16, align 8
  %17 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %18 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 100000000, %19
  %21 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %22 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 8
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %25 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 6
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %28 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 10
  store i64 %26, i64* %29, align 8
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %34 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 9
  store i64 %32, i64* %35, align 8
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 6
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %43 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = add nsw i64 %38, %45
  %47 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %48 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 8
  store i64 %46, i64* %49, align 8
  %50 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %54 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 7
  store i64 %52, i64* %55, align 8
  %56 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %57 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %60 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 6
  store i64 %58, i64* %61, align 8
  %62 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %69 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = add nsw i64 %64, %71
  %73 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %74 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 5
  store i64 %72, i64* %75, align 8
  %76 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %77 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  %82 = zext i1 %81 to i32
  %83 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %84 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %87 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i32
  %93 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %94 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 2
  store i32 %92, i32* %95, align 8
  %96 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %97 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 3
  store i32 1, i32* %98, align 4
  %99 = load %struct.radeonfb_info*, %struct.radeonfb_info** %3, align 8
  %100 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 4
  store i32 200, i32* %101, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
