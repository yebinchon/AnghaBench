; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smd-rpm.c_qcom_smd_rpm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_smd-rpm.c_qcom_smd_rpm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qcom_smd_rpm = type { i32, %struct.TYPE_4__*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmsg_device*)* @qcom_smd_rpm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_smd_rpm_probe(%struct.rpmsg_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpmsg_device*, align 8
  %4 = alloca %struct.qcom_smd_rpm*, align 8
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %3, align 8
  %5 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %6 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.qcom_smd_rpm* @devm_kzalloc(%struct.TYPE_4__* %6, i32 24, i32 %7)
  store %struct.qcom_smd_rpm* %8, %struct.qcom_smd_rpm** %4, align 8
  %9 = load %struct.qcom_smd_rpm*, %struct.qcom_smd_rpm** %4, align 8
  %10 = icmp ne %struct.qcom_smd_rpm* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.qcom_smd_rpm*, %struct.qcom_smd_rpm** %4, align 8
  %16 = getelementptr inbounds %struct.qcom_smd_rpm, %struct.qcom_smd_rpm* %15, i32 0, i32 3
  %17 = call i32 @mutex_init(i32* %16)
  %18 = load %struct.qcom_smd_rpm*, %struct.qcom_smd_rpm** %4, align 8
  %19 = getelementptr inbounds %struct.qcom_smd_rpm, %struct.qcom_smd_rpm* %18, i32 0, i32 2
  %20 = call i32 @init_completion(i32* %19)
  %21 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %22 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %21, i32 0, i32 0
  %23 = load %struct.qcom_smd_rpm*, %struct.qcom_smd_rpm** %4, align 8
  %24 = getelementptr inbounds %struct.qcom_smd_rpm, %struct.qcom_smd_rpm* %23, i32 0, i32 1
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %24, align 8
  %25 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %26 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qcom_smd_rpm*, %struct.qcom_smd_rpm** %4, align 8
  %29 = getelementptr inbounds %struct.qcom_smd_rpm, %struct.qcom_smd_rpm* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %31 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %30, i32 0, i32 0
  %32 = load %struct.qcom_smd_rpm*, %struct.qcom_smd_rpm** %4, align 8
  %33 = call i32 @dev_set_drvdata(%struct.TYPE_4__* %31, %struct.qcom_smd_rpm* %32)
  %34 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %35 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %39 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %38, i32 0, i32 0
  %40 = call i32 @of_platform_populate(i32 %37, i32* null, i32* null, %struct.TYPE_4__* %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %14, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.qcom_smd_rpm* @devm_kzalloc(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_4__*, %struct.qcom_smd_rpm*) #1

declare dso_local i32 @of_platform_populate(i32, i32*, i32*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
