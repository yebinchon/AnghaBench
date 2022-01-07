; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_role_stop_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_role_stop_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, i32 }
%struct.wl12xx_cmd_role_stop = type { i32, i32, i32 }

@WL12XX_INVALID_LINK_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"cmd role stop dev\00", align 1
@DISCONNECT_IMMEDIATE = common dso_local global i32 0, align 4
@WLAN_REASON_UNSPECIFIED = common dso_local global i32 0, align 4
@CMD_ROLE_STOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to initiate cmd role stop\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*)* @wl12xx_cmd_role_stop_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_cmd_role_stop_dev(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca %struct.wl12xx_cmd_role_stop*, align 8
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  %8 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %9 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @WL12XX_INVALID_LINK_ID, align 8
  %12 = icmp eq i64 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %61

19:                                               ; preds = %2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.wl12xx_cmd_role_stop* @kzalloc(i32 12, i32 %20)
  store %struct.wl12xx_cmd_role_stop* %21, %struct.wl12xx_cmd_role_stop** %6, align 8
  %22 = load %struct.wl12xx_cmd_role_stop*, %struct.wl12xx_cmd_role_stop** %6, align 8
  %23 = icmp ne %struct.wl12xx_cmd_role_stop* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %7, align 4
  br label %59

27:                                               ; preds = %19
  %28 = load i32, i32* @DEBUG_CMD, align 4
  %29 = call i32 @wl1271_debug(i32 %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %31 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.wl12xx_cmd_role_stop*, %struct.wl12xx_cmd_role_stop** %6, align 8
  %34 = getelementptr inbounds %struct.wl12xx_cmd_role_stop, %struct.wl12xx_cmd_role_stop* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @DISCONNECT_IMMEDIATE, align 4
  %36 = load %struct.wl12xx_cmd_role_stop*, %struct.wl12xx_cmd_role_stop** %6, align 8
  %37 = getelementptr inbounds %struct.wl12xx_cmd_role_stop, %struct.wl12xx_cmd_role_stop* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @WLAN_REASON_UNSPECIFIED, align 4
  %39 = call i32 @cpu_to_le16(i32 %38)
  %40 = load %struct.wl12xx_cmd_role_stop*, %struct.wl12xx_cmd_role_stop** %6, align 8
  %41 = getelementptr inbounds %struct.wl12xx_cmd_role_stop, %struct.wl12xx_cmd_role_stop* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %43 = load i32, i32* @CMD_ROLE_STOP, align 4
  %44 = load %struct.wl12xx_cmd_role_stop*, %struct.wl12xx_cmd_role_stop** %6, align 8
  %45 = call i32 @wl1271_cmd_send(%struct.wl1271* %42, i32 %43, %struct.wl12xx_cmd_role_stop* %44, i32 12, i32 0)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %27
  %49 = call i32 @wl1271_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %56

50:                                               ; preds = %27
  %51 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %52 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %53 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %54 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %53, i32 0, i32 0
  %55 = call i32 @wl12xx_free_link(%struct.wl1271* %51, %struct.wl12xx_vif* %52, i64* %54)
  br label %56

56:                                               ; preds = %50, %48
  %57 = load %struct.wl12xx_cmd_role_stop*, %struct.wl12xx_cmd_role_stop** %6, align 8
  %58 = call i32 @kfree(%struct.wl12xx_cmd_role_stop* %57)
  br label %59

59:                                               ; preds = %56, %24
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %16
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.wl12xx_cmd_role_stop* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl12xx_cmd_role_stop*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @wl12xx_free_link(%struct.wl1271*, %struct.wl12xx_vif*, i64*) #1

declare dso_local i32 @kfree(%struct.wl12xx_cmd_role_stop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
