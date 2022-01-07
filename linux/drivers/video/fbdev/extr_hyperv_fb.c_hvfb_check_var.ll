; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_hyperv_fb.c_hvfb_check_var.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_hyperv_fb.c_hvfb_check_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i64, i64, i64, i64, i64 }
%struct.fb_info = type { i32 }

@HVFB_WIDTH_MIN = common dso_local global i64 0, align 8
@HVFB_HEIGHT_MIN = common dso_local global i64 0, align 8
@screen_width = common dso_local global i64 0, align 8
@screen_height = common dso_local global i64 0, align 8
@screen_depth = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_var_screeninfo*, %struct.fb_info*)* @hvfb_check_var to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvfb_check_var(%struct.fb_var_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  store %struct.fb_var_screeninfo* %0, %struct.fb_var_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %6 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %7 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @HVFB_WIDTH_MIN, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %35, label %11

11:                                               ; preds = %2
  %12 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %13 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HVFB_HEIGHT_MIN, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %35, label %17

17:                                               ; preds = %11
  %18 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %19 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @screen_width, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %17
  %24 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %25 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @screen_height, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %31 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @screen_depth, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %23, %17, %11, %2
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %49

38:                                               ; preds = %29
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %43 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %42, i32 0, i32 3
  store i64 %41, i64* %43, align 8
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %48 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %47, i32 0, i32 4
  store i64 %46, i64* %48, align 8
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %38, %35
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
