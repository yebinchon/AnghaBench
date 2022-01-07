; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos_get_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos_get_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_tmu_data = type { i32 (%struct.exynos_tmu_data*)*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@MCELSIUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*)* @exynos_get_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_get_temp(i8* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.exynos_tmu_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.exynos_tmu_data*
  store %struct.exynos_tmu_data* %10, %struct.exynos_tmu_data** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %6, align 8
  %12 = icmp ne %struct.exynos_tmu_data* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %6, align 8
  %15 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %14, i32 0, i32 0
  %16 = load i32 (%struct.exynos_tmu_data*)*, i32 (%struct.exynos_tmu_data*)** %15, align 8
  %17 = icmp ne i32 (%struct.exynos_tmu_data*)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13, %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %63

21:                                               ; preds = %13
  %22 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %6, align 8
  %23 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %63

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %6, align 8
  %32 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %6, align 8
  %35 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @clk_enable(i32 %36)
  %38 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %6, align 8
  %39 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %38, i32 0, i32 0
  %40 = load i32 (%struct.exynos_tmu_data*)*, i32 (%struct.exynos_tmu_data*)** %39, align 8
  %41 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %6, align 8
  %42 = call i32 %40(%struct.exynos_tmu_data* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %8, align 4
  br label %54

47:                                               ; preds = %30
  %48 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @code_to_temp(%struct.exynos_tmu_data* %48, i32 %49)
  %51 = load i32, i32* @MCELSIUS, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %47, %45
  %55 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %6, align 8
  %56 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @clk_disable(i32 %57)
  %59 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %6, align 8
  %60 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %59, i32 0, i32 1
  %61 = call i32 @mutex_unlock(i32* %60)
  %62 = load i32, i32* %8, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %54, %26, %18
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @code_to_temp(%struct.exynos_tmu_data*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
