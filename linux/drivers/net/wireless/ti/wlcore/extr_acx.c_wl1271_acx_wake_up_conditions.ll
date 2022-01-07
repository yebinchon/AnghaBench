; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_wake_up_conditions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_wake_up_conditions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.acx_wake_up_condition = type { i8*, i8*, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"acx wake up conditions (wake_up_event %d listen_interval %d)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_WAKE_UP_CONDITIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"could not set wake up conditions: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_wake_up_conditions(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.acx_wake_up_condition*, align 8
  %10 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i32, i32* @DEBUG_ACX, align 4
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = call i32 @wl1271_debug(i32 %11, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %12, i8* %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.acx_wake_up_condition* @kzalloc(i32 24, i32 %15)
  store %struct.acx_wake_up_condition* %16, %struct.acx_wake_up_condition** %9, align 8
  %17 = load %struct.acx_wake_up_condition*, %struct.acx_wake_up_condition** %9, align 8
  %18 = icmp ne %struct.acx_wake_up_condition* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %10, align 4
  br label %44

22:                                               ; preds = %4
  %23 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %24 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.acx_wake_up_condition*, %struct.acx_wake_up_condition** %9, align 8
  %27 = getelementptr inbounds %struct.acx_wake_up_condition, %struct.acx_wake_up_condition* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load %struct.acx_wake_up_condition*, %struct.acx_wake_up_condition** %9, align 8
  %30 = getelementptr inbounds %struct.acx_wake_up_condition, %struct.acx_wake_up_condition* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = load %struct.acx_wake_up_condition*, %struct.acx_wake_up_condition** %9, align 8
  %33 = getelementptr inbounds %struct.acx_wake_up_condition, %struct.acx_wake_up_condition* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %35 = load i32, i32* @ACX_WAKE_UP_CONDITIONS, align 4
  %36 = load %struct.acx_wake_up_condition*, %struct.acx_wake_up_condition** %9, align 8
  %37 = call i32 @wl1271_cmd_configure(%struct.wl1271* %34, i32 %35, %struct.acx_wake_up_condition* %36, i32 24)
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %22
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @wl1271_warning(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %44

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %43, %40, %19
  %45 = load %struct.acx_wake_up_condition*, %struct.acx_wake_up_condition** %9, align 8
  %46 = call i32 @kfree(%struct.acx_wake_up_condition* %45)
  %47 = load i32, i32* %10, align 4
  ret i32 %47
}

declare dso_local i32 @wl1271_debug(i32, i8*, i8*, i8*) #1

declare dso_local %struct.acx_wake_up_condition* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_wake_up_condition*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_wake_up_condition*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
