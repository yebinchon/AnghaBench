; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_channel_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_channel_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smd_channel = type { i32, i32, %struct.qcom_smd_edge* }
%struct.qcom_smd_edge = type { i32 }

@SMD_CHANNEL_OPENED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"set_state(%s, %d)\0A\00", align 1
@fDSR = common dso_local global i32 0, align 4
@fCTS = common dso_local global i32 0, align 4
@fCD = common dso_local global i32 0, align 4
@fSTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_smd_channel*, i32)* @qcom_smd_channel_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_smd_channel_set_state(%struct.qcom_smd_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.qcom_smd_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_smd_edge*, align 8
  %6 = alloca i32, align 4
  store %struct.qcom_smd_channel* %0, %struct.qcom_smd_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %8 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %7, i32 0, i32 2
  %9 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %8, align 8
  store %struct.qcom_smd_edge* %9, %struct.qcom_smd_edge** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @SMD_CHANNEL_OPENED, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %6, align 4
  %14 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %15 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %52

20:                                               ; preds = %2
  %21 = load %struct.qcom_smd_edge*, %struct.qcom_smd_edge** %5, align 8
  %22 = getelementptr inbounds %struct.qcom_smd_edge, %struct.qcom_smd_edge* %21, i32 0, i32 0
  %23 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %24 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @dev_dbg(i32* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %29 = load i32, i32* @fDSR, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @SET_TX_CHANNEL_FLAG(%struct.qcom_smd_channel* %28, i32 %29, i32 %30)
  %32 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %33 = load i32, i32* @fCTS, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @SET_TX_CHANNEL_FLAG(%struct.qcom_smd_channel* %32, i32 %33, i32 %34)
  %36 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %37 = load i32, i32* @fCD, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @SET_TX_CHANNEL_FLAG(%struct.qcom_smd_channel* %36, i32 %37, i32 %38)
  %40 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @SET_TX_CHANNEL_INFO(%struct.qcom_smd_channel* %40, i32 %41, i32 %42)
  %44 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %45 = load i32, i32* @fSTATE, align 4
  %46 = call i32 @SET_TX_CHANNEL_FLAG(%struct.qcom_smd_channel* %44, i32 %45, i32 1)
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %49 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %3, align 8
  %51 = call i32 @qcom_smd_signal_channel(%struct.qcom_smd_channel* %50)
  br label %52

52:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @SET_TX_CHANNEL_FLAG(%struct.qcom_smd_channel*, i32, i32) #1

declare dso_local i32 @SET_TX_CHANNEL_INFO(%struct.qcom_smd_channel*, i32, i32) #1

declare dso_local i32 @qcom_smd_signal_channel(%struct.qcom_smd_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
