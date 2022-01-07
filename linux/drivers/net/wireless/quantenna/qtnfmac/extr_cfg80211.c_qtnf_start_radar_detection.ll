; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_start_radar_detection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_start_radar_detection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_chan_def = type { i32 }
%struct.qtnf_vif = type { i32 }

@NL80211_EXT_FEATURE_DFS_OFFLOAD = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: failed to start CAC ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_chan_def*, i32)* @qtnf_start_radar_detection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_start_radar_detection(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_chan_def* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.cfg80211_chan_def*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.qtnf_vif*, align 8
  %11 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.net_device*, %struct.net_device** %7, align 8
  %13 = call %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device* %12)
  store %struct.qtnf_vif* %13, %struct.qtnf_vif** %10, align 8
  %14 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %15 = load i32, i32* @NL80211_EXT_FEATURE_DFS_OFFLOAD, align 4
  %16 = call i64 @wiphy_ext_feature_isset(%struct.wiphy* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %36

21:                                               ; preds = %4
  %22 = load %struct.qtnf_vif*, %struct.qtnf_vif** %10, align 8
  %23 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %8, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @qtnf_cmd_start_cac(%struct.qtnf_vif* %22, %struct.cfg80211_chan_def* %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.net_device*, %struct.net_device** %7, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %21
  %35 = load i32, i32* %11, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %34, %18
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device*) #1

declare dso_local i64 @wiphy_ext_feature_isset(%struct.wiphy*, i32) #1

declare dso_local i32 @qtnf_cmd_start_cac(%struct.qtnf_vif*, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
