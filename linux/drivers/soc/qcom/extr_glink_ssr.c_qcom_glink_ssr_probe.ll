; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_glink_ssr.c_qcom_glink_ssr_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_glink_ssr.c_qcom_glink_ssr_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { i32, i32 }
%struct.glink_ssr = type { %struct.TYPE_2__, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qcom_glink_ssr_notify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmsg_device*)* @qcom_glink_ssr_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_glink_ssr_probe(%struct.rpmsg_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpmsg_device*, align 8
  %4 = alloca %struct.glink_ssr*, align 8
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %3, align 8
  %5 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %6 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.glink_ssr* @devm_kzalloc(i32* %6, i32 24, i32 %7)
  store %struct.glink_ssr* %8, %struct.glink_ssr** %4, align 8
  %9 = load %struct.glink_ssr*, %struct.glink_ssr** %4, align 8
  %10 = icmp ne %struct.glink_ssr* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %38

14:                                               ; preds = %1
  %15 = load %struct.glink_ssr*, %struct.glink_ssr** %4, align 8
  %16 = getelementptr inbounds %struct.glink_ssr, %struct.glink_ssr* %15, i32 0, i32 3
  %17 = call i32 @init_completion(i32* %16)
  %18 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %19 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %18, i32 0, i32 0
  %20 = load %struct.glink_ssr*, %struct.glink_ssr** %4, align 8
  %21 = getelementptr inbounds %struct.glink_ssr, %struct.glink_ssr* %20, i32 0, i32 2
  store i32* %19, i32** %21, align 8
  %22 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %23 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.glink_ssr*, %struct.glink_ssr** %4, align 8
  %26 = getelementptr inbounds %struct.glink_ssr, %struct.glink_ssr* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @qcom_glink_ssr_notify, align 4
  %28 = load %struct.glink_ssr*, %struct.glink_ssr** %4, align 8
  %29 = getelementptr inbounds %struct.glink_ssr, %struct.glink_ssr* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %32 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %31, i32 0, i32 0
  %33 = load %struct.glink_ssr*, %struct.glink_ssr** %4, align 8
  %34 = call i32 @dev_set_drvdata(i32* %32, %struct.glink_ssr* %33)
  %35 = load %struct.glink_ssr*, %struct.glink_ssr** %4, align 8
  %36 = getelementptr inbounds %struct.glink_ssr, %struct.glink_ssr* %35, i32 0, i32 0
  %37 = call i32 @qcom_register_ssr_notifier(%struct.TYPE_2__* %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %14, %11
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.glink_ssr* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.glink_ssr*) #1

declare dso_local i32 @qcom_register_ssr_notifier(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
