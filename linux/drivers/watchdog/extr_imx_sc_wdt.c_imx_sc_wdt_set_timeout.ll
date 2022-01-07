; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_imx_sc_wdt.c_imx_sc_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_imx_sc_wdt.c_imx_sc_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.arm_smccc_res = type { i64 }

@IMX_SIP_TIMER = common dso_local global i32 0, align 4
@IMX_SIP_TIMER_SET_TIMEOUT_WDOG = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @imx_sc_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_sc_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.arm_smccc_res, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %8 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 4
  %9 = load i32, i32* @IMX_SIP_TIMER, align 4
  %10 = load i32, i32* @IMX_SIP_TIMER_SET_TIMEOUT_WDOG, align 4
  %11 = load i32, i32* %4, align 4
  %12 = mul i32 %11, 1000
  %13 = call i32 @arm_smccc_smc(i32 %9, i32 %10, i32 %12, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.arm_smccc_res* %5)
  %14 = getelementptr inbounds %struct.arm_smccc_res, %struct.arm_smccc_res* %5, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EACCES, align 4
  %19 = sub nsw i32 0, %18
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi i32 [ %19, %17 ], [ 0, %20 ]
  ret i32 %22
}

declare dso_local i32 @arm_smccc_smc(i32, i32, i32, i32, i32, i32, i32, i32, %struct.arm_smccc_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
