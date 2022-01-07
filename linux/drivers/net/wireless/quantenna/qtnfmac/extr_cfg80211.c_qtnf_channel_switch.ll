; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_channel_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_csa_settings = type { %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qtnf_vif = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"%s: chan(%u) count(%u) radar(%u) block_tx(%u)\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"%s: invalid channel\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: failed to switch to channel (%u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_csa_settings*)* @qtnf_channel_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_channel_switch(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_csa_settings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cfg80211_csa_settings*, align 8
  %8 = alloca %struct.qtnf_vif*, align 8
  %9 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.cfg80211_csa_settings* %2, %struct.cfg80211_csa_settings** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = call %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device* %10)
  store %struct.qtnf_vif* %11, %struct.qtnf_vif** %8, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %7, align 8
  %16 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %7, align 8
  %22 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %7, align 8
  %25 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %7, align 8
  %28 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @pr_debug(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %20, i32 %23, i32 %26, i32 %29)
  %31 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %7, align 8
  %32 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %31, i32 0, i32 0
  %33 = call i32 @cfg80211_chandef_valid(%struct.TYPE_4__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %3
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %61

42:                                               ; preds = %3
  %43 = load %struct.qtnf_vif*, %struct.qtnf_vif** %8, align 8
  %44 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %7, align 8
  %45 = call i32 @qtnf_cmd_send_chan_switch(%struct.qtnf_vif* %43, %struct.cfg80211_csa_settings* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.cfg80211_csa_settings*, %struct.cfg80211_csa_settings** %7, align 8
  %53 = getelementptr inbounds %struct.cfg80211_csa_settings, %struct.cfg80211_csa_settings* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pr_warn(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %57)
  br label %59

59:                                               ; preds = %48, %42
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %35
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cfg80211_chandef_valid(%struct.TYPE_4__*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @qtnf_cmd_send_chan_switch(%struct.qtnf_vif*, %struct.cfg80211_csa_settings*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
