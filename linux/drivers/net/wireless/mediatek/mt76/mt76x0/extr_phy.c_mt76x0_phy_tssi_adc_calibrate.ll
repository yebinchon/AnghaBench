; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_tssi_adc_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_tssi_adc_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@CORE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*, i32*, i32*)* @mt76x0_phy_tssi_adc_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x0_phy_tssi_adc_calibrate(%struct.mt76x02_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt76x02_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %11 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  store %struct.ieee80211_channel* %14, %struct.ieee80211_channel** %8, align 8
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %16 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 524373, i32 524368
  store i32 %21, i32* %9, align 4
  %22 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %23 = load i32, i32* @CORE, align 4
  %24 = call i32 @MT_BBP(i32 %23, i32 34)
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @mt76_wr(%struct.mt76x02_dev* %22, i32 %24, i32 %25)
  %27 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %28 = load i32, i32* @CORE, align 4
  %29 = call i32 @MT_BBP(i32 %28, i32 34)
  %30 = call i32 @BIT(i32 4)
  %31 = call i32 @mt76_poll_msec(%struct.mt76x02_dev* %27, i32 %29, i32 %30, i32 0, i32 200)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %3
  %34 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %35 = load i32, i32* @CORE, align 4
  %36 = call i32 @MT_BBP(i32 %35, i32 34)
  %37 = call i32 @BIT(i32 4)
  %38 = call i32 @mt76_clear(%struct.mt76x02_dev* %34, i32 %36, i32 %37)
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %91

41:                                               ; preds = %3
  %42 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %43 = load i32, i32* @CORE, align 4
  %44 = call i32 @MT_BBP(i32 %43, i32 35)
  %45 = call i32 @mt76_rr(%struct.mt76x02_dev* %42, i32 %44)
  %46 = and i32 %45, 255
  %47 = load i32*, i32** %6, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %49 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %41
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 128
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %53, %41
  %58 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %59 = load i32, i32* @CORE, align 4
  %60 = call i32 @MT_BBP(i32 %59, i32 34)
  %61 = call i32 @mt76_wr(%struct.mt76x02_dev* %58, i32 %60, i32 524353)
  %62 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %63 = load i32, i32* @CORE, align 4
  %64 = call i32 @MT_BBP(i32 %63, i32 35)
  %65 = call i32 @mt76_rr(%struct.mt76x02_dev* %62, i32 %64)
  %66 = and i32 %65, 255
  %67 = load i32*, i32** %7, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %70 = load i32, i32* @CORE, align 4
  %71 = call i32 @MT_BBP(i32 %70, i32 34)
  %72 = call i32 @mt76_wr(%struct.mt76x02_dev* %69, i32 %71, i32 524354)
  %73 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %74 = load i32, i32* @CORE, align 4
  %75 = call i32 @MT_BBP(i32 %74, i32 35)
  %76 = call i32 @mt76_rr(%struct.mt76x02_dev* %73, i32 %75)
  %77 = and i32 %76, 255
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %81 = load i32, i32* @CORE, align 4
  %82 = call i32 @MT_BBP(i32 %81, i32 34)
  %83 = call i32 @mt76_wr(%struct.mt76x02_dev* %80, i32 %82, i32 524355)
  %84 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %85 = load i32, i32* @CORE, align 4
  %86 = call i32 @MT_BBP(i32 %85, i32 35)
  %87 = call i32 @mt76_rr(%struct.mt76x02_dev* %84, i32 %86)
  %88 = and i32 %87, 255
  %89 = load i32*, i32** %7, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 2
  store i32 %88, i32* %90, align 4
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %57, %33
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_BBP(i32, i32) #1

declare dso_local i32 @mt76_poll_msec(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
