; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/xilinx/extr_zynqmp_pm_domains.c_zynqmp_gpd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/xilinx/extr_zynqmp_pm_domains.c_zynqmp_gpd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.genpd_onecell_data = type { i32, %struct.generic_pm_domain**, i32 }
%struct.generic_pm_domain = type { i32, i32, i32, i32, i32 }
%struct.zynqmp_pm_domain = type { %struct.generic_pm_domain, i64 }

@eemi_ops = common dso_local global i32 0, align 4
@ZYNQMP_NUM_DOMAINS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zynqmp_gpd_xlate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"domain%d\00", align 1
@zynqmp_gpd_power_off = common dso_local global i32 0, align 4
@zynqmp_gpd_power_on = common dso_local global i32 0, align 4
@zynqmp_gpd_attach_dev = common dso_local global i32 0, align 4
@zynqmp_gpd_detach_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @zynqmp_gpd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynqmp_gpd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.genpd_onecell_data*, align 8
  %6 = alloca %struct.generic_pm_domain**, align 8
  %7 = alloca %struct.zynqmp_pm_domain*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %8, align 8
  %11 = call i32 (...) @zynqmp_pm_get_eemi_ops()
  store i32 %11, i32* @eemi_ops, align 4
  %12 = load i32, i32* @eemi_ops, align 4
  %13 = call i64 @IS_ERR(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @eemi_ops, align 4
  %17 = call i32 @PTR_ERR(i32 %16)
  store i32 %17, i32* %2, align 4
  br label %110

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %8, align 8
  %20 = load i32, i32* @ZYNQMP_NUM_DOMAINS, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @devm_kcalloc(%struct.device* %19, i32 %20, i32 32, i32 %21)
  %23 = bitcast i8* %22 to %struct.zynqmp_pm_domain*
  store %struct.zynqmp_pm_domain* %23, %struct.zynqmp_pm_domain** %7, align 8
  %24 = load %struct.zynqmp_pm_domain*, %struct.zynqmp_pm_domain** %7, align 8
  %25 = icmp ne %struct.zynqmp_pm_domain* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %110

29:                                               ; preds = %18
  %30 = load %struct.device*, %struct.device** %8, align 8
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.genpd_onecell_data* @devm_kzalloc(%struct.device* %30, i32 24, i32 %31)
  store %struct.genpd_onecell_data* %32, %struct.genpd_onecell_data** %5, align 8
  %33 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %5, align 8
  %34 = icmp ne %struct.genpd_onecell_data* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %110

38:                                               ; preds = %29
  %39 = load i32, i32* @zynqmp_gpd_xlate, align 4
  %40 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %5, align 8
  %41 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.device*, %struct.device** %8, align 8
  %43 = load i32, i32* @ZYNQMP_NUM_DOMAINS, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i8* @devm_kcalloc(%struct.device* %42, i32 %43, i32 8, i32 %44)
  %46 = bitcast i8* %45 to %struct.generic_pm_domain**
  store %struct.generic_pm_domain** %46, %struct.generic_pm_domain*** %6, align 8
  %47 = load %struct.generic_pm_domain**, %struct.generic_pm_domain*** %6, align 8
  %48 = icmp ne %struct.generic_pm_domain** %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %38
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %110

52:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %91, %52
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @ZYNQMP_NUM_DOMAINS, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %96

57:                                               ; preds = %53
  %58 = load %struct.zynqmp_pm_domain*, %struct.zynqmp_pm_domain** %7, align 8
  %59 = getelementptr inbounds %struct.zynqmp_pm_domain, %struct.zynqmp_pm_domain* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @kasprintf(i32 %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.zynqmp_pm_domain*, %struct.zynqmp_pm_domain** %7, align 8
  %64 = getelementptr inbounds %struct.zynqmp_pm_domain, %struct.zynqmp_pm_domain* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %64, i32 0, i32 4
  store i32 %62, i32* %65, align 8
  %66 = load i32, i32* @zynqmp_gpd_power_off, align 4
  %67 = load %struct.zynqmp_pm_domain*, %struct.zynqmp_pm_domain** %7, align 8
  %68 = getelementptr inbounds %struct.zynqmp_pm_domain, %struct.zynqmp_pm_domain* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %68, i32 0, i32 3
  store i32 %66, i32* %69, align 4
  %70 = load i32, i32* @zynqmp_gpd_power_on, align 4
  %71 = load %struct.zynqmp_pm_domain*, %struct.zynqmp_pm_domain** %7, align 8
  %72 = getelementptr inbounds %struct.zynqmp_pm_domain, %struct.zynqmp_pm_domain* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 8
  %74 = load i32, i32* @zynqmp_gpd_attach_dev, align 4
  %75 = load %struct.zynqmp_pm_domain*, %struct.zynqmp_pm_domain** %7, align 8
  %76 = getelementptr inbounds %struct.zynqmp_pm_domain, %struct.zynqmp_pm_domain* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 4
  %78 = load i32, i32* @zynqmp_gpd_detach_dev, align 4
  %79 = load %struct.zynqmp_pm_domain*, %struct.zynqmp_pm_domain** %7, align 8
  %80 = getelementptr inbounds %struct.zynqmp_pm_domain, %struct.zynqmp_pm_domain* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.zynqmp_pm_domain*, %struct.zynqmp_pm_domain** %7, align 8
  %83 = getelementptr inbounds %struct.zynqmp_pm_domain, %struct.zynqmp_pm_domain* %82, i32 0, i32 0
  %84 = load %struct.generic_pm_domain**, %struct.generic_pm_domain*** %6, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.generic_pm_domain*, %struct.generic_pm_domain** %84, i64 %86
  store %struct.generic_pm_domain* %83, %struct.generic_pm_domain** %87, align 8
  %88 = load %struct.zynqmp_pm_domain*, %struct.zynqmp_pm_domain** %7, align 8
  %89 = getelementptr inbounds %struct.zynqmp_pm_domain, %struct.zynqmp_pm_domain* %88, i32 0, i32 0
  %90 = call i32 @pm_genpd_init(%struct.generic_pm_domain* %89, i32* null, i32 1)
  br label %91

91:                                               ; preds = %57
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %4, align 4
  %94 = load %struct.zynqmp_pm_domain*, %struct.zynqmp_pm_domain** %7, align 8
  %95 = getelementptr inbounds %struct.zynqmp_pm_domain, %struct.zynqmp_pm_domain* %94, i32 1
  store %struct.zynqmp_pm_domain* %95, %struct.zynqmp_pm_domain** %7, align 8
  br label %53

96:                                               ; preds = %53
  %97 = load %struct.generic_pm_domain**, %struct.generic_pm_domain*** %6, align 8
  %98 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %5, align 8
  %99 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %98, i32 0, i32 1
  store %struct.generic_pm_domain** %97, %struct.generic_pm_domain*** %99, align 8
  %100 = load i32, i32* @ZYNQMP_NUM_DOMAINS, align 4
  %101 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %5, align 8
  %102 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.device*, %struct.device** %8, align 8
  %104 = getelementptr inbounds %struct.device, %struct.device* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %5, align 8
  %109 = call i32 @of_genpd_add_provider_onecell(i32 %107, %struct.genpd_onecell_data* %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %96, %49, %35, %26, %15
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @zynqmp_pm_get_eemi_ops(...) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local %struct.genpd_onecell_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @pm_genpd_init(%struct.generic_pm_domain*, i32*, i32) #1

declare dso_local i32 @of_genpd_add_provider_onecell(i32, %struct.genpd_onecell_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
