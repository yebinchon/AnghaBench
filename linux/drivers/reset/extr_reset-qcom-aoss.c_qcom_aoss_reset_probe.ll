; ModuleID = '/home/carl/AnghaBench/linux/drivers/reset/extr_reset-qcom-aoss.c_qcom_aoss_reset_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/reset/extr_reset-qcom-aoss.c_qcom_aoss_reset_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.qcom_aoss_reset_data = type { %struct.TYPE_2__, i32, %struct.qcom_aoss_desc* }
%struct.TYPE_2__ = type { i32, i32, i32*, i32 }
%struct.qcom_aoss_desc = type { i32 }
%struct.resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@qcom_aoss_reset_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @qcom_aoss_reset_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_aoss_reset_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.qcom_aoss_reset_data*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.qcom_aoss_desc*, align 8
  %7 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = call %struct.qcom_aoss_desc* @of_device_get_match_data(%struct.device* %10)
  store %struct.qcom_aoss_desc* %11, %struct.qcom_aoss_desc** %6, align 8
  %12 = load %struct.qcom_aoss_desc*, %struct.qcom_aoss_desc** %6, align 8
  %13 = icmp ne %struct.qcom_aoss_desc* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %72

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %5, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.qcom_aoss_reset_data* @devm_kzalloc(%struct.device* %18, i32 40, i32 %19)
  store %struct.qcom_aoss_reset_data* %20, %struct.qcom_aoss_reset_data** %4, align 8
  %21 = load %struct.qcom_aoss_reset_data*, %struct.qcom_aoss_reset_data** %4, align 8
  %22 = icmp ne %struct.qcom_aoss_reset_data* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %72

26:                                               ; preds = %17
  %27 = load %struct.qcom_aoss_desc*, %struct.qcom_aoss_desc** %6, align 8
  %28 = load %struct.qcom_aoss_reset_data*, %struct.qcom_aoss_reset_data** %4, align 8
  %29 = getelementptr inbounds %struct.qcom_aoss_reset_data, %struct.qcom_aoss_reset_data* %28, i32 0, i32 2
  store %struct.qcom_aoss_desc* %27, %struct.qcom_aoss_desc** %29, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = call %struct.resource* @platform_get_resource(%struct.platform_device* %30, i32 %31, i32 0)
  store %struct.resource* %32, %struct.resource** %7, align 8
  %33 = load %struct.device*, %struct.device** %5, align 8
  %34 = load %struct.resource*, %struct.resource** %7, align 8
  %35 = call i32 @devm_ioremap_resource(%struct.device* %33, %struct.resource* %34)
  %36 = load %struct.qcom_aoss_reset_data*, %struct.qcom_aoss_reset_data** %4, align 8
  %37 = getelementptr inbounds %struct.qcom_aoss_reset_data, %struct.qcom_aoss_reset_data* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.qcom_aoss_reset_data*, %struct.qcom_aoss_reset_data** %4, align 8
  %39 = getelementptr inbounds %struct.qcom_aoss_reset_data, %struct.qcom_aoss_reset_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @IS_ERR(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %26
  %44 = load %struct.qcom_aoss_reset_data*, %struct.qcom_aoss_reset_data** %4, align 8
  %45 = getelementptr inbounds %struct.qcom_aoss_reset_data, %struct.qcom_aoss_reset_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @PTR_ERR(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %72

48:                                               ; preds = %26
  %49 = load i32, i32* @THIS_MODULE, align 4
  %50 = load %struct.qcom_aoss_reset_data*, %struct.qcom_aoss_reset_data** %4, align 8
  %51 = getelementptr inbounds %struct.qcom_aoss_reset_data, %struct.qcom_aoss_reset_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 8
  %53 = load %struct.qcom_aoss_reset_data*, %struct.qcom_aoss_reset_data** %4, align 8
  %54 = getelementptr inbounds %struct.qcom_aoss_reset_data, %struct.qcom_aoss_reset_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  store i32* @qcom_aoss_reset_ops, i32** %55, align 8
  %56 = load %struct.qcom_aoss_desc*, %struct.qcom_aoss_desc** %6, align 8
  %57 = getelementptr inbounds %struct.qcom_aoss_desc, %struct.qcom_aoss_desc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.qcom_aoss_reset_data*, %struct.qcom_aoss_reset_data** %4, align 8
  %60 = getelementptr inbounds %struct.qcom_aoss_reset_data, %struct.qcom_aoss_reset_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = getelementptr inbounds %struct.device, %struct.device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.qcom_aoss_reset_data*, %struct.qcom_aoss_reset_data** %4, align 8
  %66 = getelementptr inbounds %struct.qcom_aoss_reset_data, %struct.qcom_aoss_reset_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = load %struct.qcom_aoss_reset_data*, %struct.qcom_aoss_reset_data** %4, align 8
  %70 = getelementptr inbounds %struct.qcom_aoss_reset_data, %struct.qcom_aoss_reset_data* %69, i32 0, i32 0
  %71 = call i32 @devm_reset_controller_register(%struct.device* %68, %struct.TYPE_2__* %70)
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %48, %43, %23, %14
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.qcom_aoss_desc* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.qcom_aoss_reset_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @devm_reset_controller_register(%struct.device*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
