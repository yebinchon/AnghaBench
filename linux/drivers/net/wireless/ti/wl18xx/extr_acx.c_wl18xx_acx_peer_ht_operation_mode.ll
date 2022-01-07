; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_acx.c_wl18xx_acx_peer_ht_operation_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_acx.c_wl18xx_acx_peer_ht_operation_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wlcore_peer_ht_operation_mode = type { i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"acx peer ht operation mode hlid %d bw %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WLCORE_BANDWIDTH_40MHZ = common dso_local global i32 0, align 4
@WLCORE_BANDWIDTH_20MHZ = common dso_local global i32 0, align 4
@ACX_PEER_HT_OPERATION_MODE_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"acx peer ht operation mode failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl18xx_acx_peer_ht_operation_mode(%struct.wl1271* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.wlcore_peer_ht_operation_mode*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @DEBUG_ACX, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @wl1271_debug(i32 %9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.wlcore_peer_ht_operation_mode* @kzalloc(i32 8, i32 %13)
  store %struct.wlcore_peer_ht_operation_mode* %14, %struct.wlcore_peer_ht_operation_mode** %7, align 8
  %15 = load %struct.wlcore_peer_ht_operation_mode*, %struct.wlcore_peer_ht_operation_mode** %7, align 8
  %16 = icmp ne %struct.wlcore_peer_ht_operation_mode* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %44

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.wlcore_peer_ht_operation_mode*, %struct.wlcore_peer_ht_operation_mode** %7, align 8
  %23 = getelementptr inbounds %struct.wlcore_peer_ht_operation_mode, %struct.wlcore_peer_ht_operation_mode* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @WLCORE_BANDWIDTH_40MHZ, align 4
  br label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @WLCORE_BANDWIDTH_20MHZ, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  %32 = load %struct.wlcore_peer_ht_operation_mode*, %struct.wlcore_peer_ht_operation_mode** %7, align 8
  %33 = getelementptr inbounds %struct.wlcore_peer_ht_operation_mode, %struct.wlcore_peer_ht_operation_mode* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %35 = load i32, i32* @ACX_PEER_HT_OPERATION_MODE_CFG, align 4
  %36 = load %struct.wlcore_peer_ht_operation_mode*, %struct.wlcore_peer_ht_operation_mode** %7, align 8
  %37 = call i32 @wl1271_cmd_configure(%struct.wl1271* %34, i32 %35, %struct.wlcore_peer_ht_operation_mode* %36, i32 8)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @wl1271_warning(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %44

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %40, %17
  %45 = load %struct.wlcore_peer_ht_operation_mode*, %struct.wlcore_peer_ht_operation_mode** %7, align 8
  %46 = call i32 @kfree(%struct.wlcore_peer_ht_operation_mode* %45)
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32, i32) #1

declare dso_local %struct.wlcore_peer_ht_operation_mode* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wlcore_peer_ht_operation_mode*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wlcore_peer_ht_operation_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
