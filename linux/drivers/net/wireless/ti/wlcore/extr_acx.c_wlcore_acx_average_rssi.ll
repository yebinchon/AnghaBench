; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wlcore_acx_average_rssi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wlcore_acx_average_rssi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.acx_roaming_stats = type { i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"acx roaming statistics\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_ROAMING_STATISTICS_TBL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"acx roaming statistics failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_acx_average_rssi(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32* %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.acx_roaming_stats*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @DEBUG_ACX, align 4
  %10 = call i32 @wl1271_debug(i32 %9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.acx_roaming_stats* @kzalloc(i32 8, i32 %11)
  store %struct.acx_roaming_stats* %12, %struct.acx_roaming_stats** %7, align 8
  %13 = load %struct.acx_roaming_stats*, %struct.acx_roaming_stats** %7, align 8
  %14 = icmp ne %struct.acx_roaming_stats* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %20 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.acx_roaming_stats*, %struct.acx_roaming_stats** %7, align 8
  %23 = getelementptr inbounds %struct.acx_roaming_stats, %struct.acx_roaming_stats* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %25 = load i32, i32* @ACX_ROAMING_STATISTICS_TBL, align 4
  %26 = load %struct.acx_roaming_stats*, %struct.acx_roaming_stats** %7, align 8
  %27 = call i32 @wl1271_cmd_interrogate(%struct.wl1271* %24, i32 %25, %struct.acx_roaming_stats* %26, i32 8, i32 8)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @wl1271_warning(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %8, align 4
  br label %40

35:                                               ; preds = %18
  %36 = load %struct.acx_roaming_stats*, %struct.acx_roaming_stats** %7, align 8
  %37 = getelementptr inbounds %struct.acx_roaming_stats, %struct.acx_roaming_stats* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  br label %40

40:                                               ; preds = %35, %30, %15
  %41 = load %struct.acx_roaming_stats*, %struct.acx_roaming_stats** %7, align 8
  %42 = call i32 @kfree(%struct.acx_roaming_stats* %41)
  %43 = load i32, i32* %8, align 4
  ret i32 %43
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.acx_roaming_stats* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_interrogate(%struct.wl1271*, i32, %struct.acx_roaming_stats*, i32, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_roaming_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
