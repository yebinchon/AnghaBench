; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_retention_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/samsung/extr_pinctrl-exynos.c_exynos_retention_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_retention_ctrl = type { i32, i32, i32*, i32, i32, i32, %struct.regmap* }
%struct.regmap = type { i32 }
%struct.samsung_pinctrl_drv_data = type { i32 }
%struct.samsung_retention_data = type { i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@exynos_retention_enable = common dso_local global i32 0, align 4
@exynos_retention_disable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.samsung_retention_ctrl* @exynos_retention_init(%struct.samsung_pinctrl_drv_data* %0, %struct.samsung_retention_data* %1) #0 {
  %3 = alloca %struct.samsung_retention_ctrl*, align 8
  %4 = alloca %struct.samsung_pinctrl_drv_data*, align 8
  %5 = alloca %struct.samsung_retention_data*, align 8
  %6 = alloca %struct.samsung_retention_ctrl*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  store %struct.samsung_pinctrl_drv_data* %0, %struct.samsung_pinctrl_drv_data** %4, align 8
  store %struct.samsung_retention_data* %1, %struct.samsung_retention_data** %5, align 8
  %9 = load %struct.samsung_pinctrl_drv_data*, %struct.samsung_pinctrl_drv_data** %4, align 8
  %10 = getelementptr inbounds %struct.samsung_pinctrl_drv_data, %struct.samsung_pinctrl_drv_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.samsung_retention_ctrl* @devm_kzalloc(i32 %11, i32 40, i32 %12)
  store %struct.samsung_retention_ctrl* %13, %struct.samsung_retention_ctrl** %6, align 8
  %14 = load %struct.samsung_retention_ctrl*, %struct.samsung_retention_ctrl** %6, align 8
  %15 = icmp ne %struct.samsung_retention_ctrl* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.samsung_retention_ctrl* @ERR_PTR(i32 %18)
  store %struct.samsung_retention_ctrl* %19, %struct.samsung_retention_ctrl** %3, align 8
  br label %82

20:                                               ; preds = %2
  %21 = call %struct.regmap* (...) @exynos_get_pmu_regmap()
  store %struct.regmap* %21, %struct.regmap** %7, align 8
  %22 = load %struct.regmap*, %struct.regmap** %7, align 8
  %23 = call i64 @IS_ERR(%struct.regmap* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.regmap*, %struct.regmap** %7, align 8
  %27 = call %struct.samsung_retention_ctrl* @ERR_CAST(%struct.regmap* %26)
  store %struct.samsung_retention_ctrl* %27, %struct.samsung_retention_ctrl** %3, align 8
  br label %82

28:                                               ; preds = %20
  %29 = load %struct.regmap*, %struct.regmap** %7, align 8
  %30 = load %struct.samsung_retention_ctrl*, %struct.samsung_retention_ctrl** %6, align 8
  %31 = getelementptr inbounds %struct.samsung_retention_ctrl, %struct.samsung_retention_ctrl* %30, i32 0, i32 6
  store %struct.regmap* %29, %struct.regmap** %31, align 8
  %32 = load %struct.samsung_retention_data*, %struct.samsung_retention_data** %5, align 8
  %33 = getelementptr inbounds %struct.samsung_retention_data, %struct.samsung_retention_data* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.samsung_retention_ctrl*, %struct.samsung_retention_ctrl** %6, align 8
  %36 = getelementptr inbounds %struct.samsung_retention_ctrl, %struct.samsung_retention_ctrl* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load %struct.samsung_retention_data*, %struct.samsung_retention_data** %5, align 8
  %38 = getelementptr inbounds %struct.samsung_retention_data, %struct.samsung_retention_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.samsung_retention_ctrl*, %struct.samsung_retention_ctrl** %6, align 8
  %41 = getelementptr inbounds %struct.samsung_retention_ctrl, %struct.samsung_retention_ctrl* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.samsung_retention_data*, %struct.samsung_retention_data** %5, align 8
  %43 = getelementptr inbounds %struct.samsung_retention_data, %struct.samsung_retention_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.samsung_retention_ctrl*, %struct.samsung_retention_ctrl** %6, align 8
  %46 = getelementptr inbounds %struct.samsung_retention_ctrl, %struct.samsung_retention_ctrl* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.samsung_retention_data*, %struct.samsung_retention_data** %5, align 8
  %48 = getelementptr inbounds %struct.samsung_retention_data, %struct.samsung_retention_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.samsung_retention_ctrl*, %struct.samsung_retention_ctrl** %6, align 8
  %51 = getelementptr inbounds %struct.samsung_retention_ctrl, %struct.samsung_retention_ctrl* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @exynos_retention_enable, align 4
  %53 = load %struct.samsung_retention_ctrl*, %struct.samsung_retention_ctrl** %6, align 8
  %54 = getelementptr inbounds %struct.samsung_retention_ctrl, %struct.samsung_retention_ctrl* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @exynos_retention_disable, align 4
  %56 = load %struct.samsung_retention_ctrl*, %struct.samsung_retention_ctrl** %6, align 8
  %57 = getelementptr inbounds %struct.samsung_retention_ctrl, %struct.samsung_retention_ctrl* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %77, %28
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.samsung_retention_ctrl*, %struct.samsung_retention_ctrl** %6, align 8
  %61 = getelementptr inbounds %struct.samsung_retention_ctrl, %struct.samsung_retention_ctrl* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %58
  %65 = load %struct.regmap*, %struct.regmap** %7, align 8
  %66 = load %struct.samsung_retention_ctrl*, %struct.samsung_retention_ctrl** %6, align 8
  %67 = getelementptr inbounds %struct.samsung_retention_ctrl, %struct.samsung_retention_ctrl* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.samsung_retention_ctrl*, %struct.samsung_retention_ctrl** %6, align 8
  %74 = getelementptr inbounds %struct.samsung_retention_ctrl, %struct.samsung_retention_ctrl* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @regmap_write(%struct.regmap* %65, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %64
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %58

80:                                               ; preds = %58
  %81 = load %struct.samsung_retention_ctrl*, %struct.samsung_retention_ctrl** %6, align 8
  store %struct.samsung_retention_ctrl* %81, %struct.samsung_retention_ctrl** %3, align 8
  br label %82

82:                                               ; preds = %80, %25, %16
  %83 = load %struct.samsung_retention_ctrl*, %struct.samsung_retention_ctrl** %3, align 8
  ret %struct.samsung_retention_ctrl* %83
}

declare dso_local %struct.samsung_retention_ctrl* @devm_kzalloc(i32, i32, i32) #1

declare dso_local %struct.samsung_retention_ctrl* @ERR_PTR(i32) #1

declare dso_local %struct.regmap* @exynos_get_pmu_regmap(...) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local %struct.samsung_retention_ctrl* @ERR_CAST(%struct.regmap*) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
