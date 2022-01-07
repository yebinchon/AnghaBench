; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_channel_get_rx_avail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_smd.c_qcom_smd_channel_get_rx_avail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_smd_channel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qcom_smd_channel*)* @qcom_smd_channel_get_rx_avail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qcom_smd_channel_get_rx_avail(%struct.qcom_smd_channel* %0) #0 {
  %2 = alloca %struct.qcom_smd_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.qcom_smd_channel* %0, %struct.qcom_smd_channel** %2, align 8
  %5 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @GET_RX_CHANNEL_INFO(%struct.qcom_smd_channel* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @GET_RX_CHANNEL_INFO(%struct.qcom_smd_channel* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = sub i32 %11, %12
  %14 = load %struct.qcom_smd_channel*, %struct.qcom_smd_channel** %2, align 8
  %15 = getelementptr inbounds %struct.qcom_smd_channel, %struct.qcom_smd_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %13, %17
  %19 = zext i32 %18 to i64
  ret i64 %19
}

declare dso_local i32 @GET_RX_CHANNEL_INFO(%struct.qcom_smd_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
