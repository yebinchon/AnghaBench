; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_pmc_pinctrl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_pmc.c_tegra_pmc_pinctrl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.tegra_pmc = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }

@tegra_pmc_pctl_desc = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [39 x i8] c"failed to register pin controller: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pmc*)* @tegra_pmc_pinctrl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pmc_pinctrl_init(%struct.tegra_pmc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pmc*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_pmc* %0, %struct.tegra_pmc** %3, align 8
  %5 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %6 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

12:                                               ; preds = %1
  %13 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %14 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @dev_name(i32 %15)
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tegra_pmc_pctl_desc, i32 0, i32 2), align 4
  %17 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tegra_pmc_pctl_desc, i32 0, i32 1), align 8
  %22 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %23 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @tegra_pmc_pctl_desc, i32 0, i32 0), align 8
  %27 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %28 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %31 = call i32 @devm_pinctrl_register(i32 %29, %struct.TYPE_5__* @tegra_pmc_pctl_desc, %struct.tegra_pmc* %30)
  %32 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %35 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %12
  %40 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %41 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load %struct.tegra_pmc*, %struct.tegra_pmc** %3, align 8
  %45 = getelementptr inbounds %struct.tegra_pmc, %struct.tegra_pmc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* %4, align 4
  store i32 %49, i32* %2, align 4
  br label %51

50:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %39, %11
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @devm_pinctrl_register(i32, %struct.TYPE_5__*, %struct.tegra_pmc*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
