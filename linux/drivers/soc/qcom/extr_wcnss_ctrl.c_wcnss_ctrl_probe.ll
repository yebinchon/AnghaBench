; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_wcnss_ctrl.c_wcnss_ctrl_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_wcnss_ctrl.c_wcnss_ctrl_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { i32, i32 }
%struct.wcnss_ctrl = type { i32, i32, i32, i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@wcnss_async_probe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmsg_device*)* @wcnss_ctrl_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wcnss_ctrl_probe(%struct.rpmsg_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rpmsg_device*, align 8
  %4 = alloca %struct.wcnss_ctrl*, align 8
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %3, align 8
  %5 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %6 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %5, i32 0, i32 0
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.wcnss_ctrl* @devm_kzalloc(i32* %6, i32 24, i32 %7)
  store %struct.wcnss_ctrl* %8, %struct.wcnss_ctrl** %4, align 8
  %9 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %4, align 8
  %10 = icmp ne %struct.wcnss_ctrl* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %41

14:                                               ; preds = %1
  %15 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %16 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %15, i32 0, i32 0
  %17 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %4, align 8
  %18 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %17, i32 0, i32 4
  store i32* %16, i32** %18, align 8
  %19 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %20 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %4, align 8
  %23 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %4, align 8
  %25 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %24, i32 0, i32 2
  %26 = call i32 @init_completion(i32* %25)
  %27 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %4, align 8
  %28 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %27, i32 0, i32 1
  %29 = call i32 @init_completion(i32* %28)
  %30 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %4, align 8
  %31 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %30, i32 0, i32 0
  %32 = load i32, i32* @wcnss_async_probe, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load %struct.rpmsg_device*, %struct.rpmsg_device** %3, align 8
  %35 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %34, i32 0, i32 0
  %36 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %4, align 8
  %37 = call i32 @dev_set_drvdata(i32* %35, %struct.wcnss_ctrl* %36)
  %38 = load %struct.wcnss_ctrl*, %struct.wcnss_ctrl** %4, align 8
  %39 = getelementptr inbounds %struct.wcnss_ctrl, %struct.wcnss_ctrl* %38, i32 0, i32 0
  %40 = call i32 @schedule_work(i32* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %14, %11
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.wcnss_ctrl* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @dev_set_drvdata(i32*, %struct.wcnss_ctrl*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
