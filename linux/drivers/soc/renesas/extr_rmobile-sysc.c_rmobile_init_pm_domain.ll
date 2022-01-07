; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/renesas/extr_rmobile-sysc.c_rmobile_init_pm_domain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/renesas/extr_rmobile-sysc.c_rmobile_init_pm_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmobile_pm_domain = type { %struct.dev_power_governor*, %struct.generic_pm_domain }
%struct.dev_power_governor = type { i32 }
%struct.generic_pm_domain = type { i32, i32, i32, i32, i32 }

@GENPD_FLAG_PM_CLK = common dso_local global i32 0, align 4
@GENPD_FLAG_ACTIVE_WAKEUP = common dso_local global i32 0, align 4
@cpg_mstp_attach_dev = common dso_local global i32 0, align 4
@cpg_mstp_detach_dev = common dso_local global i32 0, align 4
@GENPD_FLAG_ALWAYS_ON = common dso_local global i32 0, align 4
@rmobile_pd_power_down = common dso_local global i32 0, align 4
@rmobile_pd_power_up = common dso_local global i32 0, align 4
@simple_qos_governor = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rmobile_pm_domain*)* @rmobile_init_pm_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rmobile_init_pm_domain(%struct.rmobile_pm_domain* %0) #0 {
  %2 = alloca %struct.rmobile_pm_domain*, align 8
  %3 = alloca %struct.generic_pm_domain*, align 8
  %4 = alloca %struct.dev_power_governor*, align 8
  store %struct.rmobile_pm_domain* %0, %struct.rmobile_pm_domain** %2, align 8
  %5 = load %struct.rmobile_pm_domain*, %struct.rmobile_pm_domain** %2, align 8
  %6 = getelementptr inbounds %struct.rmobile_pm_domain, %struct.rmobile_pm_domain* %5, i32 0, i32 1
  store %struct.generic_pm_domain* %6, %struct.generic_pm_domain** %3, align 8
  %7 = load %struct.rmobile_pm_domain*, %struct.rmobile_pm_domain** %2, align 8
  %8 = getelementptr inbounds %struct.rmobile_pm_domain, %struct.rmobile_pm_domain* %7, i32 0, i32 0
  %9 = load %struct.dev_power_governor*, %struct.dev_power_governor** %8, align 8
  store %struct.dev_power_governor* %9, %struct.dev_power_governor** %4, align 8
  %10 = load i32, i32* @GENPD_FLAG_PM_CLK, align 4
  %11 = load i32, i32* @GENPD_FLAG_ACTIVE_WAKEUP, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %3, align 8
  %14 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  %17 = load i32, i32* @cpg_mstp_attach_dev, align 4
  %18 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %3, align 8
  %19 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @cpg_mstp_detach_dev, align 4
  %21 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %3, align 8
  %22 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %3, align 8
  %24 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GENPD_FLAG_ALWAYS_ON, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @rmobile_pd_power_down, align 4
  %31 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %3, align 8
  %32 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @rmobile_pd_power_up, align 4
  %34 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %3, align 8
  %35 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.rmobile_pm_domain*, %struct.rmobile_pm_domain** %2, align 8
  %37 = call i32 @__rmobile_pd_power_up(%struct.rmobile_pm_domain* %36)
  br label %38

38:                                               ; preds = %29, %1
  %39 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %3, align 8
  %40 = load %struct.dev_power_governor*, %struct.dev_power_governor** %4, align 8
  %41 = icmp ne %struct.dev_power_governor* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = bitcast %struct.dev_power_governor* %40 to i8*
  br label %45

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i8* [ %43, %42 ], [ bitcast (i32* @simple_qos_governor to i8*), %44 ]
  %47 = bitcast i8* %46 to i32*
  %48 = call i32 @pm_genpd_init(%struct.generic_pm_domain* %39, i32* %47, i32 0)
  ret void
}

declare dso_local i32 @__rmobile_pd_power_up(%struct.rmobile_pm_domain*) #1

declare dso_local i32 @pm_genpd_init(%struct.generic_pm_domain*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
