; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_service_period_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_service_period_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_rx_timeout = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"acx service period timeout\00", align 1
@RX_TIMEOUT_PS_POLL_DEF = common dso_local global i32 0, align 4
@RX_TIMEOUT_UPSD_DEF = common dso_local global i32 0, align 4
@ACX_SERVICE_PERIOD_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"failed to set service period timeout: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_service_period_timeout(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca %struct.acx_rx_timeout*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.acx_rx_timeout* @kzalloc(i32 8, i32 %6)
  store %struct.acx_rx_timeout* %7, %struct.acx_rx_timeout** %4, align 8
  %8 = load %struct.acx_rx_timeout*, %struct.acx_rx_timeout** %4, align 8
  %9 = icmp ne %struct.acx_rx_timeout* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %36

13:                                               ; preds = %1
  %14 = load i32, i32* @DEBUG_ACX, align 4
  %15 = call i32 @wl1251_debug(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @RX_TIMEOUT_PS_POLL_DEF, align 4
  %17 = load %struct.acx_rx_timeout*, %struct.acx_rx_timeout** %4, align 8
  %18 = getelementptr inbounds %struct.acx_rx_timeout, %struct.acx_rx_timeout* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @RX_TIMEOUT_UPSD_DEF, align 4
  %20 = load %struct.acx_rx_timeout*, %struct.acx_rx_timeout** %4, align 8
  %21 = getelementptr inbounds %struct.acx_rx_timeout, %struct.acx_rx_timeout* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %23 = load i32, i32* @ACX_SERVICE_PERIOD_TIMEOUT, align 4
  %24 = load %struct.acx_rx_timeout*, %struct.acx_rx_timeout** %4, align 8
  %25 = call i32 @wl1251_cmd_configure(%struct.wl1251* %22, i32 %23, %struct.acx_rx_timeout* %24, i32 8)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %13
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @wl1251_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %32

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31, %28
  %33 = load %struct.acx_rx_timeout*, %struct.acx_rx_timeout** %4, align 8
  %34 = call i32 @kfree(%struct.acx_rx_timeout* %33)
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %32, %10
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.acx_rx_timeout* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_rx_timeout*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_rx_timeout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
