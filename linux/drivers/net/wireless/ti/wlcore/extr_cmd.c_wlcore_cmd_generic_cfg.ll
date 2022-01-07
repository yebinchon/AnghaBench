; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wlcore_cmd_generic_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wlcore_cmd_generic_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.wlcore_cmd_generic_cfg = type { i8*, i8*, i8*, i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"cmd generic cfg (role %d feature %d enable %d value %d)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_GENERIC_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to send generic cfg command\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_cmd_generic_cfg(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i8* %2, i8* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca %struct.wl12xx_vif*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.wlcore_cmd_generic_cfg*, align 8
  %13 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  %14 = load i32, i32* @DEBUG_CMD, align 4
  %15 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %16 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %9, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = call i32 @wl1271_debug(i32 %14, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %17, i8* %18, i8* %19, i8* %20)
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.wlcore_cmd_generic_cfg* @kzalloc(i32 32, i32 %22)
  store %struct.wlcore_cmd_generic_cfg* %23, %struct.wlcore_cmd_generic_cfg** %12, align 8
  %24 = load %struct.wlcore_cmd_generic_cfg*, %struct.wlcore_cmd_generic_cfg** %12, align 8
  %25 = icmp ne %struct.wlcore_cmd_generic_cfg* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %57

29:                                               ; preds = %5
  %30 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %31 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.wlcore_cmd_generic_cfg*, %struct.wlcore_cmd_generic_cfg** %12, align 8
  %34 = getelementptr inbounds %struct.wlcore_cmd_generic_cfg, %struct.wlcore_cmd_generic_cfg* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.wlcore_cmd_generic_cfg*, %struct.wlcore_cmd_generic_cfg** %12, align 8
  %37 = getelementptr inbounds %struct.wlcore_cmd_generic_cfg, %struct.wlcore_cmd_generic_cfg* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = load %struct.wlcore_cmd_generic_cfg*, %struct.wlcore_cmd_generic_cfg** %12, align 8
  %40 = getelementptr inbounds %struct.wlcore_cmd_generic_cfg, %struct.wlcore_cmd_generic_cfg* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %11, align 8
  %42 = load %struct.wlcore_cmd_generic_cfg*, %struct.wlcore_cmd_generic_cfg** %12, align 8
  %43 = getelementptr inbounds %struct.wlcore_cmd_generic_cfg, %struct.wlcore_cmd_generic_cfg* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %45 = load i32, i32* @CMD_GENERIC_CFG, align 4
  %46 = load %struct.wlcore_cmd_generic_cfg*, %struct.wlcore_cmd_generic_cfg** %12, align 8
  %47 = call i32 @wl1271_cmd_send(%struct.wl1271* %44, i32 %45, %struct.wlcore_cmd_generic_cfg* %46, i32 32, i32 0)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %29
  %51 = call i32 @wl1271_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %53

52:                                               ; preds = %29
  br label %53

53:                                               ; preds = %52, %50
  %54 = load %struct.wlcore_cmd_generic_cfg*, %struct.wlcore_cmd_generic_cfg** %12, align 8
  %55 = call i32 @kfree(%struct.wlcore_cmd_generic_cfg* %54)
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %26
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32, i8*, i8*, i8*) #1

declare dso_local %struct.wlcore_cmd_generic_cfg* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wlcore_cmd_generic_cfg*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @kfree(%struct.wlcore_cmd_generic_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
