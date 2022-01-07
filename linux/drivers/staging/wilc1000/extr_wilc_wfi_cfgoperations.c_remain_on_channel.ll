; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_remain_on_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_remain_on_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wireless_dev = type { i64, i32 }
%struct.ieee80211_channel = type { i32 }
%struct.wilc_vif = type { %struct.TYPE_6__*, %struct.TYPE_4__*, i32, %struct.wilc_priv }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wilc_priv = type { i64, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, %struct.ieee80211_channel* }

@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"Required while in AP mode\0A\00", align 1
@wilc_wfi_remain_on_channel_expired = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.wireless_dev*, %struct.ieee80211_channel*, i32, i64*)* @remain_on_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remain_on_channel(%struct.wiphy* %0, %struct.wireless_dev* %1, %struct.ieee80211_channel* %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wiphy*, align 8
  %8 = alloca %struct.wireless_dev*, align 8
  %9 = alloca %struct.ieee80211_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.wilc_vif*, align 8
  %14 = alloca %struct.wilc_priv*, align 8
  %15 = alloca i64, align 8
  store %struct.wiphy* %0, %struct.wiphy** %7, align 8
  store %struct.wireless_dev* %1, %struct.wireless_dev** %8, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %17 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.wilc_vif* @netdev_priv(i32 %18)
  store %struct.wilc_vif* %19, %struct.wilc_vif** %13, align 8
  %20 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %21 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %20, i32 0, i32 3
  store %struct.wilc_priv* %21, %struct.wilc_priv** %14, align 8
  %22 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %23 = getelementptr inbounds %struct.wireless_dev, %struct.wireless_dev* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %5
  %28 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %29 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @netdev_dbg(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %12, align 4
  store i32 %32, i32* %6, align 4
  br label %101

33:                                               ; preds = %5
  %34 = load %struct.wilc_priv*, %struct.wilc_priv** %14, align 8
  %35 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* %35, align 8
  store i64 %37, i64* %15, align 8
  %38 = load i64, i64* %15, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.wilc_priv*, %struct.wilc_priv** %14, align 8
  %42 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  store i64 %44, i64* %15, align 8
  br label %45

45:                                               ; preds = %40, %33
  %46 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %47 = load i64, i64* %15, align 8
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %50 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @wilc_wfi_remain_on_channel_expired, align 4
  %53 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %54 = bitcast %struct.wilc_vif* %53 to i8*
  %55 = call i32 @wilc_remain_on_channel(%struct.wilc_vif* %46, i64 %47, i32 %48, i32 %51, i32 %52, i8* %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %6, align 4
  br label %101

60:                                               ; preds = %45
  %61 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %62 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %65 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  %68 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %69 = load %struct.wilc_priv*, %struct.wilc_priv** %14, align 8
  %70 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 2
  store %struct.ieee80211_channel* %68, %struct.ieee80211_channel** %71, align 8
  %72 = load i64, i64* %15, align 8
  %73 = load %struct.wilc_priv*, %struct.wilc_priv** %14, align 8
  %74 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i64 %72, i64* %75, align 8
  %76 = load i64, i64* %15, align 8
  %77 = load i64*, i64** %11, align 8
  store i64 %76, i64* %77, align 8
  %78 = load %struct.wilc_priv*, %struct.wilc_priv** %14, align 8
  %79 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %78, i32 0, i32 1
  store i32 1, i32* %79, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.wilc_priv*, %struct.wilc_priv** %14, align 8
  %82 = getelementptr inbounds %struct.wilc_priv, %struct.wilc_priv* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 8
  %84 = load %struct.wireless_dev*, %struct.wireless_dev** %8, align 8
  %85 = load i64*, i64** %11, align 8
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call i32 @cfg80211_ready_on_channel(%struct.wireless_dev* %84, i64 %86, %struct.ieee80211_channel* %87, i32 %88, i32 %89)
  %91 = load %struct.wilc_vif*, %struct.wilc_vif** %13, align 8
  %92 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* @jiffies, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i64 @msecs_to_jiffies(i32 %96)
  %98 = add nsw i64 %95, %97
  %99 = call i32 @mod_timer(i32* %94, i64 %98)
  %100 = load i32, i32* %12, align 4
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %60, %58, %27
  %102 = load i32, i32* %6, align 4
  ret i32 %102
}

declare dso_local %struct.wilc_vif* @netdev_priv(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @wilc_remain_on_channel(%struct.wilc_vif*, i64, i32, i32, i32, i8*) #1

declare dso_local i32 @cfg80211_ready_on_channel(%struct.wireless_dev*, i64, %struct.ieee80211_channel*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
