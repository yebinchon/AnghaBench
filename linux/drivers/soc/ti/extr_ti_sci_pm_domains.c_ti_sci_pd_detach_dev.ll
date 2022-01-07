; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_ti_sci_pm_domains.c_ti_sci_pd_detach_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_ti_sci_pm_domains.c_ti_sci_pd_detach_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { i32 }
%struct.device = type { i32 }
%struct.generic_pm_domain_data = type { %struct.ti_sci_genpd_dev_data* }
%struct.ti_sci_genpd_dev_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.generic_pm_domain*, %struct.device*)* @ti_sci_pd_detach_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_sci_pd_detach_dev(%struct.generic_pm_domain* %0, %struct.device* %1) #0 {
  %3 = alloca %struct.generic_pm_domain*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.generic_pm_domain_data*, align 8
  %6 = alloca %struct.ti_sci_genpd_dev_data*, align 8
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %3, align 8
  store %struct.device* %1, %struct.device** %4, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.generic_pm_domain_data* @dev_gpd_data(%struct.device* %7)
  store %struct.generic_pm_domain_data* %8, %struct.generic_pm_domain_data** %5, align 8
  %9 = load %struct.generic_pm_domain_data*, %struct.generic_pm_domain_data** %5, align 8
  %10 = getelementptr inbounds %struct.generic_pm_domain_data, %struct.generic_pm_domain_data* %9, i32 0, i32 0
  %11 = load %struct.ti_sci_genpd_dev_data*, %struct.ti_sci_genpd_dev_data** %10, align 8
  store %struct.ti_sci_genpd_dev_data* %11, %struct.ti_sci_genpd_dev_data** %6, align 8
  %12 = load %struct.ti_sci_genpd_dev_data*, %struct.ti_sci_genpd_dev_data** %6, align 8
  %13 = call i32 @kfree(%struct.ti_sci_genpd_dev_data* %12)
  %14 = load %struct.generic_pm_domain_data*, %struct.generic_pm_domain_data** %5, align 8
  %15 = getelementptr inbounds %struct.generic_pm_domain_data, %struct.generic_pm_domain_data* %14, i32 0, i32 0
  store %struct.ti_sci_genpd_dev_data* null, %struct.ti_sci_genpd_dev_data** %15, align 8
  ret void
}

declare dso_local %struct.generic_pm_domain_data* @dev_gpd_data(%struct.device*) #1

declare dso_local i32 @kfree(%struct.ti_sci_genpd_dev_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
