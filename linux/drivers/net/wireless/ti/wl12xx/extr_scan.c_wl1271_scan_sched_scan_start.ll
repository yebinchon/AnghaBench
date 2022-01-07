; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl12xx/extr_scan.c_wl1271_scan_sched_scan_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl12xx/extr_scan.c_wl1271_scan_sched_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, i32, i32 }
%struct.wl1271_cmd_sched_scan_start = type { i32, i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cmd periodic scan start\00", align 1
@BSS_TYPE_STA_BSS = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WLCORE_QUIRK_NO_SCHED_SCAN_WHILE_CONN = common dso_local global i32 0, align 4
@WLVIF_FLAG_IN_USE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WL1271_SCAN_DEFAULT_TAG = common dso_local global i32 0, align 4
@CMD_START_PERIODIC_SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"failed to send scan start command\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_scan_sched_scan_start(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca %struct.wl1271_cmd_sched_scan_start*, align 8
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @DEBUG_CMD, align 4
  %9 = call i32 @wl1271_debug(i32 %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %11 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EOPNOTSUPP, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %64

18:                                               ; preds = %2
  %19 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %20 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @WLCORE_QUIRK_NO_SCHED_SCAN_WHILE_CONN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load i32, i32* @WLVIF_FLAG_IN_USE, align 4
  %27 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %28 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %27, i32 0, i32 2
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %64

34:                                               ; preds = %25, %18
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.wl1271_cmd_sched_scan_start* @kzalloc(i32 8, i32 %35)
  store %struct.wl1271_cmd_sched_scan_start* %36, %struct.wl1271_cmd_sched_scan_start** %6, align 8
  %37 = load %struct.wl1271_cmd_sched_scan_start*, %struct.wl1271_cmd_sched_scan_start** %6, align 8
  %38 = icmp ne %struct.wl1271_cmd_sched_scan_start* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %64

42:                                               ; preds = %34
  %43 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %44 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.wl1271_cmd_sched_scan_start*, %struct.wl1271_cmd_sched_scan_start** %6, align 8
  %47 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_start, %struct.wl1271_cmd_sched_scan_start* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @WL1271_SCAN_DEFAULT_TAG, align 4
  %49 = load %struct.wl1271_cmd_sched_scan_start*, %struct.wl1271_cmd_sched_scan_start** %6, align 8
  %50 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_start, %struct.wl1271_cmd_sched_scan_start* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %52 = load i32, i32* @CMD_START_PERIODIC_SCAN, align 4
  %53 = load %struct.wl1271_cmd_sched_scan_start*, %struct.wl1271_cmd_sched_scan_start** %6, align 8
  %54 = call i32 @wl1271_cmd_send(%struct.wl1271* %51, i32 %52, %struct.wl1271_cmd_sched_scan_start* %53, i32 8, i32 0)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = call i32 @wl1271_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %60

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59, %57
  %61 = load %struct.wl1271_cmd_sched_scan_start*, %struct.wl1271_cmd_sched_scan_start** %6, align 8
  %62 = call i32 @kfree(%struct.wl1271_cmd_sched_scan_start* %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %39, %31, %15
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.wl1271_cmd_sched_scan_start* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl1271_cmd_sched_scan_start*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @kfree(%struct.wl1271_cmd_sched_scan_start*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
