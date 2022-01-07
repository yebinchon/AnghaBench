; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbmem.c_fb_check_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbmem.c_fb_check_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)* }
%struct.fb_blit_caps = type { i32, i32, i32, i64 }
%struct.fb_var_screeninfo = type { i32 }

@FB_ACTIVATE_ALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.fb_var_screeninfo*, i32)* @fb_check_caps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fb_check_caps(%struct.fb_info* %0, %struct.fb_var_screeninfo* %1, i32 %2) #0 {
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fb_blit_caps, align 8
  %8 = alloca %struct.fb_blit_caps, align 8
  %9 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = call i32 @memset(%struct.fb_blit_caps* %7, i32 0, i32 24)
  %11 = call i32 @memset(%struct.fb_blit_caps* %8, i32 0, i32 24)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @FB_ACTIVATE_ALL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  %18 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %7, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %20 = call i32 @fbcon_get_requirement(%struct.fb_info* %19, %struct.fb_blit_caps* %7)
  %21 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)*, i32 (%struct.fb_info*, %struct.fb_blit_caps*, %struct.fb_var_screeninfo*)** %24, align 8
  %26 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %28 = call i32 %25(%struct.fb_info* %26, %struct.fb_blit_caps* %8, %struct.fb_var_screeninfo* %27)
  %29 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %8, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %7, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = xor i32 %30, %32
  %34 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %7, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %33, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %54, label %38

38:                                               ; preds = %3
  %39 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %8, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %7, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = xor i32 %40, %42
  %44 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %7, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %43, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %8, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.fb_blit_caps, %struct.fb_blit_caps* %7, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %50, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %48, %38, %3
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %9, align 4
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local i32 @memset(%struct.fb_blit_caps*, i32, i32) #1

declare dso_local i32 @fbcon_get_requirement(%struct.fb_info*, %struct.fb_blit_caps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
