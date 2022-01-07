; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_read_fwlog_panic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_read_fwlog_panic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@WLCORE_QUIRK_FWLOG_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Reading FW panic log\00", align 1
@WL12XX_FWLOG_OUTPUT_DBG_PINS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*)* @wl12xx_read_fwlog_panic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl12xx_read_fwlog_panic(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %6 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @WLCORE_QUIRK_FWLOG_NOT_IMPLEMENTED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %55

12:                                               ; preds = %1
  %13 = call i32 @wl1271_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %15 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @pm_runtime_get_sync(i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %12
  %21 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %22 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @pm_runtime_put_noidle(i32 %23)
  br label %55

25:                                               ; preds = %12
  %26 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %27 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %25
  %31 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %32 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @WL12XX_FWLOG_OUTPUT_DBG_PINS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %40 = call i32 @wl12xx_cmd_stop_fwlog(%struct.wl1271* %39)
  br label %41

41:                                               ; preds = %38, %30, %25
  br label %42

42:                                               ; preds = %52, %41
  %43 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %44 = call i64 @wlcore_event_fw_logger(%struct.wl1271* %43)
  store i64 %44, i64* %3, align 8
  %45 = load i64, i64* %3, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = call i32 @msleep(i32 100)
  %49 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %50 = call i64 @wlcore_event_fw_logger(%struct.wl1271* %49)
  store i64 %50, i64* %3, align 8
  br label %51

51:                                               ; preds = %47, %42
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %3, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %42, label %55

55:                                               ; preds = %11, %20, %52
  ret void
}

declare dso_local i32 @wl1271_info(i8*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @wl12xx_cmd_stop_fwlog(%struct.wl1271*) #1

declare dso_local i64 @wlcore_event_fw_logger(%struct.wl1271*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
