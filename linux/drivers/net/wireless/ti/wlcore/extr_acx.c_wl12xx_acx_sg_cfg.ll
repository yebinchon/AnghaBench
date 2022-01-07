; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl12xx_acx_sg_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl12xx_acx_sg_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.conf_sg_settings }
%struct.conf_sg_settings = type { i32* }
%struct.acx_bt_wlan_coex_param = type { i32, i32* }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"acx sg cfg\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@WLCORE_CONF_SG_PARAMS_MAX = common dso_local global i32 0, align 4
@WLCORE_CONF_SG_PARAMS_ALL = common dso_local global i32 0, align 4
@ACX_SG_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to set sg config: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl12xx_acx_sg_cfg(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca %struct.acx_bt_wlan_coex_param*, align 8
  %4 = alloca %struct.conf_sg_settings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %7 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %8 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.conf_sg_settings* %9, %struct.conf_sg_settings** %4, align 8
  %10 = load i32, i32* @DEBUG_ACX, align 4
  %11 = call i32 @wl1271_debug(i32 %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.acx_bt_wlan_coex_param* @kzalloc(i32 16, i32 %12)
  store %struct.acx_bt_wlan_coex_param* %13, %struct.acx_bt_wlan_coex_param** %3, align 8
  %14 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %15 = icmp ne %struct.acx_bt_wlan_coex_param* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %6, align 4
  br label %56

19:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %39, %19
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @WLCORE_CONF_SG_PARAMS_MAX, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load %struct.conf_sg_settings*, %struct.conf_sg_settings** %4, align 8
  %26 = getelementptr inbounds %struct.conf_sg_settings, %struct.conf_sg_settings* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @cpu_to_le32(i32 %31)
  %33 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %34 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %32, i32* %38, align 4
  br label %39

39:                                               ; preds = %24
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %20

42:                                               ; preds = %20
  %43 = load i32, i32* @WLCORE_CONF_SG_PARAMS_ALL, align 4
  %44 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %45 = getelementptr inbounds %struct.acx_bt_wlan_coex_param, %struct.acx_bt_wlan_coex_param* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %47 = load i32, i32* @ACX_SG_CFG, align 4
  %48 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %49 = call i32 @wl1271_cmd_configure(%struct.wl1271* %46, i32 %47, %struct.acx_bt_wlan_coex_param* %48, i32 16)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @wl1271_warning(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  br label %56

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %52, %16
  %57 = load %struct.acx_bt_wlan_coex_param*, %struct.acx_bt_wlan_coex_param** %3, align 8
  %58 = call i32 @kfree(%struct.acx_bt_wlan_coex_param* %57)
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.acx_bt_wlan_coex_param* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_bt_wlan_coex_param*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_bt_wlan_coex_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
