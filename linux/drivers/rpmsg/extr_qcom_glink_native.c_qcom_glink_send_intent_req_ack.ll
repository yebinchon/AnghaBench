; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_send_intent_req_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_send_intent_req_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_glink = type { i32 }
%struct.glink_channel = type { i32 }
%struct.glink_msg = type { i32, i8*, i8* }

@RPM_CMD_RX_INTENT_REQ_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_glink*, %struct.glink_channel*, i32)* @qcom_glink_send_intent_req_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_glink_send_intent_req_ack(%struct.qcom_glink* %0, %struct.glink_channel* %1, i32 %2) #0 {
  %4 = alloca %struct.qcom_glink*, align 8
  %5 = alloca %struct.glink_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.glink_msg, align 8
  store %struct.qcom_glink* %0, %struct.qcom_glink** %4, align 8
  store %struct.glink_channel* %1, %struct.glink_channel** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* @RPM_CMD_RX_INTENT_REQ_ACK, align 4
  %9 = call i8* @cpu_to_le16(i32 %8)
  %10 = getelementptr inbounds %struct.glink_msg, %struct.glink_msg* %7, i32 0, i32 2
  store i8* %9, i8** %10, align 8
  %11 = load %struct.glink_channel*, %struct.glink_channel** %5, align 8
  %12 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @cpu_to_le16(i32 %13)
  %15 = getelementptr inbounds %struct.glink_msg, %struct.glink_msg* %7, i32 0, i32 1
  store i8* %14, i8** %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @cpu_to_le32(i32 %16)
  %18 = getelementptr inbounds %struct.glink_msg, %struct.glink_msg* %7, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load %struct.qcom_glink*, %struct.qcom_glink** %4, align 8
  %20 = call i32 @qcom_glink_tx(%struct.qcom_glink* %19, %struct.glink_msg* %7, i32 24, i32* null, i32 0, i32 1)
  ret i32 0
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @qcom_glink_tx(%struct.qcom_glink*, %struct.glink_msg*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
