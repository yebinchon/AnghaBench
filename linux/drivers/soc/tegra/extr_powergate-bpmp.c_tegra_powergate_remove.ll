; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_powergate-bpmp.c_tegra_powergate_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_powergate-bpmp.c_tegra_powergate_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_powergate = type { %struct.tegra_bpmp*, %struct.generic_pm_domain }
%struct.tegra_bpmp = type { i32 }
%struct.generic_pm_domain = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"failed to remove power domain %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_powergate*)* @tegra_powergate_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_powergate_remove(%struct.tegra_powergate* %0) #0 {
  %2 = alloca %struct.tegra_powergate*, align 8
  %3 = alloca %struct.generic_pm_domain*, align 8
  %4 = alloca %struct.tegra_bpmp*, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_powergate* %0, %struct.tegra_powergate** %2, align 8
  %6 = load %struct.tegra_powergate*, %struct.tegra_powergate** %2, align 8
  %7 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %6, i32 0, i32 1
  store %struct.generic_pm_domain* %7, %struct.generic_pm_domain** %3, align 8
  %8 = load %struct.tegra_powergate*, %struct.tegra_powergate** %2, align 8
  %9 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %8, i32 0, i32 0
  %10 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %9, align 8
  store %struct.tegra_bpmp* %10, %struct.tegra_bpmp** %4, align 8
  %11 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %3, align 8
  %12 = call i32 @pm_genpd_remove(%struct.generic_pm_domain* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %1
  %16 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %4, align 8
  %17 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %3, align 8
  %20 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %15, %1
  %25 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %3, align 8
  %26 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @kfree(i32 %27)
  ret void
}

declare dso_local i32 @pm_genpd_remove(%struct.generic_pm_domain*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
