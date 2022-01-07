; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/imx/extr_gpc.c_imx_pgc_power_domain_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/imx/extr_gpc.c_imx_pgc_power_domain_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.imx_pm_domain* }
%struct.imx_pm_domain = type { i32 }

@CONFIG_PM_GENERIC_DOMAINS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_pgc_power_domain_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_pgc_power_domain_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.imx_pm_domain*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %6, align 8
  store %struct.imx_pm_domain* %7, %struct.imx_pm_domain** %3, align 8
  %8 = load i32, i32* @CONFIG_PM_GENERIC_DOMAINS, align 4
  %9 = call i64 @IS_ENABLED(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %1
  %12 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @of_genpd_del_provider(i32 %15)
  %17 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %3, align 8
  %18 = getelementptr inbounds %struct.imx_pm_domain, %struct.imx_pm_domain* %17, i32 0, i32 0
  %19 = call i32 @pm_genpd_remove(i32* %18)
  %20 = load %struct.imx_pm_domain*, %struct.imx_pm_domain** %3, align 8
  %21 = call i32 @imx_pgc_put_clocks(%struct.imx_pm_domain* %20)
  br label %22

22:                                               ; preds = %11, %1
  ret i32 0
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @of_genpd_del_provider(i32) #1

declare dso_local i32 @pm_genpd_remove(i32*) #1

declare dso_local i32 @imx_pgc_put_clocks(%struct.imx_pm_domain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
