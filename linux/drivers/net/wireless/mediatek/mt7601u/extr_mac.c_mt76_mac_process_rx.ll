; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt76_mac_process_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt76_mac_process_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_rx_status = type { i32*, i32, i32, i32, i32, i32 }
%struct.mt7601u_rxwi = type { i32, i32, i32 }

@MT_RXWI_CTL_MPDU_LEN = common dso_local global i32 0, align 4
@MT_RXINFO_DECRYPT = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@RX_FLAG_MMIC_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_MIC_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_ICV_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4
@MT_RXINFO_PN_LEN = common dso_local global i32 0, align 4
@MT_RXINFO_U2M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76_mac_process_rx(%struct.mt7601u_dev* %0, %struct.sk_buff* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt7601u_dev*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ieee80211_rx_status*, align 8
  %11 = alloca %struct.mt7601u_rxwi*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %16)
  store %struct.ieee80211_rx_status* %17, %struct.ieee80211_rx_status** %10, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = bitcast i8* %18 to %struct.mt7601u_rxwi*
  store %struct.mt7601u_rxwi* %19, %struct.mt7601u_rxwi** %11, align 8
  %20 = load %struct.mt7601u_rxwi*, %struct.mt7601u_rxwi** %11, align 8
  %21 = getelementptr inbounds %struct.mt7601u_rxwi, %struct.mt7601u_rxwi* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.mt7601u_rxwi*, %struct.mt7601u_rxwi** %11, align 8
  %25 = getelementptr inbounds %struct.mt7601u_rxwi, %struct.mt7601u_rxwi* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  store i32 %27, i32* %14, align 4
  %28 = load i32, i32* @MT_RXWI_CTL_MPDU_LEN, align 4
  %29 = load i32, i32* %13, align 4
  %30 = call i32 @FIELD_GET(i32 %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 10
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %150

34:                                               ; preds = %4
  %35 = load %struct.mt7601u_rxwi*, %struct.mt7601u_rxwi** %11, align 8
  %36 = getelementptr inbounds %struct.mt7601u_rxwi, %struct.mt7601u_rxwi* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @MT_RXINFO_DECRYPT, align 4
  %39 = call i32 @cpu_to_le32(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %34
  %43 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %44 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %45 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 8
  %48 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %49 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %50 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* @RX_FLAG_MIC_STRIPPED, align 4
  %54 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %55 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @RX_FLAG_ICV_STRIPPED, align 4
  %59 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %60 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %64 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %65 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  br label %68

68:                                               ; preds = %42, %34
  %69 = load %struct.mt7601u_rxwi*, %struct.mt7601u_rxwi** %11, align 8
  %70 = getelementptr inbounds %struct.mt7601u_rxwi, %struct.mt7601u_rxwi* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MT_RXINFO_PN_LEN, align 4
  %73 = call i32 @cpu_to_le32(i32 %72)
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %78 = xor i32 %77, -1
  %79 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %80 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %76, %68
  %84 = call i32 @BIT(i32 0)
  %85 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %86 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %88 = load %struct.mt7601u_rxwi*, %struct.mt7601u_rxwi** %11, align 8
  %89 = load i32, i32* %14, align 4
  %90 = call i32 @mt7601u_phy_get_rssi(%struct.mt7601u_dev* %87, %struct.mt7601u_rxwi* %88, i32 %89)
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %93 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %95 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  store i32 %91, i32* %97, align 4
  %98 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %99 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_3__*, %struct.TYPE_3__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %105 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %104, i32 0, i32 3
  store i32 %103, i32* %105, align 8
  %106 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %107 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %113 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %112, i32 0, i32 2
  store i32 %111, i32* %113, align 4
  %114 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @mt76_mac_process_rate(%struct.ieee80211_rx_status* %114, i32 %115)
  %117 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %118 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %117, i32 0, i32 0
  %119 = call i32 @spin_lock_bh(i32* %118)
  %120 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = call i64 @mt7601u_rx_is_our_beacon(%struct.mt7601u_dev* %120, i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %83
  %125 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %126 = load %struct.mt7601u_rxwi*, %struct.mt7601u_rxwi** %11, align 8
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %15, align 4
  %129 = call i32 @mt7601u_rx_monitor_beacon(%struct.mt7601u_dev* %125, %struct.mt7601u_rxwi* %126, i32 %127, i32 %128)
  br label %145

130:                                              ; preds = %83
  %131 = load %struct.mt7601u_rxwi*, %struct.mt7601u_rxwi** %11, align 8
  %132 = getelementptr inbounds %struct.mt7601u_rxwi, %struct.mt7601u_rxwi* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @MT_RXINFO_U2M, align 4
  %135 = call i32 @cpu_to_le32(i32 %134)
  %136 = and i32 %133, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %130
  %139 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %140 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %139, i32 0, i32 1
  %141 = load i32, i32* %15, align 4
  %142 = sub nsw i32 0, %141
  %143 = call i32 @ewma_rssi_add(i32* %140, i32 %142)
  br label %144

144:                                              ; preds = %138, %130
  br label %145

145:                                              ; preds = %144, %124
  %146 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %6, align 8
  %147 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %146, i32 0, i32 0
  %148 = call i32 @spin_unlock_bh(i32* %147)
  %149 = load i32, i32* %12, align 4
  store i32 %149, i32* %5, align 4
  br label %150

150:                                              ; preds = %145, %33
  %151 = load i32, i32* %5, align 4
  ret i32 %151
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mt7601u_phy_get_rssi(%struct.mt7601u_dev*, %struct.mt7601u_rxwi*, i32) #1

declare dso_local i32 @mt76_mac_process_rate(%struct.ieee80211_rx_status*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @mt7601u_rx_is_our_beacon(%struct.mt7601u_dev*, i32*) #1

declare dso_local i32 @mt7601u_rx_monitor_beacon(%struct.mt7601u_dev*, %struct.mt7601u_rxwi*, i32, i32) #1

declare dso_local i32 @ewma_rssi_add(i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
