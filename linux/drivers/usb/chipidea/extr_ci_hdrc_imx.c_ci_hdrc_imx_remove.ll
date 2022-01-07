; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_imx.c_ci_hdrc_imx_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_ci_hdrc_imx.c_ci_hdrc_imx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ci_hdrc_imx_data = type { i64, i32, %struct.TYPE_2__*, i64, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }

@CI_HDRC_PMQOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ci_hdrc_imx_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ci_hdrc_imx_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ci_hdrc_imx_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.ci_hdrc_imx_data* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.ci_hdrc_imx_data* %5, %struct.ci_hdrc_imx_data** %3, align 8
  %6 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %3, align 8
  %7 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %6, i32 0, i32 6
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %1
  %11 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call i32 @pm_runtime_get_sync(i32* %12)
  %14 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @pm_runtime_disable(i32* %15)
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = call i32 @pm_runtime_put_noidle(i32* %18)
  br label %20

20:                                               ; preds = %10, %1
  %21 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %3, align 8
  %22 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %3, align 8
  %27 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @ci_hdrc_remove_device(i64 %28)
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %3, align 8
  %32 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %3, align 8
  %37 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @usb_phy_shutdown(i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %3, align 8
  %42 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %72

45:                                               ; preds = %40
  %46 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %47 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %46, i32 0, i32 0
  %48 = call i32 @imx_disable_unprepare_clks(i32* %47)
  %49 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %3, align 8
  %50 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %49, i32 0, i32 2
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CI_HDRC_PMQOS, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %45
  %58 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %3, align 8
  %59 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %58, i32 0, i32 1
  %60 = call i32 @pm_qos_remove_request(i32* %59)
  br label %61

61:                                               ; preds = %57, %45
  %62 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %3, align 8
  %63 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.ci_hdrc_imx_data*, %struct.ci_hdrc_imx_data** %3, align 8
  %68 = getelementptr inbounds %struct.ci_hdrc_imx_data, %struct.ci_hdrc_imx_data* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @regulator_disable(i64 %69)
  br label %71

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %71, %40
  ret i32 0
}

declare dso_local %struct.ci_hdrc_imx_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

declare dso_local i32 @ci_hdrc_remove_device(i64) #1

declare dso_local i32 @usb_phy_shutdown(i32) #1

declare dso_local i32 @imx_disable_unprepare_clks(i32*) #1

declare dso_local i32 @pm_qos_remove_request(i32*) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
