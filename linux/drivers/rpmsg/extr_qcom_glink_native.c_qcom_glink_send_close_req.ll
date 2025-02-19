; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_send_close_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_send_close_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_glink = type { i32 }
%struct.glink_channel = type { i32 }
%struct.glink_msg = type { i64, i8*, i8* }

@RPM_CMD_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_glink*, %struct.glink_channel*)* @qcom_glink_send_close_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_glink_send_close_req(%struct.qcom_glink* %0, %struct.glink_channel* %1) #0 {
  %3 = alloca %struct.qcom_glink*, align 8
  %4 = alloca %struct.glink_channel*, align 8
  %5 = alloca %struct.glink_msg, align 8
  store %struct.qcom_glink* %0, %struct.qcom_glink** %3, align 8
  store %struct.glink_channel* %1, %struct.glink_channel** %4, align 8
  %6 = load i32, i32* @RPM_CMD_CLOSE, align 4
  %7 = call i8* @cpu_to_le16(i32 %6)
  %8 = getelementptr inbounds %struct.glink_msg, %struct.glink_msg* %5, i32 0, i32 2
  store i8* %7, i8** %8, align 8
  %9 = load %struct.glink_channel*, %struct.glink_channel** %4, align 8
  %10 = getelementptr inbounds %struct.glink_channel, %struct.glink_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @cpu_to_le16(i32 %11)
  %13 = getelementptr inbounds %struct.glink_msg, %struct.glink_msg* %5, i32 0, i32 1
  store i8* %12, i8** %13, align 8
  %14 = getelementptr inbounds %struct.glink_msg, %struct.glink_msg* %5, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.qcom_glink*, %struct.qcom_glink** %3, align 8
  %16 = call i32 @qcom_glink_tx(%struct.qcom_glink* %15, %struct.glink_msg* %5, i32 24, i32* null, i32 0, i32 1)
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @qcom_glink_tx(%struct.qcom_glink*, %struct.glink_msg*, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
