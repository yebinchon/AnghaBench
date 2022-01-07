; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-scpsys.c_scpsys_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/mediatek/extr_mtk-scpsys.c_scpsys_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.scp_subdomain = type { i64, i64 }
%struct.scp_soc_data = type { i32, %struct.scp_subdomain*, i32, i32, i32, i32 }
%struct.scp = type { %struct.genpd_onecell_data }
%struct.genpd_onecell_data = type { i32* }

@CONFIG_PM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to add subdomain: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @scpsys_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scpsys_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.scp_subdomain*, align 8
  %5 = alloca %struct.scp_soc_data*, align 8
  %6 = alloca %struct.scp*, align 8
  %7 = alloca %struct.genpd_onecell_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.scp_soc_data* @of_device_get_match_data(i32* %11)
  store %struct.scp_soc_data* %12, %struct.scp_soc_data** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = load %struct.scp_soc_data*, %struct.scp_soc_data** %5, align 8
  %15 = getelementptr inbounds %struct.scp_soc_data, %struct.scp_soc_data* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.scp_soc_data*, %struct.scp_soc_data** %5, align 8
  %18 = getelementptr inbounds %struct.scp_soc_data, %struct.scp_soc_data* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.scp_soc_data*, %struct.scp_soc_data** %5, align 8
  %21 = getelementptr inbounds %struct.scp_soc_data, %struct.scp_soc_data* %20, i32 0, i32 4
  %22 = load %struct.scp_soc_data*, %struct.scp_soc_data** %5, align 8
  %23 = getelementptr inbounds %struct.scp_soc_data, %struct.scp_soc_data* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.scp* @init_scp(%struct.platform_device* %13, i32 %16, i32 %19, i32* %21, i32 %24)
  store %struct.scp* %25, %struct.scp** %6, align 8
  %26 = load %struct.scp*, %struct.scp** %6, align 8
  %27 = call i64 @IS_ERR(%struct.scp* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %1
  %30 = load %struct.scp*, %struct.scp** %6, align 8
  %31 = call i32 @PTR_ERR(%struct.scp* %30)
  store i32 %31, i32* %2, align 4
  br label %86

32:                                               ; preds = %1
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = load %struct.scp*, %struct.scp** %6, align 8
  %35 = load %struct.scp_soc_data*, %struct.scp_soc_data** %5, align 8
  %36 = getelementptr inbounds %struct.scp_soc_data, %struct.scp_soc_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @mtk_register_power_domains(%struct.platform_device* %33, %struct.scp* %34, i32 %37)
  %39 = load %struct.scp*, %struct.scp** %6, align 8
  %40 = getelementptr inbounds %struct.scp, %struct.scp* %39, i32 0, i32 0
  store %struct.genpd_onecell_data* %40, %struct.genpd_onecell_data** %7, align 8
  store i32 0, i32* %8, align 4
  %41 = load %struct.scp_soc_data*, %struct.scp_soc_data** %5, align 8
  %42 = getelementptr inbounds %struct.scp_soc_data, %struct.scp_soc_data* %41, i32 0, i32 1
  %43 = load %struct.scp_subdomain*, %struct.scp_subdomain** %42, align 8
  store %struct.scp_subdomain* %43, %struct.scp_subdomain** %4, align 8
  br label %44

44:                                               ; preds = %80, %32
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.scp_soc_data*, %struct.scp_soc_data** %5, align 8
  %47 = getelementptr inbounds %struct.scp_soc_data, %struct.scp_soc_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %85

50:                                               ; preds = %44
  %51 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %7, align 8
  %52 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.scp_subdomain*, %struct.scp_subdomain** %4, align 8
  %55 = getelementptr inbounds %struct.scp_subdomain, %struct.scp_subdomain* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %7, align 8
  %60 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.scp_subdomain*, %struct.scp_subdomain** %4, align 8
  %63 = getelementptr inbounds %struct.scp_subdomain, %struct.scp_subdomain* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pm_genpd_add_subdomain(i32 %58, i32 %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %79

70:                                               ; preds = %50
  %71 = load i32, i32* @CONFIG_PM, align 4
  %72 = call i64 @IS_ENABLED(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %76 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %75, i32 0, i32 0
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @dev_err(i32* %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %74, %70, %50
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  %83 = load %struct.scp_subdomain*, %struct.scp_subdomain** %4, align 8
  %84 = getelementptr inbounds %struct.scp_subdomain, %struct.scp_subdomain* %83, i32 1
  store %struct.scp_subdomain* %84, %struct.scp_subdomain** %4, align 8
  br label %44

85:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %29
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.scp_soc_data* @of_device_get_match_data(i32*) #1

declare dso_local %struct.scp* @init_scp(%struct.platform_device*, i32, i32, i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.scp*) #1

declare dso_local i32 @PTR_ERR(%struct.scp*) #1

declare dso_local i32 @mtk_register_power_domains(%struct.platform_device*, %struct.scp*, i32) #1

declare dso_local i32 @pm_genpd_add_subdomain(i32, i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
