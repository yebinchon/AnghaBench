; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_retention_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_retention_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_pinctrl_drv_data = type { %struct.samsung_retention_ctrl* }
%struct.samsung_retention_ctrl = type { i32, i32, i32*, i64, %struct.regmap* }
%struct.regmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.samsung_pinctrl_drv_data*)* @exynos_retention_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_retention_disable(%struct.samsung_pinctrl_drv_data* %0) #0 {
  %2 = alloca %struct.samsung_pinctrl_drv_data*, align 8
  %3 = alloca %struct.samsung_retention_ctrl*, align 8
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca i32, align 4
  store %struct.samsung_pinctrl_drv_data* %0, %struct.samsung_pinctrl_drv_data** %2, align 8
  %6 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %2, align 8
  %7 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %6, i32 0, i32 0
  %8 = load %struct.samsung_retention_ctrl*, %struct.samsung_retention_ctrl** %7, align 8
  store %struct.samsung_retention_ctrl* %8, %struct.samsung_retention_ctrl** %3, align 8
  %9 = load %struct.samsung_retention_ctrl*, %struct.samsung_retention_ctrl** %3, align 8
  %10 = getelementptr inbounds %struct.samsung_retention_ctrl, %struct.samsung_retention_ctrl* %9, i32 0, i32 4
  %11 = load %struct.regmap*, %struct.regmap** %10, align 8
  store %struct.regmap* %11, %struct.regmap** %4, align 8
  %12 = load %struct.samsung_retention_ctrl*, %struct.samsung_retention_ctrl** %3, align 8
  %13 = getelementptr inbounds %struct.samsung_retention_ctrl, %struct.samsung_retention_ctrl* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.samsung_retention_ctrl*, %struct.samsung_retention_ctrl** %3, align 8
  %18 = getelementptr inbounds %struct.samsung_retention_ctrl, %struct.samsung_retention_ctrl* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @atomic_dec_and_test(i64 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %16
  br label %46

23:                                               ; preds = %16, %1
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %43, %23
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.samsung_retention_ctrl*, %struct.samsung_retention_ctrl** %3, align 8
  %27 = getelementptr inbounds %struct.samsung_retention_ctrl, %struct.samsung_retention_ctrl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load %struct.regmap*, %struct.regmap** %4, align 8
  %32 = load %struct.samsung_retention_ctrl*, %struct.samsung_retention_ctrl** %3, align 8
  %33 = getelementptr inbounds %struct.samsung_retention_ctrl, %struct.samsung_retention_ctrl* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.samsung_retention_ctrl*, %struct.samsung_retention_ctrl** %3, align 8
  %40 = getelementptr inbounds %struct.samsung_retention_ctrl, %struct.samsung_retention_ctrl* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @regmap_write(%struct.regmap* %31, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %30
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %24

46:                                               ; preds = %22, %24
  ret void
}

declare dso_local i32 @atomic_dec_and_test(i64) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
