; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt76_mac_tx_rate_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt76_mac_tx_rate_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { %struct.ieee80211_rate* }
%struct.ieee80211_rate = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_tx_rate = type { i32, i32 }

@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@MT_PHY_TYPE_HT = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_GREEN_FIELD = common dso_local global i32 0, align 4
@MT_PHY_TYPE_HT_GF = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@MT_RXWI_RATE_MCS = common dso_local global i32 0, align 4
@MT_RXWI_RATE_PHY = common dso_local global i32 0, align 4
@MT_RXWI_RATE_BW = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@MT_RXWI_RATE_SGI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76_mac_tx_rate_val(%struct.mt7601u_dev* %0, %struct.ieee80211_tx_rate* %1, i32* %2) #0 {
  %4 = alloca %struct.mt7601u_dev*, align 8
  %5 = alloca %struct.ieee80211_tx_rate*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ieee80211_rate*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %4, align 8
  store %struct.ieee80211_tx_rate* %1, %struct.ieee80211_tx_rate** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %48

21:                                               ; preds = %3
  %22 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %23 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  %25 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 3
  %29 = add nsw i32 1, %28
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @MT_PHY_TYPE_HT, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IEEE80211_TX_RC_GREEN_FIELD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %21
  %38 = load i32, i32* @MT_PHY_TYPE_HT_GF, align 4
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %37, %21
  %40 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %41 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  store i32 1, i32* %11, align 4
  br label %47

47:                                               ; preds = %46, %39
  br label %92

48:                                               ; preds = %3
  %49 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %50 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  %55 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %56 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %60, align 8
  %62 = load i32, i32* %13, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %61, i64 %63
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %66, align 8
  %68 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %69 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %67, i64 %71
  store %struct.ieee80211_rate* %72, %struct.ieee80211_rate** %12, align 8
  %73 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %74 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @IEEE80211_TX_RC_USE_SHORT_PREAMBLE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %48
  %80 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %12, align 8
  %81 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %14, align 4
  br label %87

83:                                               ; preds = %48
  %84 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %12, align 8
  %85 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %14, align 4
  br label %87

87:                                               ; preds = %83, %79
  %88 = load i32, i32* %14, align 4
  %89 = ashr i32 %88, 8
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %14, align 4
  %91 = and i32 %90, 255
  store i32 %91, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %87, %47
  %93 = load i32, i32* @MT_RXWI_RATE_MCS, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @FIELD_PREP(i32 %93, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* @MT_RXWI_RATE_PHY, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @FIELD_PREP(i32 %96, i32 %97)
  %99 = load i32, i32* %7, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %7, align 4
  %101 = load i32, i32* @MT_RXWI_RATE_BW, align 4
  %102 = load i32, i32* %11, align 4
  %103 = call i32 @FIELD_PREP(i32 %101, i32 %102)
  %104 = load i32, i32* %7, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %7, align 4
  %106 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %5, align 8
  %107 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %92
  %113 = load i32, i32* @MT_RXWI_RATE_SGI, align 4
  %114 = load i32, i32* %7, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %112, %92
  %117 = load i32, i32* %10, align 4
  %118 = load i32*, i32** %6, align 8
  store i32 %117, i32* %118, align 4
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
