; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_cmd.c_wl18xx_cmd_set_cac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_cmd.c_wl18xx_cmd_set_cac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, i32, i32, i32 }
%struct.wlcore_cmd_cac_start = type { i32, i32, i32, i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cmd cac (channel %d) %s\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@WLCORE_BAND_5GHZ = common dso_local global i32 0, align 4
@CMD_CAC_START = common dso_local global i32 0, align 4
@CMD_CAC_STOP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"failed to send cac command\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl18xx_cmd_set_cac(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wlcore_cmd_cac_start*, align 8
  %9 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* @DEBUG_CMD, align 4
  %11 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %12 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %18 = call i32 @wl1271_debug(i32 %10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13, i8* %17)
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.wlcore_cmd_cac_start* @kzalloc(i32 16, i32 %19)
  store %struct.wlcore_cmd_cac_start* %20, %struct.wlcore_cmd_cac_start** %8, align 8
  %21 = load %struct.wlcore_cmd_cac_start*, %struct.wlcore_cmd_cac_start** %8, align 8
  %22 = icmp ne %struct.wlcore_cmd_cac_start* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %73

26:                                               ; preds = %3
  %27 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %28 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.wlcore_cmd_cac_start*, %struct.wlcore_cmd_cac_start** %8, align 8
  %31 = getelementptr inbounds %struct.wlcore_cmd_cac_start, %struct.wlcore_cmd_cac_start* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %33 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.wlcore_cmd_cac_start*, %struct.wlcore_cmd_cac_start** %8, align 8
  %36 = getelementptr inbounds %struct.wlcore_cmd_cac_start, %struct.wlcore_cmd_cac_start* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %38 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %26
  %43 = load i32, i32* @WLCORE_BAND_5GHZ, align 4
  %44 = load %struct.wlcore_cmd_cac_start*, %struct.wlcore_cmd_cac_start** %8, align 8
  %45 = getelementptr inbounds %struct.wlcore_cmd_cac_start, %struct.wlcore_cmd_cac_start* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %42, %26
  %47 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %48 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @wlcore_get_native_channel_type(i32 %49)
  %51 = load %struct.wlcore_cmd_cac_start*, %struct.wlcore_cmd_cac_start** %8, align 8
  %52 = getelementptr inbounds %struct.wlcore_cmd_cac_start, %struct.wlcore_cmd_cac_start* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* @CMD_CAC_START, align 4
  br label %60

58:                                               ; preds = %46
  %59 = load i32, i32* @CMD_CAC_STOP, align 4
  br label %60

60:                                               ; preds = %58, %56
  %61 = phi i32 [ %57, %56 ], [ %59, %58 ]
  %62 = load %struct.wlcore_cmd_cac_start*, %struct.wlcore_cmd_cac_start** %8, align 8
  %63 = call i32 @wl1271_cmd_send(%struct.wl1271* %53, i32 %61, %struct.wlcore_cmd_cac_start* %62, i32 16, i32 0)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = call i32 @wl1271_error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %69

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %66
  %70 = load %struct.wlcore_cmd_cac_start*, %struct.wlcore_cmd_cac_start** %8, align 8
  %71 = call i32 @kfree(%struct.wlcore_cmd_cac_start* %70)
  %72 = load i32, i32* %9, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %69, %23
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32, i8*) #1

declare dso_local %struct.wlcore_cmd_cac_start* @kzalloc(i32, i32) #1

declare dso_local i32 @wlcore_get_native_channel_type(i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wlcore_cmd_cac_start*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @kfree(%struct.wlcore_cmd_cac_start*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
