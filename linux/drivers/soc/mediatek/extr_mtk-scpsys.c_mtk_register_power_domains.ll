; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-scpsys.c_mtk_register_power_domains.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-scpsys.c_mtk_register_power_domains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.scp = type { %struct.genpd_onecell_data, %struct.scp_domain* }
%struct.genpd_onecell_data = type { i32 }
%struct.scp_domain = type { %struct.generic_pm_domain }
%struct.generic_pm_domain = type { i32 (%struct.generic_pm_domain*)* }

@.str = private unnamed_addr constant [31 x i8] c"Failed to add OF provider: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.scp*, i32)* @mtk_register_power_domains to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_register_power_domains(%struct.platform_device* %0, %struct.scp* %1, i32 %2) #0 {
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.scp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.genpd_onecell_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scp_domain*, align 8
  %11 = alloca %struct.generic_pm_domain*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.scp* %1, %struct.scp** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %32, %3
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %12
  %17 = load %struct.scp*, %struct.scp** %5, align 8
  %18 = getelementptr inbounds %struct.scp, %struct.scp* %17, i32 0, i32 1
  %19 = load %struct.scp_domain*, %struct.scp_domain** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.scp_domain, %struct.scp_domain* %19, i64 %21
  store %struct.scp_domain* %22, %struct.scp_domain** %10, align 8
  %23 = load %struct.scp_domain*, %struct.scp_domain** %10, align 8
  %24 = getelementptr inbounds %struct.scp_domain, %struct.scp_domain* %23, i32 0, i32 0
  store %struct.generic_pm_domain* %24, %struct.generic_pm_domain** %11, align 8
  %25 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %11, align 8
  %26 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %25, i32 0, i32 0
  %27 = load i32 (%struct.generic_pm_domain*)*, i32 (%struct.generic_pm_domain*)** %26, align 8
  %28 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %11, align 8
  %29 = call i32 %27(%struct.generic_pm_domain* %28)
  %30 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %11, align 8
  %31 = call i32 @pm_genpd_init(%struct.generic_pm_domain* %30, i32* null, i32 0)
  br label %32

32:                                               ; preds = %16
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %12

35:                                               ; preds = %12
  %36 = load %struct.scp*, %struct.scp** %5, align 8
  %37 = getelementptr inbounds %struct.scp, %struct.scp* %36, i32 0, i32 0
  store %struct.genpd_onecell_data* %37, %struct.genpd_onecell_data** %7, align 8
  %38 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %7, align 8
  %43 = call i32 @of_genpd_add_provider_onecell(i32 %41, %struct.genpd_onecell_data* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %35
  %47 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @dev_err(%struct.TYPE_2__* %48, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %46, %35
  ret void
}

declare dso_local i32 @pm_genpd_init(%struct.generic_pm_domain*, i32*, i32) #1

declare dso_local i32 @of_genpd_add_provider_onecell(i32, %struct.genpd_onecell_data*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
