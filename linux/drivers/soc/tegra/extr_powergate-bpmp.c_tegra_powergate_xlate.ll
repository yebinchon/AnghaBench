; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_powergate-bpmp.c_tegra_powergate_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_powergate-bpmp.c_tegra_powergate_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.generic_pm_domain = type { i32 }
%struct.of_phandle_args = type { i64* }
%struct.genpd_onecell_data = type { i32, i32* }
%struct.tegra_powergate = type { i64, %struct.generic_pm_domain }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.generic_pm_domain* (%struct.of_phandle_args*, i8*)* @tegra_powergate_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.generic_pm_domain* @tegra_powergate_xlate(%struct.of_phandle_args* %0, i8* %1) #0 {
  %3 = alloca %struct.of_phandle_args*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.generic_pm_domain*, align 8
  %6 = alloca %struct.genpd_onecell_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_powergate*, align 8
  store %struct.of_phandle_args* %0, %struct.of_phandle_args** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @ENOENT, align 4
  %10 = sub nsw i32 0, %9
  %11 = call %struct.generic_pm_domain* @ERR_PTR(i32 %10)
  store %struct.generic_pm_domain* %11, %struct.generic_pm_domain** %5, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.genpd_onecell_data*
  store %struct.genpd_onecell_data* %13, %struct.genpd_onecell_data** %6, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %42, %2
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %6, align 8
  %17 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %45

20:                                               ; preds = %14
  %21 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %6, align 8
  %22 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.tegra_powergate* @to_tegra_powergate(i32 %27)
  store %struct.tegra_powergate* %28, %struct.tegra_powergate** %8, align 8
  %29 = load %struct.tegra_powergate*, %struct.tegra_powergate** %8, align 8
  %30 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.of_phandle_args*, %struct.of_phandle_args** %3, align 8
  %33 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %31, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %20
  %39 = load %struct.tegra_powergate*, %struct.tegra_powergate** %8, align 8
  %40 = getelementptr inbounds %struct.tegra_powergate, %struct.tegra_powergate* %39, i32 0, i32 1
  store %struct.generic_pm_domain* %40, %struct.generic_pm_domain** %5, align 8
  br label %45

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %7, align 4
  %44 = add i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %14

45:                                               ; preds = %38, %14
  %46 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %5, align 8
  ret %struct.generic_pm_domain* %46
}

declare dso_local %struct.generic_pm_domain* @ERR_PTR(i32) #1

declare dso_local %struct.tegra_powergate* @to_tegra_powergate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
