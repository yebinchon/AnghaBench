; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_cmd.c_wl18xx_cmd_radar_detection_debug.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_cmd.c_wl18xx_cmd_radar_detection_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl18xx_cmd_dfs_radar_debug = type { i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cmd radar detection debug (chan %d)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_DFS_RADAR_DETECTION_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"failed to send radar detection debug command\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl18xx_cmd_radar_detection_debug(%struct.wl1271* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wl18xx_cmd_dfs_radar_debug*, align 8
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @DEBUG_CMD, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @wl1271_debug(i32 %8, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.wl18xx_cmd_dfs_radar_debug* @kzalloc(i32 4, i32 %11)
  store %struct.wl18xx_cmd_dfs_radar_debug* %12, %struct.wl18xx_cmd_dfs_radar_debug** %6, align 8
  %13 = load %struct.wl18xx_cmd_dfs_radar_debug*, %struct.wl18xx_cmd_dfs_radar_debug** %6, align 8
  %14 = icmp ne %struct.wl18xx_cmd_dfs_radar_debug* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %35

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.wl18xx_cmd_dfs_radar_debug*, %struct.wl18xx_cmd_dfs_radar_debug** %6, align 8
  %21 = getelementptr inbounds %struct.wl18xx_cmd_dfs_radar_debug, %struct.wl18xx_cmd_dfs_radar_debug* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %23 = load i32, i32* @CMD_DFS_RADAR_DETECTION_DEBUG, align 4
  %24 = load %struct.wl18xx_cmd_dfs_radar_debug*, %struct.wl18xx_cmd_dfs_radar_debug** %6, align 8
  %25 = call i32 @wl1271_cmd_send(%struct.wl1271* %22, i32 %23, %struct.wl18xx_cmd_dfs_radar_debug* %24, i32 4, i32 0)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = call i32 @wl1271_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  br label %31

30:                                               ; preds = %18
  br label %31

31:                                               ; preds = %30, %28
  %32 = load %struct.wl18xx_cmd_dfs_radar_debug*, %struct.wl18xx_cmd_dfs_radar_debug** %6, align 8
  %33 = call i32 @kfree(%struct.wl18xx_cmd_dfs_radar_debug* %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %31, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local %struct.wl18xx_cmd_dfs_radar_debug* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl18xx_cmd_dfs_radar_debug*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @kfree(%struct.wl18xx_cmd_dfs_radar_debug*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
