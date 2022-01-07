; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_announce_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_announce_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_device = type { i32 }
%struct.qcom_smd_endpoint = type { %struct.qcom_smd_channel* }
%struct.qcom_smd_channel = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmsg_device*)* @qcom_smd_announce_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_smd_announce_create(%struct.rpmsg_device* %0) #0 {
  %2 = alloca %struct.rpmsg_device*, align 8
  %3 = alloca %struct.qcom_smd_endpoint*, align 8
  %4 = alloca %struct.qcom_smd_channel*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rpmsg_device* %0, %struct.rpmsg_device** %2, align 8
  %7 = load %struct.rpmsg_device*, %struct.rpmsg_device** %2, align 8
  %8 = getelementptr inbounds %struct.rpmsg_device, %struct.rpmsg_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.qcom_smd_endpoint* @to_smd_endpoint(i32 %9)
  store %struct.qcom_smd_endpoint* %10, %struct.qcom_smd_endpoint** %3, align 8
  %11 = load %struct.qcom_smd_endpoint*, %struct.qcom_smd_endpoint** %3, align 8
  %12 = getelementptr inbounds %struct.qcom_smd_endpoint, %struct.qcom_smd_endpoint* %11, i32 0, i32 0
  %13 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %12, align 8
  store %struct.qcom_smd_channel* %13, %struct.qcom_smd_channel** %4, align 8
  %14 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %4, align 8
  %15 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %14, i32 0, i32 1
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %4, align 8
  %19 = call i32 @qcom_smd_channel_intr(%struct.qcom_smd_channel* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %4, align 8
  %21 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %20, i32 0, i32 1
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %1
  %27 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %4, align 8
  %28 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @schedule_work(i32* %30)
  br label %32

32:                                               ; preds = %26, %1
  ret i32 0
}

declare dso_local %struct.qcom_smd_endpoint* @to_smd_endpoint(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @qcom_smd_channel_intr(%struct.qcom_smd_channel*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
