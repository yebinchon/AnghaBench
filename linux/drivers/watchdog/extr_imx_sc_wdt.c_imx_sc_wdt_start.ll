; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_imx_sc_wdt.c_imx_sc_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_imx_sc_wdt.c_imx_sc_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.arm_smccc_res = type { i64 }

@IMX_SIP_TIMER = common dso_local global i32 0, align 4
@IMX_SIP_TIMER_START_WDOG = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@IMX_SIP_TIMER_SET_WDOG_ACT = common dso_local global i32 0, align 4
@SC_TIMER_WDOG_ACTION_PARTITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @imx_sc_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_sc_wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca %struct.arm_smccc_res, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  %5 = load i32, i32* @IMX_SIP_TIMER, align 4
  %6 = load i32, i32* @IMX_SIP_TIMER_START_WDOG, align 4
  %7 = call i32 @arm_smccc_smc(i32 %5, i32 %6, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.arm_smccc_res* %4)
  %8 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %4, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EACCES, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %28

14:                                               ; preds = %1
  %15 = load i32, i32* @IMX_SIP_TIMER, align 4
  %16 = load i32, i32* @IMX_SIP_TIMER_SET_WDOG_ACT, align 4
  %17 = load i32, i32* @SC_TIMER_WDOG_ACTION_PARTITION, align 4
  %18 = call i32 @arm_smccc_smc(i32 %15, i32 %16, i32 %17, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.arm_smccc_res* %4)
  %19 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %4, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load i32, i32* @EACCES, align 4
  %24 = sub nsw i32 0, %23
  br label %26

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25, %22
  %27 = phi i32 [ %24, %22 ], [ 0, %25 ]
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %11
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @arm_smccc_smc(i32, i32, i32, i32, i32, i32, i32, i32, %struct.arm_smccc_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
