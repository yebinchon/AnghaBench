; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos4412_tmu_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos4412_tmu_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.exynos_tmu_data = type { i64, i64, i64 }

@SOC_ARCH_EXYNOS3250 = common dso_local global i64 0, align 8
@SOC_ARCH_EXYNOS4412 = common dso_local global i64 0, align 8
@SOC_ARCH_EXYNOS5250 = common dso_local global i64 0, align 8
@EXYNOS_TMU_TRIMINFO_CON1 = common dso_local global i64 0, align 8
@EXYNOS_TRIMINFO_RELOAD_ENABLE = common dso_local global i32 0, align 4
@EXYNOS_TMU_TRIMINFO_CON2 = common dso_local global i64 0, align 8
@SOC_ARCH_EXYNOS5420_TRIMINFO = common dso_local global i64 0, align 8
@EXYNOS_TMU_REG_TRIMINFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @exynos4412_tmu_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4412_tmu_initialize(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.exynos_tmu_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.exynos_tmu_data* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.exynos_tmu_data* %7, %struct.exynos_tmu_data** %3, align 8
  %8 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %9 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @SOC_ARCH_EXYNOS3250, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %25, label %13

13:                                               ; preds = %1
  %14 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %15 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @SOC_ARCH_EXYNOS4412, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %25, label %19

19:                                               ; preds = %13
  %20 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %21 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @SOC_ARCH_EXYNOS5250, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %19, %13, %1
  %26 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %27 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SOC_ARCH_EXYNOS3250, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %25
  %32 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %33 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @EXYNOS_TMU_TRIMINFO_CON1, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @readl(i64 %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @EXYNOS_TRIMINFO_RELOAD_ENABLE, align 4
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %43 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @EXYNOS_TMU_TRIMINFO_CON1, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @writel(i32 %41, i64 %46)
  br label %48

48:                                               ; preds = %31, %25
  %49 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %50 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @EXYNOS_TMU_TRIMINFO_CON2, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @readl(i64 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @EXYNOS_TRIMINFO_RELOAD_ENABLE, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %60 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @EXYNOS_TMU_TRIMINFO_CON2, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @writel(i32 %58, i64 %63)
  br label %65

65:                                               ; preds = %48, %19
  %66 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %67 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SOC_ARCH_EXYNOS5420_TRIMINFO, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %65
  %72 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %73 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @EXYNOS_TMU_REG_TRIMINFO, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @readl(i64 %76)
  store i32 %77, i32* %4, align 4
  br label %85

78:                                               ; preds = %65
  %79 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %80 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @EXYNOS_TMU_REG_TRIMINFO, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @readl(i64 %83)
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %78, %71
  %86 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 @sanitize_temp_error(%struct.exynos_tmu_data* %86, i32 %87)
  ret void
}

declare dso_local %struct.exynos_tmu_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @sanitize_temp_error(%struct.exynos_tmu_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
