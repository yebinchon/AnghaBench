; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_cmd.c_wl1251_cmd_data_path_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_cmd.c_wl1251_cmd_data_path_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.cmd_enabledisable_path = type { i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"cmd data path\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_ENABLE_TX = common dso_local global i32 0, align 4
@CMD_DISABLE_TX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"tx %s cmd for channel %d failed\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"stop\00", align 1
@DEBUG_BOOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"tx %s cmd channel %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_cmd_data_path_tx(%struct.wl1251* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1251*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cmd_enabledisable_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @DEBUG_CMD, align 4
  %12 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.cmd_enabledisable_path* @kzalloc(i32 4, i32 %13)
  store %struct.cmd_enabledisable_path* %14, %struct.cmd_enabledisable_path** %8, align 8
  %15 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %8, align 8
  %16 = icmp ne %struct.cmd_enabledisable_path* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %56

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %8, align 8
  %23 = getelementptr inbounds %struct.cmd_enabledisable_path, %struct.cmd_enabledisable_path* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @CMD_ENABLE_TX, align 4
  store i32 %27, i32* %10, align 4
  br label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @CMD_DISABLE_TX, align 4
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load %struct.wl1251*, %struct.wl1251** %5, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %8, align 8
  %34 = call i32 @wl1251_cmd_send(%struct.wl1251* %31, i32 %32, %struct.cmd_enabledisable_path* %33, i32 4)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %30
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @wl1251_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32 %42)
  br label %52

44:                                               ; preds = %30
  %45 = load i32, i32* @DEBUG_BOOT, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %50 = load i32, i32* %6, align 4
  %51 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %49, i32 %50)
  br label %52

52:                                               ; preds = %44, %37
  %53 = load %struct.cmd_enabledisable_path*, %struct.cmd_enabledisable_path** %8, align 8
  %54 = call i32 @kfree(%struct.cmd_enabledisable_path* %53)
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %17
  %57 = load i32, i32* %4, align 4
  ret i32 %57
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
