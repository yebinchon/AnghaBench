; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_advertise_intent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_advertise_intent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_glink = type { i32 }
%struct.glink_channel = type { i32 }
%struct.glink_core_rx_intent = type { i32, i32 }
%struct.command = type { i8*, i8*, i8*, i8*, i8* }
%struct.command.0 = type opaque

@RPM_CMD_INTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_glink*, %struct.glink_channel*, %struct.glink_core_rx_intent*)* @qcom_glink_advertise_intent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_glink_advertise_intent(%struct.qcom_glink* %0, %struct.glink_channel* %1, %struct.glink_core_rx_intent* %2) #0 {
  %4 = alloca %struct.qcom_glink*, align 8
  %5 = alloca %struct.glink_channel*, align 8
  %6 = alloca %struct.glink_core_rx_intent*, align 8
  %7 = alloca %struct.command, align 8
  %8 = alloca %struct.command, align 8
  store %struct.qcom_glink* %0, %struct.qcom_glink** %4, align 8
  store %struct.glink_channel* %1, %struct.glink_channel** %5, align 8
  store %struct.glink_core_rx_intent* %2, %struct.glink_core_rx_intent** %6, align 8
  %9 = load i32, i32* @RPM_CMD_INTENT, align 4
  %10 = call i8* @cpu_to_le16(i32 %9)
  %11 = getelementptr inbounds %struct.command, %struct.command* %8, i32 0, i32 0
  store i8* %10, i8** %11, align 8
  %12 = load %struct.glink_channel*, %struct.glink_channel** %5, align 8
  %13 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @cpu_to_le16(i32 %14)
  %16 = getelementptr inbounds %struct.command, %struct.command* %8, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = call i8* @cpu_to_le32(i32 1)
  %18 = getelementptr inbounds %struct.command, %struct.command* %8, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %6, align 8
  %20 = getelementptr inbounds %struct.glink_core_rx_intent, %struct.glink_core_rx_intent* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @cpu_to_le32(i32 %21)
  %23 = getelementptr inbounds %struct.command, %struct.command* %8, i32 0, i32 3
  store i8* %22, i8** %23, align 8
  %24 = load %struct.glink_core_rx_intent*, %struct.glink_core_rx_intent** %6, align 8
  %25 = getelementptr inbounds %struct.glink_core_rx_intent, %struct.glink_core_rx_intent* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @cpu_to_le32(i32 %26)
  %28 = getelementptr inbounds %struct.command, %struct.command* %8, i32 0, i32 4
  store i8* %27, i8** %28, align 8
  %29 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %30 = bitcast %struct.command* %8 to %struct.command.0*
  %31 = call i32 @qcom_glink_tx(%struct.qcom_glink* %29, %struct.command.0* %30, i32 40, i32* null, i32 0, i32 1)
  ret i32 0
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @qcom_glink_tx(%struct.qcom_glink*, %struct.command.0*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
