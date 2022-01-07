; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_ti_sci_pm_domains.c_ti_sci_pm_domain_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_ti_sci_pm_domains.c_ti_sci_pm_domain_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.ti_sci_pm_domain = type { %struct.TYPE_5__, %struct.device*, i32 }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"ti_sci_pd\00", align 1
@ti_sci_pd_attach_dev = common dso_local global i32 0, align 4
@ti_sci_pd_detach_dev = common dso_local global i32 0, align 4
@ti_sci_dev_start = common dso_local global i32 0, align 4
@ti_sci_dev_stop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ti_sci_pm_domain_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_sci_pm_domain_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.ti_sci_pm_domain*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.ti_sci_pm_domain* @devm_kzalloc(%struct.device* %13, i32 40, i32 %14)
  store %struct.ti_sci_pm_domain* %15, %struct.ti_sci_pm_domain** %6, align 8
  %16 = load %struct.ti_sci_pm_domain*, %struct.ti_sci_pm_domain** %6, align 8
  %17 = icmp ne %struct.ti_sci_pm_domain* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %69

21:                                               ; preds = %1
  %22 = load %struct.device*, %struct.device** %4, align 8
  %23 = call i32 @devm_ti_sci_get_handle(%struct.device* %22)
  %24 = load %struct.ti_sci_pm_domain*, %struct.ti_sci_pm_domain** %6, align 8
  %25 = getelementptr inbounds %struct.ti_sci_pm_domain, %struct.ti_sci_pm_domain* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ti_sci_pm_domain*, %struct.ti_sci_pm_domain** %6, align 8
  %27 = getelementptr inbounds %struct.ti_sci_pm_domain, %struct.ti_sci_pm_domain* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @IS_ERR(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.ti_sci_pm_domain*, %struct.ti_sci_pm_domain** %6, align 8
  %33 = getelementptr inbounds %struct.ti_sci_pm_domain, %struct.ti_sci_pm_domain* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @PTR_ERR(i32 %34)
  store i32 %35, i32* %2, align 4
  br label %69

36:                                               ; preds = %21
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load %struct.ti_sci_pm_domain*, %struct.ti_sci_pm_domain** %6, align 8
  %39 = getelementptr inbounds %struct.ti_sci_pm_domain, %struct.ti_sci_pm_domain* %38, i32 0, i32 1
  store %struct.device* %37, %struct.device** %39, align 8
  %40 = load %struct.ti_sci_pm_domain*, %struct.ti_sci_pm_domain** %6, align 8
  %41 = getelementptr inbounds %struct.ti_sci_pm_domain, %struct.ti_sci_pm_domain* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %42, align 8
  %43 = load i32, i32* @ti_sci_pd_attach_dev, align 4
  %44 = load %struct.ti_sci_pm_domain*, %struct.ti_sci_pm_domain** %6, align 8
  %45 = getelementptr inbounds %struct.ti_sci_pm_domain, %struct.ti_sci_pm_domain* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* @ti_sci_pd_detach_dev, align 4
  %48 = load %struct.ti_sci_pm_domain*, %struct.ti_sci_pm_domain** %6, align 8
  %49 = getelementptr inbounds %struct.ti_sci_pm_domain, %struct.ti_sci_pm_domain* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 8
  %51 = load i32, i32* @ti_sci_dev_start, align 4
  %52 = load %struct.ti_sci_pm_domain*, %struct.ti_sci_pm_domain** %6, align 8
  %53 = getelementptr inbounds %struct.ti_sci_pm_domain, %struct.ti_sci_pm_domain* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* @ti_sci_dev_stop, align 4
  %57 = load %struct.ti_sci_pm_domain*, %struct.ti_sci_pm_domain** %6, align 8
  %58 = getelementptr inbounds %struct.ti_sci_pm_domain, %struct.ti_sci_pm_domain* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %56, i32* %60, align 8
  %61 = load %struct.ti_sci_pm_domain*, %struct.ti_sci_pm_domain** %6, align 8
  %62 = getelementptr inbounds %struct.ti_sci_pm_domain, %struct.ti_sci_pm_domain* %61, i32 0, i32 0
  %63 = call i32 @pm_genpd_init(%struct.TYPE_5__* %62, i32* null, i32 1)
  %64 = load %struct.device_node*, %struct.device_node** %5, align 8
  %65 = load %struct.ti_sci_pm_domain*, %struct.ti_sci_pm_domain** %6, align 8
  %66 = getelementptr inbounds %struct.ti_sci_pm_domain, %struct.ti_sci_pm_domain* %65, i32 0, i32 0
  %67 = call i32 @of_genpd_add_provider_simple(%struct.device_node* %64, %struct.TYPE_5__* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %36, %31, %18
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.ti_sci_pm_domain* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @devm_ti_sci_get_handle(%struct.device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @pm_genpd_init(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @of_genpd_add_provider_simple(%struct.device_node*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
