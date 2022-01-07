; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_cmd.c_wl1251_cmd_data_path_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_cmd.c_wl1251_cmd_data_path_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.cmd_enabledisable_path = type { i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cmd data path\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_ENABLE_RX = common dso_local global i32 0, align 4
@CMD_DISABLE_RX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"rx %s cmd for channel %d failed\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@DEBUG_BOOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"rx %s cmd channel %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_cmd_data_path_rx(%struct.wl1251* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.wl1251*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cmd_enabledisable_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* @DEBUG_CMD, align 4
  %11 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.cmd_enabledisable_path* @kzalloc(i32 4, i32 %12)
  store %struct.cmd_enabledisable_path* %13, %struct.cmd_enabledisable_path** %7, align 8
  %14 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %7, align 8
  %15 = icmp ne %struct.cmd_enabledisable_path* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  br label %51

19:                                               ; preds = %3
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %7, align 8
  %22 = getelementptr inbounds %struct.cmd_enabledisable_path, %struct.cmd_enabledisable_path* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @CMD_ENABLE_RX, align 4
  store i32 %26, i32* %9, align 4
  br label %29

27:                                               ; preds = %19
  %28 = load i32, i32* @CMD_DISABLE_RX, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %7, align 8
  %33 = call i32 @wl1251_cmd_send(%struct.wl1251* %30, i32 %31, %struct.cmd_enabledisable_path* %32, i32 4)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %29
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @wl1251_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %40, i32 %41)
  br label %51

43:                                               ; preds = %29
  %44 = load i32, i32* @DEBUG_BOOT, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %49 = load i32, i32* %5, align 4
  %50 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %48, i32 %49)
  br label %51

51:                                               ; preds = %43, %36, %16
  %52 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %7, align 8
  %53 = call i32 @kfree(%struct.cmd_enabledisable_path* %52)
  %54 = load i32, i32* %8, align 4
  ret i32 %54
}

declare dso_local i32 @wl1251_debug(i32, i8*, ...) #1

declare dso_local %struct.cmd_enabledisable_path* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1251_cmd_send(%struct.wl1251*, i32, %struct.cmd_enabledisable_path*, i32) #1

declare dso_local i32 @wl1251_error(i8*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.cmd_enabledisable_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
