; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/zte/extr_zx2967_pm_domains.c_zx2967_pd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/zte/extr_zx2967_pm_domains.c_zx2967_pd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.generic_pm_domain = type { i32, i32 }
%struct.genpd_onecell_data = type { i32, %struct.generic_pm_domain** }
%struct.resource = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@pcubase = common dso_local global i32 0, align 4
@zx2967_power_on = common dso_local global i32 0, align 4
@zx2967_power_off = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"powerdomain init ok\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zx2967_pd_probe(%struct.platform_device* %0, %struct.generic_pm_domain** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.generic_pm_domain**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.genpd_onecell_data*, align 8
  %9 = alloca %struct.resource*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %5, align 8
  store %struct.generic_pm_domain** %1, %struct.generic_pm_domain*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.genpd_onecell_data* @devm_kzalloc(%struct.TYPE_4__* %12, i32 16, i32 %13)
  store %struct.genpd_onecell_data* %14, %struct.genpd_onecell_data** %8, align 8
  %15 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %8, align 8
  %16 = icmp ne %struct.genpd_onecell_data* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %79

20:                                               ; preds = %3
  %21 = load %struct.generic_pm_domain**, %struct.generic_pm_domain*** %6, align 8
  %22 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %8, align 8
  %23 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %22, i32 0, i32 1
  store %struct.generic_pm_domain** %21, %struct.generic_pm_domain*** %23, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %8, align 8
  %26 = getelementptr inbounds %struct.genpd_onecell_data, %struct.genpd_onecell_data* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %28 = load i32, i32* @IORESOURCE_MEM, align 4
  %29 = call %struct.resource* @platform_get_resource(%struct.platform_device* %27, i32 %28, i32 0)
  store %struct.resource* %29, %struct.resource** %9, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %31 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %30, i32 0, i32 0
  %32 = load %struct.resource*, %struct.resource** %9, align 8
  %33 = call i32 @devm_ioremap_resource(%struct.TYPE_4__* %31, %struct.resource* %32)
  store i32 %33, i32* @pcubase, align 4
  %34 = load i32, i32* @pcubase, align 4
  %35 = call i64 @IS_ERR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %20
  %38 = load i32, i32* @pcubase, align 4
  %39 = call i32 @PTR_ERR(i32 %38)
  store i32 %39, i32* %4, align 4
  br label %79

40:                                               ; preds = %20
  store i32 0, i32* %10, align 4
  br label %41

41:                                               ; preds = %66, %40
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %69

45:                                               ; preds = %41
  %46 = load i32, i32* @zx2967_power_on, align 4
  %47 = load %struct.generic_pm_domain**, %struct.generic_pm_domain*** %6, align 8
  %48 = load i32, i32* %10, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.generic_pm_domain*, %struct.generic_pm_domain** %47, i64 %49
  %51 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %50, align 8
  %52 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %51, i32 0, i32 1
  store i32 %46, i32* %52, align 4
  %53 = load i32, i32* @zx2967_power_off, align 4
  %54 = load %struct.generic_pm_domain**, %struct.generic_pm_domain*** %6, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.generic_pm_domain*, %struct.generic_pm_domain** %54, i64 %56
  %58 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %57, align 8
  %59 = getelementptr inbounds %struct.generic_pm_domain, %struct.generic_pm_domain* %58, i32 0, i32 0
  store i32 %53, i32* %59, align 4
  %60 = load %struct.generic_pm_domain**, %struct.generic_pm_domain*** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.generic_pm_domain*, %struct.generic_pm_domain** %60, i64 %62
  %64 = load %struct.generic_pm_domain*, %struct.generic_pm_domain** %63, align 8
  %65 = call i32 @pm_genpd_init(%struct.generic_pm_domain* %64, i32* null, i32 0)
  br label %66

66:                                               ; preds = %45
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %41

69:                                               ; preds = %41
  %70 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.genpd_onecell_data*, %struct.genpd_onecell_data** %8, align 8
  %75 = call i32 @of_genpd_add_provider_onecell(i32 %73, %struct.genpd_onecell_data* %74)
  %76 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %77 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %76, i32 0, i32 0
  %78 = call i32 @dev_info(%struct.TYPE_4__* %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %69, %37, %17
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.genpd_onecell_data* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.TYPE_4__*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pm_genpd_init(%struct.generic_pm_domain*, i32*, i32) #1

declare dso_local i32 @of_genpd_add_provider_onecell(i32, %struct.genpd_onecell_data*) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
