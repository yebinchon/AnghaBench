; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_acx.c_wl18xx_acx_ap_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_acx.c_wl18xx_acx_ap_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.wl18xx_priv* }
%struct.wl18xx_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.conf_ap_sleep_settings }
%struct.conf_ap_sleep_settings = type { i32, i32, i32, i32 }
%struct.acx_ap_sleep_cfg = type { i32, i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"acx config ap sleep\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ACX_AP_SLEEP_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"acx config ap-sleep failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl18xx_acx_ap_sleep(%struct.wl1271* %0) #0 {
  %2 = alloca %struct.wl1271*, align 8
  %3 = alloca %struct.wl18xx_priv*, align 8
  %4 = alloca %struct.acx_ap_sleep_cfg*, align 8
  %5 = alloca %struct.conf_ap_sleep_settings*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %2, align 8
  %7 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %8 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %7, i32 0, i32 0
  %9 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %8, align 8
  store %struct.wl18xx_priv* %9, %struct.wl18xx_priv** %3, align 8
  %10 = load %struct.wl18xx_priv*, %struct.wl18xx_priv** %3, align 8
  %11 = getelementptr inbounds %struct.wl18xx_priv, %struct.wl18xx_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.conf_ap_sleep_settings* %12, %struct.conf_ap_sleep_settings** %5, align 8
  %13 = load i32, i32* @DEBUG_ACX, align 4
  %14 = call i32 @wl1271_debug(i32 %13, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.acx_ap_sleep_cfg* @kzalloc(i32 16, i32 %15)
  store %struct.acx_ap_sleep_cfg* %16, %struct.acx_ap_sleep_cfg** %4, align 8
  %17 = load %struct.acx_ap_sleep_cfg*, %struct.acx_ap_sleep_cfg** %4, align 8
  %18 = icmp ne %struct.acx_ap_sleep_cfg* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %53

22:                                               ; preds = %1
  %23 = load %struct.conf_ap_sleep_settings*, %struct.conf_ap_sleep_settings** %5, align 8
  %24 = getelementptr inbounds %struct.conf_ap_sleep_settings, %struct.conf_ap_sleep_settings* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.acx_ap_sleep_cfg*, %struct.acx_ap_sleep_cfg** %4, align 8
  %27 = getelementptr inbounds %struct.acx_ap_sleep_cfg, %struct.acx_ap_sleep_cfg* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.conf_ap_sleep_settings*, %struct.conf_ap_sleep_settings** %5, align 8
  %29 = getelementptr inbounds %struct.conf_ap_sleep_settings, %struct.conf_ap_sleep_settings* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.acx_ap_sleep_cfg*, %struct.acx_ap_sleep_cfg** %4, align 8
  %32 = getelementptr inbounds %struct.acx_ap_sleep_cfg, %struct.acx_ap_sleep_cfg* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.conf_ap_sleep_settings*, %struct.conf_ap_sleep_settings** %5, align 8
  %34 = getelementptr inbounds %struct.conf_ap_sleep_settings, %struct.conf_ap_sleep_settings* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.acx_ap_sleep_cfg*, %struct.acx_ap_sleep_cfg** %4, align 8
  %37 = getelementptr inbounds %struct.acx_ap_sleep_cfg, %struct.acx_ap_sleep_cfg* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.conf_ap_sleep_settings*, %struct.conf_ap_sleep_settings** %5, align 8
  %39 = getelementptr inbounds %struct.conf_ap_sleep_settings, %struct.conf_ap_sleep_settings* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.acx_ap_sleep_cfg*, %struct.acx_ap_sleep_cfg** %4, align 8
  %42 = getelementptr inbounds %struct.acx_ap_sleep_cfg, %struct.acx_ap_sleep_cfg* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.wl1271*, %struct.wl1271** %2, align 8
  %44 = load i32, i32* @ACX_AP_SLEEP_CFG, align 4
  %45 = load %struct.acx_ap_sleep_cfg*, %struct.acx_ap_sleep_cfg** %4, align 8
  %46 = call i32 @wl1271_cmd_configure(%struct.wl1271* %43, i32 %44, %struct.acx_ap_sleep_cfg* %45, i32 16)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %22
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @wl1271_warning(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %53

52:                                               ; preds = %22
  br label %53

53:                                               ; preds = %52, %49, %19
  %54 = load %struct.acx_ap_sleep_cfg*, %struct.acx_ap_sleep_cfg** %4, align 8
  %55 = call i32 @kfree(%struct.acx_ap_sleep_cfg* %54)
  %56 = load i32, i32* %6, align 4
  ret i32 %56
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.acx_ap_sleep_cfg* @kzalloc(i32, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_ap_sleep_cfg*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_ap_sleep_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
