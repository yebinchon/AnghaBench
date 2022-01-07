; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/samsung/extr_exynos-pmu.c_exynos_sys_powerdown_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/samsung/extr_exynos-pmu.c_exynos_sys_powerdown_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.exynos_pmu_data* }
%struct.exynos_pmu_data = type { i32 (i32)*, %struct.TYPE_3__*, i32 (i32)* }
%struct.TYPE_3__ = type { i64, i32* }

@pmu_context = common dso_local global %struct.TYPE_4__* null, align 8
@PMU_TABLE_END = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exynos_sys_powerdown_conf(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_pmu_data*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pmu_context, align 8
  %6 = icmp ne %struct.TYPE_4__* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pmu_context, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.exynos_pmu_data*, %struct.exynos_pmu_data** %9, align 8
  %11 = icmp ne %struct.exynos_pmu_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %1
  br label %81

13:                                               ; preds = %7
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @pmu_context, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.exynos_pmu_data*, %struct.exynos_pmu_data** %15, align 8
  store %struct.exynos_pmu_data* %16, %struct.exynos_pmu_data** %4, align 8
  %17 = load %struct.exynos_pmu_data*, %struct.exynos_pmu_data** %4, align 8
  %18 = getelementptr inbounds %struct.exynos_pmu_data, %struct.exynos_pmu_data* %17, i32 0, i32 2
  %19 = load i32 (i32)*, i32 (i32)** %18, align 8
  %20 = icmp ne i32 (i32)* %19, null
  br i1 %20, label %21, label %27

21:                                               ; preds = %13
  %22 = load %struct.exynos_pmu_data*, %struct.exynos_pmu_data** %4, align 8
  %23 = getelementptr inbounds %struct.exynos_pmu_data, %struct.exynos_pmu_data* %22, i32 0, i32 2
  %24 = load i32 (i32)*, i32 (i32)** %23, align 8
  %25 = load i32, i32* %2, align 4
  %26 = call i32 %24(i32 %25)
  br label %27

27:                                               ; preds = %21, %13
  %28 = load %struct.exynos_pmu_data*, %struct.exynos_pmu_data** %4, align 8
  %29 = getelementptr inbounds %struct.exynos_pmu_data, %struct.exynos_pmu_data* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = icmp ne %struct.TYPE_3__* %30, null
  br i1 %31, label %32, label %70

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %66, %32
  %34 = load %struct.exynos_pmu_data*, %struct.exynos_pmu_data** %4, align 8
  %35 = getelementptr inbounds %struct.exynos_pmu_data, %struct.exynos_pmu_data* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PMU_TABLE_END, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %33
  %45 = load %struct.exynos_pmu_data*, %struct.exynos_pmu_data** %4, align 8
  %46 = getelementptr inbounds %struct.exynos_pmu_data, %struct.exynos_pmu_data* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %2, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.exynos_pmu_data*, %struct.exynos_pmu_data** %4, align 8
  %58 = getelementptr inbounds %struct.exynos_pmu_data, %struct.exynos_pmu_data* %57, i32 0, i32 1
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @pmu_raw_writel(i32 %56, i64 %64)
  br label %66

66:                                               ; preds = %44
  %67 = load i32, i32* %3, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %3, align 4
  br label %33

69:                                               ; preds = %33
  br label %70

70:                                               ; preds = %69, %27
  %71 = load %struct.exynos_pmu_data*, %struct.exynos_pmu_data** %4, align 8
  %72 = getelementptr inbounds %struct.exynos_pmu_data, %struct.exynos_pmu_data* %71, i32 0, i32 0
  %73 = load i32 (i32)*, i32 (i32)** %72, align 8
  %74 = icmp ne i32 (i32)* %73, null
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.exynos_pmu_data*, %struct.exynos_pmu_data** %4, align 8
  %77 = getelementptr inbounds %struct.exynos_pmu_data, %struct.exynos_pmu_data* %76, i32 0, i32 0
  %78 = load i32 (i32)*, i32 (i32)** %77, align 8
  %79 = load i32, i32* %2, align 4
  %80 = call i32 %78(i32 %79)
  br label %81

81:                                               ; preds = %12, %75, %70
  ret void
}

declare dso_local i32 @pmu_raw_writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
