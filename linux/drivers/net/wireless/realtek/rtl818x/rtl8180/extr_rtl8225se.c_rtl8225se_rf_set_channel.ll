; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_rtl8225se.c_rtl8225se_rf_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_rtl8225se.c_rtl8225se_rf_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_conf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@rtl8225se_chan = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8225se_rf_set_channel(%struct.ieee80211_hw* %0, %struct.ieee80211_conf* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_conf*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %4, align 8
  %6 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %4, align 8
  %7 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ieee80211_frequency_to_channel(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @rtl8225sez2_rf_set_tx_power(%struct.ieee80211_hw* %13, i32 %14)
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = load i32*, i32** @rtl8225se_chan, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sub nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %17, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %16, i32 7, i32 %22)
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %25 = call i32 @rtl8187se_rf_readreg(%struct.ieee80211_hw* %24, i32 7)
  %26 = and i32 %25, 3968
  %27 = load i32*, i32** @rtl8225se_chan, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %26, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %2
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %36 = load i32*, i32** @rtl8225se_chan, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %35, i32 7, i32 %41)
  br label %43

43:                                               ; preds = %34, %2
  %44 = call i32 @usleep_range(i32 10000, i32 20000)
  ret void
}

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @rtl8225sez2_rf_set_tx_power(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl8187se_rf_readreg(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
