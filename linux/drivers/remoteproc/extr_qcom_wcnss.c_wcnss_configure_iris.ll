; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_wcnss.c_wcnss_configure_iris.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_qcom_wcnss.c_wcnss_configure_iris.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_wcnss = type { i32, i64 }

@WCNSS_PMU_GC_BUS_MUX_SEL_TOP = common dso_local global i32 0, align 4
@WCNSS_PMU_IRIS_XO_EN = common dso_local global i32 0, align 4
@WCNSS_PMU_XO_MODE_MASK = common dso_local global i32 0, align 4
@WCNSS_PMU_XO_MODE_48 = common dso_local global i32 0, align 4
@WCNSS_PMU_XO_MODE_19p2 = common dso_local global i32 0, align 4
@WCNSS_PMU_IRIS_RESET = common dso_local global i32 0, align 4
@WCNSS_PMU_IRIS_RESET_STS = common dso_local global i32 0, align 4
@WCNSS_PMU_IRIS_XO_CFG = common dso_local global i32 0, align 4
@WCNSS_PMU_IRIS_XO_CFG_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_wcnss*)* @wcnss_configure_iris to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wcnss_configure_iris(%struct.qcom_wcnss* %0) #0 {
  %2 = alloca %struct.qcom_wcnss*, align 8
  %3 = alloca i32, align 4
  store %struct.qcom_wcnss* %0, %struct.qcom_wcnss** %2, align 8
  %4 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %2, align 8
  %5 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @writel(i32 0, i32 %6)
  %8 = load i32, i32* @WCNSS_PMU_GC_BUS_MUX_SEL_TOP, align 4
  %9 = load i32, i32* @WCNSS_PMU_IRIS_XO_EN, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %2, align 8
  %13 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @writel(i32 %11, i32 %14)
  %16 = load i32, i32* @WCNSS_PMU_XO_MODE_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %2, align 8
  %21 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @WCNSS_PMU_XO_MODE_48, align 4
  %26 = shl i32 %25, 1
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  br label %34

29:                                               ; preds = %1
  %30 = load i32, i32* @WCNSS_PMU_XO_MODE_19p2, align 4
  %31 = shl i32 %30, 1
  %32 = load i32, i32* %3, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %2, align 8
  %37 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @writel(i32 %35, i32 %38)
  %40 = load i32, i32* @WCNSS_PMU_IRIS_RESET, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %2, align 8
  %45 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @writel(i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %56, %34
  %49 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %2, align 8
  %50 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @readl(i32 %51)
  %53 = load i32, i32* @WCNSS_PMU_IRIS_RESET_STS, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = call i32 (...) @cpu_relax()
  br label %48

58:                                               ; preds = %48
  %59 = load i32, i32* @WCNSS_PMU_IRIS_RESET, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %3, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %3, align 4
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %2, align 8
  %65 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @writel(i32 %63, i32 %66)
  %68 = load i32, i32* @WCNSS_PMU_IRIS_XO_CFG, align 4
  %69 = load i32, i32* %3, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %2, align 8
  %73 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @writel(i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %84, %58
  %77 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %2, align 8
  %78 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @readl(i32 %79)
  %81 = load i32, i32* @WCNSS_PMU_IRIS_XO_CFG_STS, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %76
  %85 = call i32 (...) @cpu_relax()
  br label %76

86:                                               ; preds = %76
  %87 = load i32, i32* @WCNSS_PMU_GC_BUS_MUX_SEL_TOP, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %3, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %3, align 4
  %91 = load i32, i32* @WCNSS_PMU_IRIS_XO_CFG, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %3, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %3, align 4
  %95 = load i32, i32* %3, align 4
  %96 = load %struct.qcom_wcnss*, %struct.qcom_wcnss** %2, align 8
  %97 = getelementptr inbounds %struct.qcom_wcnss, %struct.qcom_wcnss* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @writel(i32 %95, i32 %98)
  %100 = call i32 @msleep(i32 20)
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
