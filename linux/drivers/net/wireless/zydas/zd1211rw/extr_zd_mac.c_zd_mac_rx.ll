; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_mac.c_zd_mac_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/zydas/zd1211rw/extr_zd_mac.c_zd_mac_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_hw = type { i32 }
%struct.zd_mac = type { i32, %struct.TYPE_5__, i32, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.ieee80211_rx_status = type { i32, i32, i32, i32, i32 }
%struct.rx_status = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@ZD_PLCP_HEADER_SIZE = common dso_local global i32 0, align 4
@FCS_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ZD_RX_ERROR = common dso_local global i32 0, align 4
@ZD_RX_CRC32_ERROR = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@zd_channels = common dso_local global %struct.TYPE_6__* null, align 8
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zd_mac_rx(%struct.ieee80211_hw* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.zd_mac*, align 8
  %9 = alloca %struct.ieee80211_rx_status, align 4
  %10 = alloca %struct.rx_status*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %18 = call %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw* %17)
  store %struct.zd_mac* %18, %struct.zd_mac** %8, align 8
  store i32 0, i32* %12, align 4
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = load i32, i32* @ZD_PLCP_HEADER_SIZE, align 4
  %22 = add nsw i32 %21, 10
  %23 = load i32, i32* @FCS_LEN, align 4
  %24 = add nsw i32 %22, %23
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, 8
  %27 = icmp ult i64 %20, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %3
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %178

31:                                               ; preds = %3
  %32 = call i32 @memset(%struct.ieee80211_rx_status* %9, i32 0, i32 20)
  %33 = load i64*, i64** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = sub i64 %35, 8
  %37 = getelementptr inbounds i64, i64* %33, i64 %36
  %38 = bitcast i64* %37 to %struct.rx_status*
  store %struct.rx_status* %38, %struct.rx_status** %10, align 8
  %39 = load %struct.rx_status*, %struct.rx_status** %10, align 8
  %40 = getelementptr inbounds %struct.rx_status, %struct.rx_status* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @ZD_RX_ERROR, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %31
  %46 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %47 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.rx_status*, %struct.rx_status** %10, align 8
  %52 = getelementptr inbounds %struct.rx_status, %struct.rx_status* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ZD_RX_CRC32_ERROR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %59 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  store i32 1, i32* %12, align 4
  br label %65

62:                                               ; preds = %50, %45
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %4, align 4
  br label %178

65:                                               ; preds = %57
  br label %66

66:                                               ; preds = %65, %31
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** @zd_channels, align 8
  %68 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %69 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %68, i32 0, i32 2
  %70 = call i32 @_zd_chip_get_channel(i32* %69)
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 3
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %78 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 2
  store i32 %77, i32* %78, align 4
  %79 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %80 = load %struct.rx_status*, %struct.rx_status** %10, align 8
  %81 = getelementptr inbounds %struct.rx_status, %struct.rx_status* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @zd_check_signal(%struct.ieee80211_hw* %79, i32 %82)
  %84 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  %85 = load i64*, i64** %6, align 8
  %86 = load %struct.rx_status*, %struct.rx_status** %10, align 8
  %87 = call i64 @zd_rx_rate(i64* %85, %struct.rx_status* %86)
  store i64 %87, i64* %16, align 8
  store i32 0, i32* %15, align 4
  br label %88

88:                                               ; preds = %111, %66
  %89 = load i32, i32* %15, align 4
  %90 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %91 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp slt i32 %89, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %88
  %96 = load i64, i64* %16, align 8
  %97 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %98 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = load i32, i32* %15, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %96, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %95
  %108 = load i32, i32* %15, align 4
  %109 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %9, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  br label %110

110:                                              ; preds = %107, %95
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %15, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %15, align 4
  br label %88

114:                                              ; preds = %88
  %115 = load i32, i32* @ZD_PLCP_HEADER_SIZE, align 4
  %116 = sext i32 %115 to i64
  %117 = add i64 %116, 8
  %118 = load i32, i32* %7, align 4
  %119 = zext i32 %118 to i64
  %120 = sub i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %7, align 4
  %122 = load i32, i32* @ZD_PLCP_HEADER_SIZE, align 4
  %123 = load i64*, i64** %6, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  store i64* %125, i64** %6, align 8
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %140, label %128

128:                                              ; preds = %114
  %129 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %130 = load i64*, i64** %6, align 8
  %131 = bitcast i64* %130 to %struct.ieee80211_hdr*
  %132 = call i64 @filter_ack(%struct.ieee80211_hw* %129, %struct.ieee80211_hdr* %131, %struct.ieee80211_rx_status* %9)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %128
  %135 = load %struct.zd_mac*, %struct.zd_mac** %8, align 8
  %136 = getelementptr inbounds %struct.zd_mac, %struct.zd_mac* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  store i32 0, i32* %4, align 4
  br label %178

140:                                              ; preds = %134, %128, %114
  %141 = load i64*, i64** %6, align 8
  %142 = bitcast i64* %141 to i32*
  %143 = call i32 @get_unaligned(i32* %142)
  store i32 %143, i32* %13, align 4
  %144 = load i32, i32* %13, align 4
  %145 = call i32 @ieee80211_is_data_qos(i32 %144)
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @ieee80211_has_a4(i32 %146)
  %148 = xor i32 %145, %147
  store i32 %148, i32* %14, align 4
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* %14, align 4
  %151 = icmp ne i32 %150, 0
  %152 = zext i1 %151 to i64
  %153 = select i1 %151, i32 2, i32 0
  %154 = add i32 %149, %153
  %155 = call %struct.sk_buff* @dev_alloc_skb(i32 %154)
  store %struct.sk_buff* %155, %struct.sk_buff** %11, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %157 = icmp eq %struct.sk_buff* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %140
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %4, align 4
  br label %178

161:                                              ; preds = %140
  %162 = load i32, i32* %14, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %166 = call i32 @skb_reserve(%struct.sk_buff* %165, i32 2)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %169 = load i64*, i64** %6, align 8
  %170 = load i32, i32* %7, align 4
  %171 = call i32 @skb_put_data(%struct.sk_buff* %168, i64* %169, i32 %170)
  %172 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %173 = call i32 @IEEE80211_SKB_RXCB(%struct.sk_buff* %172)
  %174 = call i32 @memcpy(i32 %173, %struct.ieee80211_rx_status* %9, i32 20)
  %175 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %177 = call i32 @ieee80211_rx_irqsafe(%struct.ieee80211_hw* %175, %struct.sk_buff* %176)
  store i32 0, i32* %4, align 4
  br label %178

178:                                              ; preds = %167, %158, %139, %62, %28
  %179 = load i32, i32* %4, align 4
  ret i32 %179
}

declare dso_local %struct.zd_mac* @zd_hw_mac(%struct.ieee80211_hw*) #1

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @_zd_chip_get_channel(i32*) #1

declare dso_local i32 @zd_check_signal(%struct.ieee80211_hw*, i32) #1

declare dso_local i64 @zd_rx_rate(i64*, %struct.rx_status*) #1

declare dso_local i64 @filter_ack(%struct.ieee80211_hw*, %struct.ieee80211_hdr*, %struct.ieee80211_rx_status*) #1

declare dso_local i32 @get_unaligned(i32*) #1

declare dso_local i32 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @ieee80211_has_a4(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i64*, i32) #1

declare dso_local i32 @memcpy(i32, %struct.ieee80211_rx_status*, i32) #1

declare dso_local i32 @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx_irqsafe(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
