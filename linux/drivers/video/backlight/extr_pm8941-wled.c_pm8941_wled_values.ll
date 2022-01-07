; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pm8941-wled.c_pm8941_wled_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/backlight/extr_pm8941-wled.c_pm8941_wled_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8941_wled_var_cfg = type { i64, i64 (i64)*, i64* }

@UINT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pm8941_wled_var_cfg*, i64)* @pm8941_wled_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pm8941_wled_values(%struct.pm8941_wled_var_cfg* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pm8941_wled_var_cfg*, align 8
  %5 = alloca i64, align 8
  store %struct.pm8941_wled_var_cfg* %0, %struct.pm8941_wled_var_cfg** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.pm8941_wled_var_cfg*, %struct.pm8941_wled_var_cfg** %4, align 8
  %8 = getelementptr inbounds %struct.pm8941_wled_var_cfg, %struct.pm8941_wled_var_cfg* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp uge i64 %6, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i64, i64* @UINT_MAX, align 8
  store i64 %12, i64* %3, align 8
  br label %38

13:                                               ; preds = %2
  %14 = load %struct.pm8941_wled_var_cfg*, %struct.pm8941_wled_var_cfg** %4, align 8
  %15 = getelementptr inbounds %struct.pm8941_wled_var_cfg, %struct.pm8941_wled_var_cfg* %14, i32 0, i32 1
  %16 = load i64 (i64)*, i64 (i64)** %15, align 8
  %17 = icmp ne i64 (i64)* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.pm8941_wled_var_cfg*, %struct.pm8941_wled_var_cfg** %4, align 8
  %20 = getelementptr inbounds %struct.pm8941_wled_var_cfg, %struct.pm8941_wled_var_cfg* %19, i32 0, i32 1
  %21 = load i64 (i64)*, i64 (i64)** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i64 %21(i64 %22)
  store i64 %23, i64* %3, align 8
  br label %38

24:                                               ; preds = %13
  %25 = load %struct.pm8941_wled_var_cfg*, %struct.pm8941_wled_var_cfg** %4, align 8
  %26 = getelementptr inbounds %struct.pm8941_wled_var_cfg, %struct.pm8941_wled_var_cfg* %25, i32 0, i32 2
  %27 = load i64*, i64** %26, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.pm8941_wled_var_cfg*, %struct.pm8941_wled_var_cfg** %4, align 8
  %31 = getelementptr inbounds %struct.pm8941_wled_var_cfg, %struct.pm8941_wled_var_cfg* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %3, align 8
  br label %38

36:                                               ; preds = %24
  %37 = load i64, i64* %5, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %36, %29, %18, %11
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
