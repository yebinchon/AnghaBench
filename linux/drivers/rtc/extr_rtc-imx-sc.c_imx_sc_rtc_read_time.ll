; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imx-sc.c_imx_sc_rtc_read_time.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imx-sc.c_imx_sc_rtc_read_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_time = type { i32 }
%struct.imx_sc_msg_timer_get_rtc_time = type { i32, %struct.imx_sc_rpc_msg }
%struct.imx_sc_rpc_msg = type { i32, i32, i32, i32 }

@IMX_SC_RPC_VERSION = common dso_local global i32 0, align 4
@IMX_SC_RPC_SVC_TIMER = common dso_local global i32 0, align 4
@IMX_SC_TIMER_FUNC_GET_RTC_SEC1970 = common dso_local global i32 0, align 4
@rtc_ipc_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"read rtc time failed, ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_time*)* @imx_sc_rtc_read_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_sc_rtc_read_time(%struct.device* %0, %struct.rtc_time* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_time*, align 8
  %6 = alloca %struct.imx_sc_msg_timer_get_rtc_time, align 4
  %7 = alloca %struct.imx_sc_rpc_msg*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_time* %1, %struct.rtc_time** %5, align 8
  %9 = getelementptr inbounds %struct.imx_sc_msg_timer_get_rtc_time, %struct.imx_sc_msg_timer_get_rtc_time* %6, i32 0, i32 1
  store %struct.imx_sc_rpc_msg* %9, %struct.imx_sc_rpc_msg** %7, align 8
  %10 = load i32, i32* @IMX_SC_RPC_VERSION, align 4
  %11 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %7, align 8
  %12 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @IMX_SC_RPC_SVC_TIMER, align 4
  %14 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %7, align 8
  %15 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @IMX_SC_TIMER_FUNC_GET_RTC_SEC1970, align 4
  %17 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %7, align 8
  %18 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %7, align 8
  %20 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load i32, i32* @rtc_ipc_handle, align 4
  %22 = call i32 @imx_scu_call_rpc(i32 %21, %struct.imx_sc_msg_timer_get_rtc_time* %6, i32 1)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.device*, %struct.device** %4, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %35

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.imx_sc_msg_timer_get_rtc_time, %struct.imx_sc_msg_timer_get_rtc_time* %6, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.rtc_time*, %struct.rtc_time** %5, align 8
  %34 = call i32 @rtc_time64_to_tm(i32 %32, %struct.rtc_time* %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @imx_scu_call_rpc(i32, %struct.imx_sc_msg_timer_get_rtc_time*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @rtc_time64_to_tm(i32, %struct.rtc_time*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
