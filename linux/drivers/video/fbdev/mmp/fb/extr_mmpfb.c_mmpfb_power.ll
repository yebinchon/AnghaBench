; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_mmpfb_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_mmpfb_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmpfb_info = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.fb_var_screeninfo }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32 }
%struct.mmp_addr = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmpfb_info*, i32)* @mmpfb_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmpfb_power(%struct.mmpfb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mmpfb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmp_addr, align 8
  %6 = alloca %struct.fb_var_screeninfo*, align 8
  store %struct.mmpfb_info* %0, %struct.mmpfb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mmpfb_info*, %struct.mmpfb_info** %3, align 8
  %8 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.fb_var_screeninfo* %10, %struct.fb_var_screeninfo** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %47

13:                                               ; preds = %2
  %14 = load %struct.mmpfb_info*, %struct.mmpfb_info** %3, align 8
  %15 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call i32 @mmpfb_set_win(%struct.TYPE_2__* %16)
  %18 = call i32 @memset(%struct.mmp_addr* %5, i32 0, i32 8)
  %19 = load %struct.mmpfb_info*, %struct.mmpfb_info** %3, align 8
  %20 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %23 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %26 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %30 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %28, %31
  %33 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %34 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %32, %35
  %37 = sdiv i32 %36, 8
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %21, %38
  %40 = getelementptr inbounds %struct.mmp_addr, %struct.mmp_addr* %5, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 %39, i64* %42, align 8
  %43 = load %struct.mmpfb_info*, %struct.mmpfb_info** %3, align 8
  %44 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @mmp_overlay_set_addr(i32 %45, %struct.mmp_addr* %5)
  br label %47

47:                                               ; preds = %13, %2
  %48 = load %struct.mmpfb_info*, %struct.mmpfb_info** %3, align 8
  %49 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @mmp_overlay_set_onoff(i32 %50, i32 %51)
  ret void
}

declare dso_local i32 @mmpfb_set_win(%struct.TYPE_2__*) #1

declare dso_local i32 @memset(%struct.mmp_addr*, i32, i32) #1

declare dso_local i32 @mmp_overlay_set_addr(i32, %struct.mmp_addr*) #1

declare dso_local i32 @mmp_overlay_set_onoff(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
