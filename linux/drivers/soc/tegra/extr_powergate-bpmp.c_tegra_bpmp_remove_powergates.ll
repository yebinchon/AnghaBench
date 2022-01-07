; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_powergate-bpmp.c_tegra_bpmp_remove_powergates.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/tegra/extr_powergate-bpmp.c_tegra_bpmp_remove_powergates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_bpmp = type { i32, %struct.genpd_onecell_data }
%struct.genpd_onecell_data = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }
%struct.tegra_powergate = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"removing power domain %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_bpmp*)* @tegra_bpmp_remove_powergates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_bpmp_remove_powergates(%struct.tegra_bpmp* %0) #0 {
  %2 = alloca %struct.tegra_bpmp*, align 8
  %3 = alloca %struct.genpd_onecell_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_powergate*, align 8
  store %struct.tegra_bpmp* %0, %struct.tegra_bpmp** %2, align 8
  %6 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %2, align 8
  %7 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %6, i32 0, i32 1
  store %struct.genpd_onecell_data* %7, %struct.genpd_onecell_data** %3, align 8
  %8 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %3, align 8
  %9 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %15, %1
  %12 = load i32, i32* %4, align 4
  %13 = add i32 %12, -1
  store i32 %13, i32* %4, align 4
  %14 = icmp ne i32 %12, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load %struct.tegra_bpmp*, %struct.tegra_bpmp** %2, align 8
  %17 = getelementptr inbounds %struct.tegra_bpmp, %struct.tegra_bpmp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %3, align 8
  %20 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %21, i64 %23
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %3, align 8
  %30 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %31, i64 %33
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = call %struct.tegra_powergate* @to_tegra_powergate(%struct.TYPE_2__* %35)
  store %struct.tegra_powergate* %36, %struct.tegra_powergate** %5, align 8
  %37 = load %struct.tegra_powergate*, %struct.tegra_powergate** %5, align 8
  %38 = call i32 @tegra_powergate_remove(%struct.tegra_powergate* %37)
  br label %11

39:                                               ; preds = %11
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local %struct.tegra_powergate* @to_tegra_powergate(%struct.TYPE_2__*) #1

declare dso_local i32 @tegra_powergate_remove(%struct.tegra_powergate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
