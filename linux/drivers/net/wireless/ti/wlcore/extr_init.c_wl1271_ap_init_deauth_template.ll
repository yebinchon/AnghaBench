; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_init.c_wl1271_ap_init_deauth_template.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_init.c_wl1271_ap_init_deauth_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32, i32 }
%struct.wl12xx_disconn_template = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_DEAUTH = common dso_local global i32 0, align 4
@CMD_TEMPL_DEAUTH_AP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*)* @wl1271_ap_init_deauth_template to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_ap_init_deauth_template(%struct.wl1271* %0, %struct.wl12xx_vif* %1) #0 {
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_vif*, align 8
  %5 = alloca %struct.wl12xx_disconn_template*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %3, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %4, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.wl12xx_disconn_template* @kzalloc(i32 4, i32 %8)
  store %struct.wl12xx_disconn_template* %9, %struct.wl12xx_disconn_template** %5, align 8
  %10 = load %struct.wl12xx_disconn_template*, %struct.wl12xx_disconn_template** %5, align 8
  %11 = icmp ne %struct.wl12xx_disconn_template* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %6, align 4
  br label %36

15:                                               ; preds = %2
  %16 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %17 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @cpu_to_le16(i32 %18)
  %20 = load %struct.wl12xx_disconn_template*, %struct.wl12xx_disconn_template** %5, align 8
  %21 = getelementptr inbounds %struct.wl12xx_disconn_template, %struct.wl12xx_disconn_template* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 4
  %23 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %24 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %25 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @wl1271_tx_min_rate_get(%struct.wl1271* %23, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %29 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %4, align 8
  %30 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CMD_TEMPL_DEAUTH_AP, align 4
  %33 = load %struct.wl12xx_disconn_template*, %struct.wl12xx_disconn_template** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @wl1271_cmd_template_set(%struct.wl1271* %28, i32 %31, i32 %32, %struct.wl12xx_disconn_template* %33, i32 4, i32 0, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %15, %12
  %37 = load %struct.wl12xx_disconn_template*, %struct.wl12xx_disconn_template** %5, align 8
  %38 = call i32 @kfree(%struct.wl12xx_disconn_template* %37)
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.wl12xx_disconn_template* @kzalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wl1271_tx_min_rate_get(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_cmd_template_set(%struct.wl1271*, i32, i32, %struct.wl12xx_disconn_template*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.wl12xx_disconn_template*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
