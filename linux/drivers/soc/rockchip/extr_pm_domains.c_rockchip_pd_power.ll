; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pd_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/rockchip/extr_pm_domains.c_rockchip_pd_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pm_domain = type { i32, i32, %struct.rockchip_pmu* }
%struct.rockchip_pmu = type { i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"failed to enable clocks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_pm_domain*, i32)* @rockchip_pd_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pd_power(%struct.rockchip_pm_domain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rockchip_pm_domain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rockchip_pmu*, align 8
  %7 = alloca i32, align 4
  store %struct.rockchip_pm_domain* %0, %struct.rockchip_pm_domain** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %4, align 8
  %9 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %8, i32 0, i32 2
  %10 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %9, align 8
  store %struct.rockchip_pmu* %10, %struct.rockchip_pmu** %6, align 8
  %11 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %6, align 8
  %12 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %4, align 8
  %15 = call i32 @rockchip_pmu_domain_is_on(%struct.rockchip_pm_domain* %14)
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %64

18:                                               ; preds = %2
  %19 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %4, align 8
  %20 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %4, align 8
  %23 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @clk_bulk_enable(i32 %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %18
  %29 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %6, align 8
  %30 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %6, align 8
  %34 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %33, i32 0, i32 0
  %35 = call i32 @mutex_unlock(i32* %34)
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %68

37:                                               ; preds = %18
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %37
  %41 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %4, align 8
  %42 = call i32 @rockchip_pmu_save_qos(%struct.rockchip_pm_domain* %41)
  %43 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %4, align 8
  %44 = call i32 @rockchip_pmu_set_idle_request(%struct.rockchip_pm_domain* %43, i32 1)
  br label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @rockchip_do_pmu_set_power_domain(%struct.rockchip_pm_domain* %46, i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %4, align 8
  %53 = call i32 @rockchip_pmu_set_idle_request(%struct.rockchip_pm_domain* %52, i32 0)
  %54 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %4, align 8
  %55 = call i32 @rockchip_pmu_restore_qos(%struct.rockchip_pm_domain* %54)
  br label %56

56:                                               ; preds = %51, %45
  %57 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %4, align 8
  %58 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rockchip_pm_domain*, %struct.rockchip_pm_domain** %4, align 8
  %61 = getelementptr inbounds %struct.rockchip_pm_domain, %struct.rockchip_pm_domain* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @clk_bulk_disable(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %56, %2
  %65 = load %struct.rockchip_pmu*, %struct.rockchip_pmu** %6, align 8
  %66 = getelementptr inbounds %struct.rockchip_pmu, %struct.rockchip_pmu* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %28
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rockchip_pmu_domain_is_on(%struct.rockchip_pm_domain*) #1

declare dso_local i32 @clk_bulk_enable(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rockchip_pmu_save_qos(%struct.rockchip_pm_domain*) #1

declare dso_local i32 @rockchip_pmu_set_idle_request(%struct.rockchip_pm_domain*, i32) #1

declare dso_local i32 @rockchip_do_pmu_set_power_domain(%struct.rockchip_pm_domain*, i32) #1

declare dso_local i32 @rockchip_pmu_restore_qos(%struct.rockchip_pm_domain*) #1

declare dso_local i32 @clk_bulk_disable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
