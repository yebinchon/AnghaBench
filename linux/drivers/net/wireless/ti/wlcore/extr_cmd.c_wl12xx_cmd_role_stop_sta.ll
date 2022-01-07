; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_role_stop_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_cmd.c_wl12xx_cmd_role_stop_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.wl12xx_cmd_role_stop = type { i32, i32, i32 }

@WL12XX_INVALID_LINK_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"cmd role stop sta %d\00", align 1
@DISCONNECT_IMMEDIATE = common dso_local global i32 0, align 4
@WLAN_REASON_UNSPECIFIED = common dso_local global i32 0, align 4
@CMD_ROLE_STOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"failed to initiate cmd role stop sta\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_cmd_role_stop_sta(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca %struct.wl12xx_cmd_role_stop*, align 8
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  %8 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %9 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @WL12XX_INVALID_LINK_ID, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @WARN_ON(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %66

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.wl12xx_cmd_role_stop* @kzalloc(i32 12, i32 %21)
  store %struct.wl12xx_cmd_role_stop* %22, %struct.wl12xx_cmd_role_stop** %6, align 8
  %23 = load %struct.wl12xx_cmd_role_stop*, %struct.wl12xx_cmd_role_stop** %6, align 8
  %24 = icmp ne %struct.wl12xx_cmd_role_stop* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %64

28:                                               ; preds = %20
  %29 = load i32, i32* @DEBUG_CMD, align 4
  %30 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %31 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @wl1271_debug(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %35 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.wl12xx_cmd_role_stop*, %struct.wl12xx_cmd_role_stop** %6, align 8
  %38 = getelementptr inbounds %struct.wl12xx_cmd_role_stop, %struct.wl12xx_cmd_role_stop* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @DISCONNECT_IMMEDIATE, align 4
  %40 = load %struct.wl12xx_cmd_role_stop*, %struct.wl12xx_cmd_role_stop** %6, align 8
  %41 = getelementptr inbounds %struct.wl12xx_cmd_role_stop, %struct.wl12xx_cmd_role_stop* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @WLAN_REASON_UNSPECIFIED, align 4
  %43 = call i32 @cpu_to_le16(i32 %42)
  %44 = load %struct.wl12xx_cmd_role_stop*, %struct.wl12xx_cmd_role_stop** %6, align 8
  %45 = getelementptr inbounds %struct.wl12xx_cmd_role_stop, %struct.wl12xx_cmd_role_stop* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %47 = load i32, i32* @CMD_ROLE_STOP, align 4
  %48 = load %struct.wl12xx_cmd_role_stop*, %struct.wl12xx_cmd_role_stop** %6, align 8
  %49 = call i32 @wl1271_cmd_send(%struct.wl1271* %46, i32 %47, %struct.wl12xx_cmd_role_stop* %48, i32 12, i32 0)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %28
  %53 = call i32 @wl1271_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %61

54:                                               ; preds = %28
  %55 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %56 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %57 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %58 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @wl12xx_free_link(%struct.wl1271* %55, %struct.wl12xx_vif* %56, i64* %59)
  br label %61

61:                                               ; preds = %54, %52
  %62 = load %struct.wl12xx_cmd_role_stop*, %struct.wl12xx_cmd_role_stop** %6, align 8
  %63 = call i32 @kfree(%struct.wl12xx_cmd_role_stop* %62)
  br label %64

64:                                               ; preds = %61, %25
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %17
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.wl12xx_cmd_role_stop* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

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
