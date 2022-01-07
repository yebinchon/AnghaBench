; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_wm8505fb.c_contrast_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_wm8505fb.c_contrast_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fb_info = type { i32 }
%struct.wm8505fb_info = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @contrast_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @contrast_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fb_info*, align 8
  %11 = alloca %struct.wm8505fb_info*, align 8
  %12 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.fb_info* @dev_get_drvdata(%struct.device* %13)
  store %struct.fb_info* %14, %struct.fb_info** %10, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %16 = call %struct.wm8505fb_info* @to_wm8505fb_info(%struct.fb_info* %15)
  store %struct.wm8505fb_info* %16, %struct.wm8505fb_info** %11, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @kstrtoul(i8* %17, i32 10, i64* %12)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i64, i64* %12, align 8
  %22 = icmp ugt i64 %21, 255
  br i1 %22, label %23, label %26

23:                                               ; preds = %20, %4
  %24 = load i64, i64* @EINVAL, align 8
  %25 = sub i64 0, %24
  store i64 %25, i64* %5, align 8
  br label %33

26:                                               ; preds = %20
  %27 = load i64, i64* %12, align 8
  %28 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %11, align 8
  %29 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.fb_info*, %struct.fb_info** %10, align 8
  %31 = call i32 @wm8505fb_set_par(%struct.fb_info* %30)
  %32 = load i64, i64* %9, align 8
  store i64 %32, i64* %5, align 8
  br label %33

33:                                               ; preds = %26, %23
  %34 = load i64, i64* %5, align 8
  ret i64 %34
}

declare dso_local %struct.fb_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.wm8505fb_info* @to_wm8505fb_info(%struct.fb_info*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @wm8505fb_set_par(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
