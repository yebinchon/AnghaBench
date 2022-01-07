; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_init.c_mt7601u_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_init.c_mt7601u_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32*, i32, i32, i32, i32, %struct.TYPE_2__*, %struct.ieee80211_hw* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_hw = type { i32, i32, i32, i32, i32, i32, %struct.wiphy* }
%struct.wiphy = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@PS_NULLFUNC_STACK = common dso_local global i32 0, align 4
@SUPPORTS_HT_CCK_RATES = common dso_local global i32 0, align 4
@AMPDU_AGGREGATION = common dso_local global i32 0, align 4
@SUPPORTS_RC_TABLE = common dso_local global i32 0, align 4
@MFP_CAPABLE = common dso_local global i32 0, align 4
@NL80211_FEATURE_ACTIVE_MONITOR = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_CQM_RSSI_LIST = common dso_local global i32 0, align 4
@mt7601u_mac_work = common dso_local global i32 0, align 4
@mt7601u_tx_stat = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7601u_register_device(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.wiphy*, align 8
  %6 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  %7 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %7, i32 0, i32 6
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  store %struct.ieee80211_hw* %9, %struct.ieee80211_hw** %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 6
  %12 = load %struct.wiphy*, %struct.wiphy** %11, align 8
  store %struct.wiphy* %12, %struct.wiphy** %5, align 8
  %13 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, 1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %20 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.TYPE_2__* @devm_kmalloc(i32 %21, i32 8, i32 %22)
  %24 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %25 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %24, i32 0, i32 5
  store %struct.TYPE_2__* %23, %struct.TYPE_2__** %25, align 8
  %26 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %27 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %26, i32 0, i32 5
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = icmp ne %struct.TYPE_2__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %118

33:                                               ; preds = %1
  %34 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %35 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %34, i32 0, i32 5
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 255, i32* %37, align 4
  %38 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %39 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %38, i32 0, i32 5
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 -1, i32* %41, align 4
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %43 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %44 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw* %42, i32 %45)
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %48 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %47, i32 0, i32 0
  store i32 4, i32* %48, align 8
  %49 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %50 = load i32, i32* @SIGNAL_DBM, align 4
  %51 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %49, i32 %50)
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %53 = load i32, i32* @PS_NULLFUNC_STACK, align 4
  %54 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %52, i32 %53)
  %55 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %56 = load i32, i32* @SUPPORTS_HT_CCK_RATES, align 4
  %57 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %55, i32 %56)
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %59 = load i32, i32* @AMPDU_AGGREGATION, align 4
  %60 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %58, i32 %59)
  %61 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %62 = load i32, i32* @SUPPORTS_RC_TABLE, align 4
  %63 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %61, i32 %62)
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %65 = load i32, i32* @MFP_CAPABLE, align 4
  %66 = call i32 @ieee80211_hw_set(%struct.ieee80211_hw* %64, i32 %65)
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %68 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %70 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %69, i32 0, i32 2
  store i32 7, i32* %70, align 8
  %71 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %71, i32 0, i32 3
  store i32 1, i32* %72, align 4
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %74 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %73, i32 0, i32 4
  store i32 4, i32* %74, align 8
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %75, i32 0, i32 5
  store i32 4, i32* %76, align 4
  %77 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %78 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %79 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw* %77, i32 %80)
  %82 = load i32, i32* @NL80211_FEATURE_ACTIVE_MONITOR, align 4
  %83 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %84 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %88 = call i32 @BIT(i32 %87)
  %89 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %90 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %89, i32 0, i32 0
  store i32 %88, i32* %90, align 4
  %91 = load %struct.wiphy*, %struct.wiphy** %5, align 8
  %92 = load i32, i32* @NL80211_EXT_FEATURE_CQM_RSSI_LIST, align 4
  %93 = call i32 @wiphy_ext_feature_set(%struct.wiphy* %91, i32 %92)
  %94 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %95 = call i32 @mt76_init_sband_2g(%struct.mt7601u_dev* %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %33
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %2, align 4
  br label %118

100:                                              ; preds = %33
  %101 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %102 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %101, i32 0, i32 2
  %103 = load i32, i32* @mt7601u_mac_work, align 4
  %104 = call i32 @INIT_DELAYED_WORK(i32* %102, i32 %103)
  %105 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %106 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %105, i32 0, i32 1
  %107 = load i32, i32* @mt7601u_tx_stat, align 4
  %108 = call i32 @INIT_DELAYED_WORK(i32* %106, i32 %107)
  %109 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %110 = call i32 @ieee80211_register_hw(%struct.ieee80211_hw* %109)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %100
  %114 = load i32, i32* %6, align 4
  store i32 %114, i32* %2, align 4
  br label %118

115:                                              ; preds = %100
  %116 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %117 = call i32 @mt7601u_init_debugfs(%struct.mt7601u_dev* %116)
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %115, %113, %98, %30
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.TYPE_2__* @devm_kmalloc(i32, i32, i32) #1

declare dso_local i32 @SET_IEEE80211_DEV(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @ieee80211_hw_set(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wiphy_ext_feature_set(%struct.wiphy*, i32) #1

declare dso_local i32 @mt76_init_sband_2g(%struct.mt7601u_dev*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @ieee80211_register_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @mt7601u_init_debugfs(%struct.mt7601u_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
