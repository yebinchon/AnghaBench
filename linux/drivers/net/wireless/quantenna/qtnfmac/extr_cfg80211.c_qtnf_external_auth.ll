; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_external_auth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_external_auth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_external_auth_params = type { i32 }
%struct.qtnf_vif = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"unexpected bssid: %pM\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"VIF%u.%u: failed to report external auth\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_external_auth_params*)* @qtnf_external_auth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_external_auth(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_external_auth_params* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cfg80211_external_auth_params*, align 8
  %8 = alloca %struct.qtnf_vif*, align 8
  %9 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.cfg80211_external_auth_params* %2, %struct.cfg80211_external_auth_params** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = call %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device* %10)
  store %struct.qtnf_vif* %11, %struct.qtnf_vif** %8, align 8
  %12 = load %struct.qtnf_vif*, %struct.qtnf_vif** %8, align 8
  %13 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %54

21:                                               ; preds = %3
  %22 = load %struct.qtnf_vif*, %struct.qtnf_vif** %8, align 8
  %23 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.cfg80211_external_auth_params*, %struct.cfg80211_external_auth_params** %7, align 8
  %26 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ether_addr_equal(i32 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %21
  %31 = load %struct.cfg80211_external_auth_params*, %struct.cfg80211_external_auth_params** %7, align 8
  %32 = getelementptr inbounds %struct.cfg80211_external_auth_params, %struct.cfg80211_external_auth_params* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @pr_warn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %30, %21
  %36 = load %struct.qtnf_vif*, %struct.qtnf_vif** %8, align 8
  %37 = load %struct.cfg80211_external_auth_params*, %struct.cfg80211_external_auth_params** %7, align 8
  %38 = call i32 @qtnf_cmd_send_external_auth(%struct.qtnf_vif* %36, %struct.cfg80211_external_auth_params* %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load %struct.qtnf_vif*, %struct.qtnf_vif** %8, align 8
  %43 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.qtnf_vif*, %struct.qtnf_vif** %8, align 8
  %48 = getelementptr inbounds %struct.qtnf_vif, %struct.qtnf_vif* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %49)
  br label %52

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51, %41
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %18
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local %struct.qtnf_vif* @qtnf_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @qtnf_cmd_send_external_auth(%struct.qtnf_vif*, %struct.cfg80211_external_auth_params*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
