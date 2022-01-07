; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_bcn_dtim_options.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_bcn_dtim_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_beacon_broadcast = type { i32, i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"acx bcn dtim options\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BCN_RX_TIMEOUT_DEF_VALUE = common dso_local global i32 0, align 4
@BROADCAST_RX_TIMEOUT_DEF_VALUE = common dso_local global i32 0, align 4
@RX_BROADCAST_IN_PS_DEF_VALUE = common dso_local global i32 0, align 4
@CONSECUTIVE_PS_POLL_FAILURE_DEF = common dso_local global i32 0, align 4
@ACX_BCN_DTIM_OPTIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to set rx config: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_bcn_dtim_options(%struct.wl1251* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wl1251*, align 8
  %4 = alloca %struct.acx_beacon_broadcast*, align 8
  %5 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %3, align 8
  %6 = load i32, i32* @DEBUG_ACX, align 4
  %7 = call i32 @wl1251_debug(i32 %6, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.acx_beacon_broadcast* @kzalloc(i32 16, i32 %8)
  store %struct.acx_beacon_broadcast* %9, %struct.acx_beacon_broadcast** %4, align 8
  %10 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %4, align 8
  %11 = icmp ne %struct.acx_beacon_broadcast* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %42

15:                                               ; preds = %1
  %16 = load i32, i32* @BCN_RX_TIMEOUT_DEF_VALUE, align 4
  %17 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %4, align 8
  %18 = getelementptr inbounds %struct.acx_beacon_broadcast, %struct.acx_beacon_broadcast* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @BROADCAST_RX_TIMEOUT_DEF_VALUE, align 4
  %20 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %4, align 8
  %21 = getelementptr inbounds %struct.acx_beacon_broadcast, %struct.acx_beacon_broadcast* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @RX_BROADCAST_IN_PS_DEF_VALUE, align 4
  %23 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %4, align 8
  %24 = getelementptr inbounds %struct.acx_beacon_broadcast, %struct.acx_beacon_broadcast* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @CONSECUTIVE_PS_POLL_FAILURE_DEF, align 4
  %26 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %4, align 8
  %27 = getelementptr inbounds %struct.acx_beacon_broadcast, %struct.acx_beacon_broadcast* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.wl1251*, %struct.wl1251** %3, align 8
  %29 = load i32, i32* @ACX_BCN_DTIM_OPTIONS, align 4
  %30 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %4, align 8
  %31 = call i32 @wl1251_cmd_configure(%struct.wl1251* %28, i32 %29, %struct.acx_beacon_broadcast* %30, i32 16)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %15
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @wl1251_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %38

37:                                               ; preds = %15
  br label %38

38:                                               ; preds = %37, %34
  %39 = load %struct.acx_beacon_broadcast*, %struct.acx_beacon_broadcast** %4, align 8
  %40 = call i32 @kfree(%struct.acx_beacon_broadcast* %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_beacon_broadcast* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_beacon_broadcast*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_beacon_broadcast*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
