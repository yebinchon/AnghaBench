; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_eeprom.c_mt76x0_read_rx_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_eeprom.c_mt76x0_read_rx_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { %struct.mt76x02_rx_freq_cal }
%struct.mt76x02_rx_freq_cal = type { i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x0_read_rx_gain(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca %struct.ieee80211_channel*, align 8
  %4 = alloca %struct.mt76x02_rx_freq_cal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %10 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %11 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  store %struct.ieee80211_channel* %14, %struct.ieee80211_channel** %3, align 8
  %15 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %16 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.mt76x02_rx_freq_cal* %17, %struct.mt76x02_rx_freq_cal** %4, align 8
  %18 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %19 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %23 = call i32 @mt76x02_get_rx_gain(%struct.mt76x02_dev* %18, i32 %21, i32* %8, i32* %7, i32* %22)
  %24 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %26 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %27 = call i32 @mt76x02_get_lna_gain(%struct.mt76x02_dev* %24, i32* %7, i32* %25, %struct.ieee80211_channel* %26)
  %28 = load %struct.mt76x02_rx_freq_cal*, %struct.mt76x02_rx_freq_cal** %4, align 8
  %29 = getelementptr inbounds %struct.mt76x02_rx_freq_cal, %struct.mt76x02_rx_freq_cal* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %56, %1
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.mt76x02_rx_freq_cal*, %struct.mt76x02_rx_freq_cal** %4, align 8
  %33 = getelementptr inbounds %struct.mt76x02_rx_freq_cal, %struct.mt76x02_rx_freq_cal* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @ARRAY_SIZE(i32* %34)
  %36 = icmp slt i32 %31, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 8, %39
  %41 = ashr i32 %38, %40
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, -10
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = icmp sgt i32 %45, 10
  br i1 %46, label %47, label %48

47:                                               ; preds = %44, %37
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %5, align 4
  %50 = load %struct.mt76x02_rx_freq_cal*, %struct.mt76x02_rx_freq_cal** %4, align 8
  %51 = getelementptr inbounds %struct.mt76x02_rx_freq_cal, %struct.mt76x02_rx_freq_cal* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  store i32 %49, i32* %55, align 4
  br label %56

56:                                               ; preds = %48
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %30

59:                                               ; preds = %30
  ret void
}

declare dso_local i32 @mt76x02_get_rx_gain(%struct.mt76x02_dev*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @mt76x02_get_lna_gain(%struct.mt76x02_dev*, i32*, i32*, %struct.ieee80211_channel*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
