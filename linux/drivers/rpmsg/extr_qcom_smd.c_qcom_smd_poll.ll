; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmsg_endpoint = type { i32 }
%struct.file = type { i32 }
%struct.qcom_smd_endpoint = type { %struct.qcom_smd_channel* }
%struct.qcom_smd_channel = type { i32 }

@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmsg_endpoint*, %struct.file*, i32*)* @qcom_smd_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_smd_poll(%struct.rpmsg_endpoint* %0, %struct.file* %1, i32* %2) #0 {
  %4 = alloca %struct.rpmsg_endpoint*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qcom_smd_endpoint*, align 8
  %8 = alloca %struct.qcom_smd_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.rpmsg_endpoint* %0, %struct.rpmsg_endpoint** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.rpmsg_endpoint*, %struct.rpmsg_endpoint** %4, align 8
  %11 = call %struct.qcom_smd_endpoint* @to_smd_endpoint(%struct.rpmsg_endpoint* %10)
  store %struct.qcom_smd_endpoint* %11, %struct.qcom_smd_endpoint** %7, align 8
  %12 = load %struct.qcom_smd_endpoint*, %struct.qcom_smd_endpoint** %7, align 8
  %13 = getelementptr inbounds %struct.qcom_smd_endpoint, %struct.qcom_smd_endpoint* %12, i32 0, i32 0
  %14 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %13, align 8
  store %struct.qcom_smd_channel* %14, %struct.qcom_smd_channel** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %8, align 8
  %17 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %16, i32 0, i32 0
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @poll_wait(%struct.file* %15, i32* %17, i32* %18)
  %20 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %8, align 8
  %21 = call i32 @qcom_smd_get_tx_avail(%struct.qcom_smd_channel* %20)
  %22 = icmp sgt i32 %21, 20
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load i32, i32* @EPOLLOUT, align 4
  %25 = load i32, i32* @EPOLLWRNORM, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %9, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %23, %3
  %30 = load i32, i32* %9, align 4
  ret i32 %30
}

declare dso_local %struct.qcom_smd_endpoint* @to_smd_endpoint(%struct.rpmsg_endpoint*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @qcom_smd_get_tx_avail(%struct.qcom_smd_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
