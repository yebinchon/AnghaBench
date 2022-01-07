; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_powergate_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_powergate_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pmc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@TEGRA_POWERGATE_3D = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PWRGATE_TOGGLE_START = common dso_local global i32 0, align 4
@PWRGATE_TOGGLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pmc*, i32, i32)* @tegra_powergate_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_powergate_set(%struct.tegra_pmc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_pmc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tegra_pmc* %0, %struct.tegra_pmc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @TEGRA_POWERGATE_3D, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.tegra_pmc*, %struct.tegra_pmc** %5, align 8
  %15 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %53

23:                                               ; preds = %13, %3
  %24 = load %struct.tegra_pmc*, %struct.tegra_pmc** %5, align 8
  %25 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @tegra_powergate_state(i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load %struct.tegra_pmc*, %struct.tegra_pmc** %5, align 8
  %33 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  store i32 0, i32* %4, align 4
  br label %53

35:                                               ; preds = %23
  %36 = load %struct.tegra_pmc*, %struct.tegra_pmc** %5, align 8
  %37 = load i32, i32* @PWRGATE_TOGGLE_START, align 4
  %38 = load i32, i32* %6, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @PWRGATE_TOGGLE, align 4
  %41 = call i32 @tegra_pmc_writel(%struct.tegra_pmc* %36, i32 %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @readx_poll_timeout(i32 (i32)* @tegra_powergate_state, i32 %42, i32 %43, i32 %47, i32 10, i32 100000)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.tegra_pmc*, %struct.tegra_pmc** %5, align 8
  %50 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %49, i32 0, i32 0
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %35, %31, %20
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tegra_powergate_state(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tegra_pmc_writel(%struct.tegra_pmc*, i32, i32) #1

declare dso_local i32 @readx_poll_timeout(i32 (i32)*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
