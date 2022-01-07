; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imx-sc.c_imx_sc_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-imx-sc.c_imx_sc_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.rtc_time }
%struct.rtc_time = type { i32, i32, i32, i32, i64, i64 }
%struct.imx_sc_msg_timer_rtc_set_alarm = type { i32, i32, i32, i32, i64, i64, %struct.imx_sc_rpc_msg }
%struct.imx_sc_rpc_msg = type { i32, i32, i32, i32 }

@IMX_SC_RPC_VERSION = common dso_local global i32 0, align 4
@IMX_SC_RPC_SVC_TIMER = common dso_local global i32 0, align 4
@IMX_SC_TIMER_FUNC_SET_RTC_ALARM = common dso_local global i32 0, align 4
@rtc_ipc_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"set rtc alarm failed, ret %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"enable rtc alarm failed, ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @imx_sc_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_sc_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca %struct.imx_sc_msg_timer_rtc_set_alarm, align 8
  %7 = alloca %struct.imx_sc_rpc_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtc_time*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %10 = getelementptr inbounds %struct.imx_sc_msg_timer_rtc_set_alarm, %struct.imx_sc_msg_timer_rtc_set_alarm* %6, i32 0, i32 6
  store %struct.imx_sc_rpc_msg* %10, %struct.imx_sc_rpc_msg** %7, align 8
  %11 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %12 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %11, i32 0, i32 1
  store %struct.rtc_time* %12, %struct.rtc_time** %9, align 8
  %13 = load i32, i32* @IMX_SC_RPC_VERSION, align 4
  %14 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %7, align 8
  %15 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @IMX_SC_RPC_SVC_TIMER, align 4
  %17 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %7, align 8
  %18 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @IMX_SC_TIMER_FUNC_SET_RTC_ALARM, align 4
  %20 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %7, align 8
  %21 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.imx_sc_rpc_msg*, %struct.imx_sc_rpc_msg** %7, align 8
  %23 = getelementptr inbounds %struct.imx_sc_rpc_msg, %struct.imx_sc_rpc_msg* %22, i32 0, i32 0
  store i32 3, i32* %23, align 4
  %24 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %25 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %26, 1900
  %28 = getelementptr inbounds %struct.imx_sc_msg_timer_rtc_set_alarm, %struct.imx_sc_msg_timer_rtc_set_alarm* %6, i32 0, i32 5
  store i64 %27, i64* %28, align 8
  %29 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %30 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  %33 = getelementptr inbounds %struct.imx_sc_msg_timer_rtc_set_alarm, %struct.imx_sc_msg_timer_rtc_set_alarm* %6, i32 0, i32 4
  store i64 %32, i64* %33, align 8
  %34 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %35 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.imx_sc_msg_timer_rtc_set_alarm, %struct.imx_sc_msg_timer_rtc_set_alarm* %6, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %39 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.imx_sc_msg_timer_rtc_set_alarm, %struct.imx_sc_msg_timer_rtc_set_alarm* %6, i32 0, i32 2
  store i32 %40, i32* %41, align 8
  %42 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %43 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.imx_sc_msg_timer_rtc_set_alarm, %struct.imx_sc_msg_timer_rtc_set_alarm* %6, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  %46 = load %struct.rtc_time*, %struct.rtc_time** %9, align 8
  %47 = getelementptr inbounds %struct.rtc_time, %struct.rtc_time* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = getelementptr inbounds %struct.imx_sc_msg_timer_rtc_set_alarm, %struct.imx_sc_msg_timer_rtc_set_alarm* %6, i32 0, i32 0
  store i32 %48, i32* %49, align 8
  %50 = load i32, i32* @rtc_ipc_handle, align 4
  %51 = call i32 @imx_scu_call_rpc(i32 %50, %struct.imx_sc_msg_timer_rtc_set_alarm* %6, i32 1)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %2
  %55 = load %struct.device*, %struct.device** %4, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @dev_err(%struct.device* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %3, align 4
  br label %73

59:                                               ; preds = %2
  %60 = load %struct.device*, %struct.device** %4, align 8
  %61 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %62 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @imx_sc_rtc_alarm_irq_enable(%struct.device* %60, i32 %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @dev_err(%struct.device* %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %59
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %67, %54
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @imx_scu_call_rpc(i32, %struct.imx_sc_msg_timer_rtc_set_alarm*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @imx_sc_rtc_alarm_irq_enable(%struct.device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
