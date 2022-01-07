; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_channel_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_channel_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smd_channel = type { i64, i32 }

@state = common dso_local global i32 0, align 4
@SMD_CHANNEL_CLOSED = common dso_local global i32 0, align 4
@fDSR = common dso_local global i32 0, align 4
@fCTS = common dso_local global i32 0, align 4
@fCD = common dso_local global i32 0, align 4
@fRI = common dso_local global i32 0, align 4
@fHEAD = common dso_local global i32 0, align 4
@fTAIL = common dso_local global i32 0, align 4
@fSTATE = common dso_local global i32 0, align 4
@fBLOCKREADINTR = common dso_local global i32 0, align 4
@head = common dso_local global i32 0, align 4
@tail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_smd_channel*)* @qcom_smd_channel_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_smd_channel_reset(%struct.qcom_smd_channel* %0) #0 {
  %2 = alloca %struct.qcom_smd_channel*, align 8
  store %struct.qcom_smd_channel* %0, %struct.qcom_smd_channel** %2, align 8
  %3 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %4 = load i32, i32* @state, align 4
  %5 = load i32, i32* @SMD_CHANNEL_CLOSED, align 4
  %6 = call i32 @SET_TX_CHANNEL_INFO(%struct.qcom_smd_channel* %3, i32 %4, i32 %5)
  %7 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %8 = load i32, i32* @fDSR, align 4
  %9 = call i32 @SET_TX_CHANNEL_FLAG(%struct.qcom_smd_channel* %7, i32 %8, i32 0)
  %10 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %11 = load i32, i32* @fCTS, align 4
  %12 = call i32 @SET_TX_CHANNEL_FLAG(%struct.qcom_smd_channel* %10, i32 %11, i32 0)
  %13 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %14 = load i32, i32* @fCD, align 4
  %15 = call i32 @SET_TX_CHANNEL_FLAG(%struct.qcom_smd_channel* %13, i32 %14, i32 0)
  %16 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %17 = load i32, i32* @fRI, align 4
  %18 = call i32 @SET_TX_CHANNEL_FLAG(%struct.qcom_smd_channel* %16, i32 %17, i32 0)
  %19 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %20 = load i32, i32* @fHEAD, align 4
  %21 = call i32 @SET_TX_CHANNEL_FLAG(%struct.qcom_smd_channel* %19, i32 %20, i32 0)
  %22 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %23 = load i32, i32* @fTAIL, align 4
  %24 = call i32 @SET_TX_CHANNEL_FLAG(%struct.qcom_smd_channel* %22, i32 %23, i32 0)
  %25 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %26 = load i32, i32* @fSTATE, align 4
  %27 = call i32 @SET_TX_CHANNEL_FLAG(%struct.qcom_smd_channel* %25, i32 %26, i32 1)
  %28 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %29 = load i32, i32* @fBLOCKREADINTR, align 4
  %30 = call i32 @SET_TX_CHANNEL_FLAG(%struct.qcom_smd_channel* %28, i32 %29, i32 1)
  %31 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %32 = load i32, i32* @head, align 4
  %33 = call i32 @SET_TX_CHANNEL_INFO(%struct.qcom_smd_channel* %31, i32 %32, i32 0)
  %34 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %35 = load i32, i32* @tail, align 4
  %36 = call i32 @SET_RX_CHANNEL_INFO(%struct.qcom_smd_channel* %34, i32 %35, i32 0)
  %37 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %38 = call i32 @qcom_smd_signal_channel(%struct.qcom_smd_channel* %37)
  %39 = load i32, i32* @SMD_CHANNEL_CLOSED, align 4
  %40 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %41 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %43 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  ret void
}

declare dso_local i32 @SET_TX_CHANNEL_INFO(%struct.qcom_smd_channel*, i32, i32) #1

declare dso_local i32 @SET_TX_CHANNEL_FLAG(%struct.qcom_smd_channel*, i32, i32) #1

declare dso_local i32 @SET_RX_CHANNEL_INFO(%struct.qcom_smd_channel*, i32, i32) #1

declare dso_local i32 @qcom_smd_signal_channel(%struct.qcom_smd_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
