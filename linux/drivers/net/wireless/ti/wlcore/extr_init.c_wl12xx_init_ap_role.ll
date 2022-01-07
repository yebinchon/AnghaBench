; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_init.c_wl12xx_init_ap_role.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_init.c_wl12xx_init_ap_role.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i64 }
%struct.wl12xx_vif = type { i32 }

@WLCORE_CFG_FEATURE_RADAR_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*)* @wl12xx_init_ap_role to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_init_ap_role(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.wl12xx_vif*, align 8
  %6 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %5, align 8
  %7 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %8 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %9 = call i32 @wl1271_acx_ap_max_tx_retry(%struct.wl1271* %7, %struct.wl12xx_vif* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %39

14:                                               ; preds = %2
  %15 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %16 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %17 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %18 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @wl1271_acx_tx_power(%struct.wl1271* %15, %struct.wl12xx_vif* %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %39

25:                                               ; preds = %14
  %26 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %27 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %32 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %5, align 8
  %33 = load i32, i32* @WLCORE_CFG_FEATURE_RADAR_DEBUG, align 4
  %34 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %35 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @wlcore_cmd_generic_cfg(%struct.wl1271* %31, %struct.wl12xx_vif* %32, i32 %33, i64 %36, i32 0)
  br label %38

38:                                               ; preds = %30, %25
  store i32 0, i32* %3, align 4
  br label %39

39:                                               ; preds = %38, %23, %12
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @wl1271_acx_ap_max_tx_retry(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @wl1271_acx_tx_power(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @wlcore_cmd_generic_cfg(%struct.wl1271*, %struct.wl12xx_vif*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
