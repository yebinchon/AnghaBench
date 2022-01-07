; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_scan.c___wl18xx_scan_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_scan.c___wl18xx_scan_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.wl18xx_cmd_scan_stop = type { i32, i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cmd periodic scan stop\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to alloc memory to send sched scan stop\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CMD_STOP_SCAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"failed to send sched scan stop command\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, i32)* @__wl18xx_scan_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__wl18xx_scan_stop(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wl18xx_cmd_scan_stop*, align 8
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @DEBUG_CMD, align 4
  %11 = call i32 @wl1271_debug(i32 %10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.wl18xx_cmd_scan_stop* @kzalloc(i32 8, i32 %12)
  store %struct.wl18xx_cmd_scan_stop* %13, %struct.wl18xx_cmd_scan_stop** %8, align 8
  %14 = load %struct.wl18xx_cmd_scan_stop*, %struct.wl18xx_cmd_scan_stop** %8, align 8
  %15 = icmp ne %struct.wl18xx_cmd_scan_stop* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = call i32 @wl1271_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %42

20:                                               ; preds = %3
  %21 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %22 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wl18xx_cmd_scan_stop*, %struct.wl18xx_cmd_scan_stop** %8, align 8
  %25 = getelementptr inbounds %struct.wl18xx_cmd_scan_stop, %struct.wl18xx_cmd_scan_stop* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.wl18xx_cmd_scan_stop*, %struct.wl18xx_cmd_scan_stop** %8, align 8
  %28 = getelementptr inbounds %struct.wl18xx_cmd_scan_stop, %struct.wl18xx_cmd_scan_stop* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %30 = load i32, i32* @CMD_STOP_SCAN, align 4
  %31 = load %struct.wl18xx_cmd_scan_stop*, %struct.wl18xx_cmd_scan_stop** %8, align 8
  %32 = call i32 @wl1271_cmd_send(%struct.wl1271* %29, i32 %30, %struct.wl18xx_cmd_scan_stop* %31, i32 8, i32 0)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %20
  %36 = call i32 @wl1271_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %38

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37, %35
  %39 = load %struct.wl18xx_cmd_scan_stop*, %struct.wl18xx_cmd_scan_stop** %8, align 8
  %40 = call i32 @kfree(%struct.wl18xx_cmd_scan_stop* %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %16
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl18xx_cmd_scan_stop* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl18xx_cmd_scan_stop*, i32, i32) #1

declare dso_local i32 @kfree(%struct.wl18xx_cmd_scan_stop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
