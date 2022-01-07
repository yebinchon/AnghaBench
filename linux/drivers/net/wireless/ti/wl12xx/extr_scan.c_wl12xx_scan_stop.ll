; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl12xx/extr_scan.c_wl12xx_scan_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl12xx/extr_scan.c_wl12xx_scan_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.wl12xx_vif = type { i32 }
%struct.wl1271_cmd_header = type { i32 }

@WL1271_SCAN_STATE_IDLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cmd scan stop\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_STOP_SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cmd stop_scan failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_scan_stop(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca %struct.wl1271_cmd_header*, align 8
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store %struct.wl1271_cmd_header* null, %struct.wl1271_cmd_header** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %9 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @WL1271_SCAN_STATE_IDLE, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %44

20:                                               ; preds = %2
  %21 = load i32, i32* @DEBUG_CMD, align 4
  %22 = call i32 @wl1271_debug(i32 %21, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.wl1271_cmd_header* @kzalloc(i32 4, i32 %23)
  store %struct.wl1271_cmd_header* %24, %struct.wl1271_cmd_header** %6, align 8
  %25 = load %struct.wl1271_cmd_header*, %struct.wl1271_cmd_header** %6, align 8
  %26 = icmp ne %struct.wl1271_cmd_header* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %7, align 4
  br label %40

30:                                               ; preds = %20
  %31 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %32 = load i32, i32* @CMD_STOP_SCAN, align 4
  %33 = load %struct.wl1271_cmd_header*, %struct.wl1271_cmd_header** %6, align 8
  %34 = call i32 @wl1271_cmd_send(%struct.wl1271* %31, i32 %32, %struct.wl1271_cmd_header* %33, i32 4, i32 0)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = call i32 @wl1271_error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %40

39:                                               ; preds = %30
  br label %40

40:                                               ; preds = %39, %37, %27
  %41 = load %struct.wl1271_cmd_header*, %struct.wl1271_cmd_header** %6, align 8
  %42 = call i32 @kfree(%struct.wl1271_cmd_header* %41)
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %40, %17
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl1271_cmd_header* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl1271_cmd_header*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @kfree(%struct.wl1271_cmd_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
