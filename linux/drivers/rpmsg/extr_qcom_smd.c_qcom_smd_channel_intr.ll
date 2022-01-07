; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_channel_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_channel_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smd_channel = type { i32, i64, i32, i32, i32 }

@state = common dso_local global i32 0, align 4
@fSTATE = common dso_local global i32 0, align 4
@fBLOCKREADINTR = common dso_local global i32 0, align 4
@SMD_CHANNEL_OPENED = common dso_local global i64 0, align 8
@fHEAD = common dso_local global i32 0, align 4
@SMD_PACKET_HEADER_LEN = common dso_local global i32 0, align 4
@fTAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_smd_channel*)* @qcom_smd_channel_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_smd_channel_intr(%struct.qcom_smd_channel* %0) #0 {
  %2 = alloca %struct.qcom_smd_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qcom_smd_channel* %0, %struct.qcom_smd_channel** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %9 = load i32, i32* @state, align 4
  %10 = call i32 @GET_RX_CHANNEL_INFO(%struct.qcom_smd_channel* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %13 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %11, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %19 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  store i32 1, i32* %3, align 4
  %20 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %21 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %20, i32 0, i32 4
  %22 = call i32 @wake_up_interruptible_all(i32* %21)
  br label %23

23:                                               ; preds = %16, %1
  %24 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %25 = load i32, i32* @fSTATE, align 4
  %26 = call i32 @SET_RX_CHANNEL_FLAG(%struct.qcom_smd_channel* %24, i32 %25, i32 0)
  %27 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %28 = load i32, i32* @fBLOCKREADINTR, align 4
  %29 = call i32 @GET_TX_CHANNEL_FLAG(%struct.qcom_smd_channel* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %23
  %32 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %33 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %32, i32 0, i32 3
  %34 = call i32 @wake_up_interruptible_all(i32* %33)
  br label %35

35:                                               ; preds = %31, %23
  %36 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %37 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SMD_CHANNEL_OPENED, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %101

42:                                               ; preds = %35
  %43 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %44 = load i32, i32* @fHEAD, align 4
  %45 = call i32 @SET_RX_CHANNEL_FLAG(%struct.qcom_smd_channel* %43, i32 %44, i32 0)
  br label %46

46:                                               ; preds = %87, %42
  %47 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %48 = call i32 @qcom_smd_channel_get_rx_avail(%struct.qcom_smd_channel* %47)
  store i32 %48, i32* %6, align 4
  %49 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %50 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @SMD_PACKET_HEADER_LEN, align 4
  %56 = icmp sge i32 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %59 = call i32 @qcom_smd_channel_peek(%struct.qcom_smd_channel* %58, i32* %5, i32 4)
  %60 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %61 = load i32, i32* @SMD_PACKET_HEADER_LEN, align 4
  %62 = call i32 @qcom_smd_channel_advance(%struct.qcom_smd_channel* %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @le32_to_cpu(i32 %63)
  %65 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %66 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  br label %87

67:                                               ; preds = %53, %46
  %68 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %69 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %85

72:                                               ; preds = %67
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %75 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp sge i32 %73, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %80 = call i32 @qcom_smd_channel_recv_single(%struct.qcom_smd_channel* %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  br label %88

84:                                               ; preds = %78
  br label %86

85:                                               ; preds = %72, %67
  br label %88

86:                                               ; preds = %84
  br label %87

87:                                               ; preds = %86, %57
  br label %46

88:                                               ; preds = %85, %83
  %89 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %90 = load i32, i32* @fTAIL, align 4
  %91 = call i32 @SET_RX_CHANNEL_FLAG(%struct.qcom_smd_channel* %89, i32 %90, i32 1)
  %92 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %93 = load i32, i32* @fBLOCKREADINTR, align 4
  %94 = call i32 @GET_RX_CHANNEL_FLAG(%struct.qcom_smd_channel* %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %100, label %96

96:                                               ; preds = %88
  %97 = call i32 (...) @wmb()
  %98 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %99 = call i32 @qcom_smd_signal_channel(%struct.qcom_smd_channel* %98)
  br label %100

100:                                              ; preds = %96, %88
  br label %101

101:                                              ; preds = %100, %41
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @GET_RX_CHANNEL_INFO(%struct.qcom_smd_channel*, i32) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @SET_RX_CHANNEL_FLAG(%struct.qcom_smd_channel*, i32, i32) #1

declare dso_local i32 @GET_TX_CHANNEL_FLAG(%struct.qcom_smd_channel*, i32) #1

declare dso_local i32 @qcom_smd_channel_get_rx_avail(%struct.qcom_smd_channel*) #1

declare dso_local i32 @qcom_smd_channel_peek(%struct.qcom_smd_channel*, i32*, i32) #1

declare dso_local i32 @qcom_smd_channel_advance(%struct.qcom_smd_channel*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @qcom_smd_channel_recv_single(%struct.qcom_smd_channel*) #1

declare dso_local i32 @GET_RX_CHANNEL_FLAG(%struct.qcom_smd_channel*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @qcom_smd_signal_channel(%struct.qcom_smd_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
