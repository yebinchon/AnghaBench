; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_powergate_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_powergate_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.generic_pm_domain = type { i32 }
%struct.tegra_powergate = type { i64, i32, %struct.tegra_powergate*, i32 }

@pmc = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.generic_pm_domain*)* @tegra_powergate_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_powergate_remove(%struct.generic_pm_domain* %0) #0 {
  %2 = alloca %struct.generic_pm_domain*, align 8
  %3 = alloca %struct.tegra_powergate*, align 8
  store %struct.generic_pm_domain* %0, %struct.generic_pm_domain** %2, align 8
  %4 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %2, align 8
  %5 = call %struct.tegra_powergate* @to_powergate(%struct.generic_pm_domain* %4)
  store %struct.tegra_powergate* %5, %struct.tegra_powergate** %3, align 8
  %6 = load %struct.tegra_powergate*, %struct.tegra_powergate** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @reset_control_put(i32 %8)
  br label %10

10:                                               ; preds = %16, %1
  %11 = load %struct.tegra_powergate*, %struct.tegra_powergate** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = add i64 %13, -1
  store i64 %14, i64* %12, align 8
  %15 = icmp ne i64 %13, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %10
  %17 = load %struct.tegra_powergate*, %struct.tegra_powergate** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %17, i32 0, i32 2
  %19 = load %struct.tegra_powergate*, %struct.tegra_powergate** %18, align 8
  %20 = load %struct.tegra_powergate*, %struct.tegra_powergate** %3, align 8
  %21 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %19, i64 %22
  %24 = call i32 @clk_put(%struct.tegra_powergate* byval(%struct.tegra_powergate) align 8 %23)
  br label %10

25:                                               ; preds = %10
  %26 = load %struct.tegra_powergate*, %struct.tegra_powergate** %3, align 8
  %27 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %26, i32 0, i32 2
  %28 = load %struct.tegra_powergate*, %struct.tegra_powergate** %27, align 8
  %29 = call i32 @kfree(%struct.tegra_powergate* %28)
  %30 = load %struct.tegra_powergate*, %struct.tegra_powergate** %3, align 8
  %31 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmc, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @set_bit(i32 %32, i32 %35)
  %37 = load %struct.tegra_powergate*, %struct.tegra_powergate** %3, align 8
  %38 = call i32 @kfree(%struct.tegra_powergate* %37)
  ret void
}

declare dso_local %struct.tegra_powergate* @to_powergate(%struct.generic_pm_domain*) #1

declare dso_local i32 @reset_control_put(i32) #1

declare dso_local i32 @clk_put(%struct.tegra_powergate* byval(%struct.tegra_powergate) align 8) #1

declare dso_local i32 @kfree(%struct.tegra_powergate*) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
