; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_keep_alive_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_keep_alive_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.wl1271_acx_keep_alive_mode = type { i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"acx keep alive mode: %d\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_KEEP_ALIVE_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"acx keep alive mode failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_keep_alive_mode(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271_acx_keep_alive_mode*, align 8
  %8 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.wl1271_acx_keep_alive_mode* null, %struct.wl1271_acx_keep_alive_mode** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @DEBUG_ACX, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @wl1271_debug(i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.wl1271_acx_keep_alive_mode* @kzalloc(i32 8, i32 %12)
  store %struct.wl1271_acx_keep_alive_mode* %13, %struct.wl1271_acx_keep_alive_mode** %7, align 8
  %14 = load %struct.wl1271_acx_keep_alive_mode*, %struct.wl1271_acx_keep_alive_mode** %7, align 8
  %15 = icmp ne %struct.wl1271_acx_keep_alive_mode* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %8, align 4
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %21 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.wl1271_acx_keep_alive_mode*, %struct.wl1271_acx_keep_alive_mode** %7, align 8
  %24 = getelementptr inbounds %struct.wl1271_acx_keep_alive_mode, %struct.wl1271_acx_keep_alive_mode* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.wl1271_acx_keep_alive_mode*, %struct.wl1271_acx_keep_alive_mode** %7, align 8
  %27 = getelementptr inbounds %struct.wl1271_acx_keep_alive_mode, %struct.wl1271_acx_keep_alive_mode* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %29 = load i32, i32* @ACX_KEEP_ALIVE_MODE, align 4
  %30 = load %struct.wl1271_acx_keep_alive_mode*, %struct.wl1271_acx_keep_alive_mode** %7, align 8
  %31 = call i32 @wl1271_cmd_configure(%struct.wl1271* %28, i32 %29, %struct.wl1271_acx_keep_alive_mode* %30, i32 8)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %19
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @wl1271_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %38

37:                                               ; preds = %19
  br label %38

38:                                               ; preds = %37, %34, %16
  %39 = load %struct.wl1271_acx_keep_alive_mode*, %struct.wl1271_acx_keep_alive_mode** %7, align 8
  %40 = call i32 @kfree(%struct.wl1271_acx_keep_alive_mode* %39)
  %41 = load i32, i32* %8, align 4
  ret i32 %41
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local %struct.wl1271_acx_keep_alive_mode* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.wl1271_acx_keep_alive_mode*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.wl1271_acx_keep_alive_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
