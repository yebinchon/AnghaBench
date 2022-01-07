; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_wfi_cfgoperations.c_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.cfg80211_chan_def = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wilc = type { i32, i32 }
%struct.wilc_vif = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Error in setting channel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.cfg80211_chan_def*)* @set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_channel(%struct.wiphy* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.cfg80211_chan_def*, align 8
  %6 = alloca %struct.wilc*, align 8
  %7 = alloca %struct.wilc_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %5, align 8
  %10 = load %struct.wiphy*, %struct.wiphy** %4, align 8
  %11 = call %struct.wilc* @wiphy_priv(%struct.wiphy* %10)
  store %struct.wilc* %11, %struct.wilc** %6, align 8
  %12 = load %struct.wilc*, %struct.wilc** %6, align 8
  %13 = getelementptr inbounds %struct.wilc, %struct.wilc* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.wilc*, %struct.wilc** %6, align 8
  %16 = call %struct.wilc_vif* @wilc_get_wl_to_vif(%struct.wilc* %15)
  store %struct.wilc_vif* %16, %struct.wilc_vif** %7, align 8
  %17 = load %struct.wilc_vif*, %struct.wilc_vif** %7, align 8
  %18 = call i64 @IS_ERR(%struct.wilc_vif* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.wilc*, %struct.wilc** %6, align 8
  %22 = getelementptr inbounds %struct.wilc, %struct.wilc* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load %struct.wilc_vif*, %struct.wilc_vif** %7, align 8
  %25 = call i32 @PTR_ERR(%struct.wilc_vif* %24)
  store i32 %25, i32* %3, align 4
  br label %51

26:                                               ; preds = %2
  %27 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %28 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ieee80211_frequency_to_channel(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load %struct.wilc*, %struct.wilc** %6, align 8
  %35 = getelementptr inbounds %struct.wilc, %struct.wilc* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.wilc_vif*, %struct.wilc_vif** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @wilc_set_mac_chnl_num(%struct.wilc_vif* %36, i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %26
  %42 = load %struct.wilc_vif*, %struct.wilc_vif** %7, align 8
  %43 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @netdev_err(i32 %44, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %26
  %47 = load %struct.wilc*, %struct.wilc** %6, align 8
  %48 = getelementptr inbounds %struct.wilc, %struct.wilc* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %46, %20
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.wilc* @wiphy_priv(%struct.wiphy*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.wilc_vif* @wilc_get_wl_to_vif(%struct.wilc*) #1

declare dso_local i64 @IS_ERR(%struct.wilc_vif*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @PTR_ERR(%struct.wilc_vif*) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @wilc_set_mac_chnl_num(%struct.wilc_vif*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
