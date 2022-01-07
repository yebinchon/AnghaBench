; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_set_pmksa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_set_pmksa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_pmksa = type { i32, i32 }
%struct.wilc_vif = type { %struct.wilc_priv }
%struct.wilc_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@PMKID_FOUND = common dso_local global i64 0, align 8
@WILC_MAX_NUM_PMKIDS = common dso_local global i64 0, align 8
@WLAN_PMKID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid PMKID index\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_pmksa*)* @set_pmksa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pmksa(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_pmksa* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cfg80211_pmksa*, align 8
  %7 = alloca %struct.wilc_vif*, align 8
  %8 = alloca %struct.wilc_priv*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.cfg80211_pmksa* %2, %struct.cfg80211_pmksa** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.wilc_vif* @netdev_priv(%struct.net_device* %12)
  store %struct.wilc_vif* %13, %struct.wilc_vif** %7, align 8
  %14 = load %struct.wilc_vif*, %struct.wilc_vif** %7, align 8
  %15 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %14, i32 0, i32 0
  store %struct.wilc_priv* %15, %struct.wilc_priv** %8, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %16

16:                                               ; preds = %41, %3
  %17 = load i64, i64* %9, align 8
  %18 = load %struct.wilc_priv*, %struct.wilc_priv** %8, align 8
  %19 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ult i64 %17, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %16
  %24 = load %struct.cfg80211_pmksa*, %struct.cfg80211_pmksa** %6, align 8
  %25 = getelementptr inbounds %struct.cfg80211_pmksa, %struct.cfg80211_pmksa* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wilc_priv*, %struct.wilc_priv** %8, align 8
  %28 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = call i32 @memcmp(i32 %26, i32 %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %23
  %39 = load i64, i64* @PMKID_FOUND, align 8
  store i64 %39, i64* %11, align 8
  br label %44

40:                                               ; preds = %23
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %9, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %9, align 8
  br label %16

44:                                               ; preds = %38, %16
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* @WILC_MAX_NUM_PMKIDS, align 8
  %47 = icmp ult i64 %45, %46
  br i1 %47, label %48, label %85

48:                                               ; preds = %44
  %49 = load %struct.wilc_priv*, %struct.wilc_priv** %8, align 8
  %50 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.cfg80211_pmksa*, %struct.cfg80211_pmksa** %6, align 8
  %58 = getelementptr inbounds %struct.cfg80211_pmksa, %struct.cfg80211_pmksa* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ETH_ALEN, align 4
  %61 = call i32 @memcpy(i32 %56, i32 %59, i32 %60)
  %62 = load %struct.wilc_priv*, %struct.wilc_priv** %8, align 8
  %63 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i64, i64* %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.cfg80211_pmksa*, %struct.cfg80211_pmksa** %6, align 8
  %71 = getelementptr inbounds %struct.cfg80211_pmksa, %struct.cfg80211_pmksa* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @WLAN_PMKID_LEN, align 4
  %74 = call i32 @memcpy(i32 %69, i32 %72, i32 %73)
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @PMKID_FOUND, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %48
  %79 = load %struct.wilc_priv*, %struct.wilc_priv** %8, align 8
  %80 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %81, align 8
  br label %84

84:                                               ; preds = %78, %48
  br label %90

85:                                               ; preds = %44
  %86 = load %struct.net_device*, %struct.net_device** %5, align 8
  %87 = call i32 @netdev_err(%struct.net_device* %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %88 = load i32, i32* @EINVAL, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %85, %84
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %90
  %94 = load %struct.wilc_vif*, %struct.wilc_vif** %7, align 8
  %95 = load %struct.wilc_priv*, %struct.wilc_priv** %8, align 8
  %96 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %95, i32 0, i32 0
  %97 = call i32 @wilc_set_pmkid_info(%struct.wilc_vif* %94, %struct.TYPE_4__* %96)
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %93, %90
  %99 = load i32, i32* %10, align 4
  ret i32 %99
}

declare dso_local %struct.wilc_vif* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @wilc_set_pmkid_info(%struct.wilc_vif*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
