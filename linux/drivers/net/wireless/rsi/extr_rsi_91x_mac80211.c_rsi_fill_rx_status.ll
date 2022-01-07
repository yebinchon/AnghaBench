; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_fill_rx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_fill_rx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i64 }
%struct.rsi_common = type { i32, %struct.rsi_hw* }
%struct.rsi_hw = type { %struct.ieee80211_vif** }
%struct.ieee80211_vif = type { i64, %struct.ieee80211_bss_conf }
%struct.ieee80211_bss_conf = type { i32, i64 }
%struct.ieee80211_rx_status = type { i8, i32, i64, i32 }
%struct.ieee80211_tx_info = type { i64 }
%struct.skb_info = type { i8, i32 }
%struct.ieee80211_hdr = type { i32, i32 }

@RX_FLAG_MMIC_STRIPPED = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@RX_FLAG_IV_STRIPPED = common dso_local global i32 0, align 4
@RSI_MAX_VIFS = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*, %struct.rsi_common*, %struct.ieee80211_rx_status*)* @rsi_fill_rx_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rsi_fill_rx_status(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, %struct.rsi_common* %2, %struct.ieee80211_rx_status* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rsi_common*, align 8
  %8 = alloca %struct.ieee80211_rx_status*, align 8
  %9 = alloca %struct.rsi_hw*, align 8
  %10 = alloca %struct.ieee80211_vif*, align 8
  %11 = alloca %struct.ieee80211_bss_conf*, align 8
  %12 = alloca %struct.ieee80211_tx_info*, align 8
  %13 = alloca %struct.skb_info*, align 8
  %14 = alloca %struct.ieee80211_hdr*, align 8
  %15 = alloca i8, align 1
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.rsi_common* %2, %struct.rsi_common** %7, align 8
  store %struct.ieee80211_rx_status* %3, %struct.ieee80211_rx_status** %8, align 8
  %20 = load %struct.rsi_common*, %struct.rsi_common** %7, align 8
  %21 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %20, i32 0, i32 1
  %22 = load %struct.rsi_hw*, %struct.rsi_hw** %21, align 8
  store %struct.rsi_hw* %22, %struct.rsi_hw** %9, align 8
  store %struct.ieee80211_bss_conf* null, %struct.ieee80211_bss_conf** %11, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %23)
  store %struct.ieee80211_tx_info* %24, %struct.ieee80211_tx_info** %12, align 8
  %25 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.skb_info*
  store %struct.skb_info* %28, %struct.skb_info** %13, align 8
  %29 = load %struct.skb_info*, %struct.skb_info** %13, align 8
  %30 = getelementptr inbounds %struct.skb_info, %struct.skb_info* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 4
  store i8 %31, i8* %15, align 1
  store i32 0, i32* %16, align 4
  %32 = load %struct.skb_info*, %struct.skb_info** %13, align 8
  %33 = getelementptr inbounds %struct.skb_info, %struct.skb_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %17, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %38, %struct.ieee80211_hdr** %14, align 8
  %39 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %40 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @ieee80211_hdrlen(i32 %41)
  store i32 %42, i32* %16, align 4
  %43 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %12, align 8
  %44 = call i32 @memset(%struct.ieee80211_tx_info* %43, i32 0, i32 8)
  %45 = load i8, i8* %15, align 1
  %46 = sext i8 %45 to i32
  %47 = sub nsw i32 0, %46
  %48 = trunc i32 %47 to i8
  %49 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %50 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %49, i32 0, i32 0
  store i8 %48, i8* %50, align 8
  %51 = load %struct.rsi_common*, %struct.rsi_common** %7, align 8
  %52 = getelementptr inbounds %struct.rsi_common, %struct.rsi_common* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %55 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* %17, align 4
  %57 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %58 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @ieee80211_channel_to_frequency(i32 %56, i32 %59)
  store i64 %60, i64* %18, align 8
  %61 = load i64, i64* %18, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %4
  %64 = load i64, i64* %18, align 8
  %65 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %66 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %65, i32 0, i32 2
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %63, %4
  %68 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %69 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @ieee80211_has_protected(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %117

73:                                               ; preds = %67
  %74 = load %struct.rsi_common*, %struct.rsi_common** %7, align 8
  %75 = call i64 @rsi_is_cipher_wep(%struct.rsi_common* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %73
  %78 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %79 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, 4
  %82 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %16, align 4
  %86 = call i32 @memmove(i64 %81, i64 %84, i32 %85)
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = call i32 @skb_pull(%struct.sk_buff* %87, i32 4)
  br label %106

89:                                               ; preds = %73
  %90 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* %16, align 4
  %98 = call i32 @memmove(i64 %93, i64 %96, i32 %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = call i32 @skb_pull(%struct.sk_buff* %99, i32 8)
  %101 = load i32, i32* @RX_FLAG_MMIC_STRIPPED, align 4
  %102 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %103 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %89, %77
  %107 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %108 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %109 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  %112 = load i32, i32* @RX_FLAG_IV_STRIPPED, align 4
  %113 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %114 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %106, %67
  store i32 0, i32* %19, align 4
  br label %118

118:                                              ; preds = %143, %117
  %119 = load i32, i32* %19, align 4
  %120 = load i32, i32* @RSI_MAX_VIFS, align 4
  %121 = icmp slt i32 %119, %120
  br i1 %121, label %122, label %146

122:                                              ; preds = %118
  %123 = load %struct.rsi_hw*, %struct.rsi_hw** %9, align 8
  %124 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %123, i32 0, i32 0
  %125 = load %struct.ieee80211_vif**, %struct.ieee80211_vif*** %124, align 8
  %126 = load i32, i32* %19, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.ieee80211_vif*, %struct.ieee80211_vif** %125, i64 %127
  %129 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %128, align 8
  store %struct.ieee80211_vif* %129, %struct.ieee80211_vif** %10, align 8
  %130 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %131 = icmp ne %struct.ieee80211_vif* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %122
  br label %143

133:                                              ; preds = %122
  %134 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %135 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %133
  %140 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %141 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %140, i32 0, i32 1
  store %struct.ieee80211_bss_conf* %141, %struct.ieee80211_bss_conf** %11, align 8
  br label %146

142:                                              ; preds = %133
  br label %143

143:                                              ; preds = %142, %132
  %144 = load i32, i32* %19, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %19, align 4
  br label %118

146:                                              ; preds = %139, %118
  %147 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %11, align 8
  %148 = icmp ne %struct.ieee80211_bss_conf* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %146
  br label %183

150:                                              ; preds = %146
  %151 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %11, align 8
  %152 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %182

155:                                              ; preds = %150
  %156 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %11, align 8
  %157 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %160 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @ETH_ALEN, align 4
  %163 = call i32 @memcmp(i32 %158, i32 %161, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %182, label %165

165:                                              ; preds = %155
  %166 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %167 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = call i64 @ieee80211_is_beacon(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %165
  %172 = load %struct.rsi_common*, %struct.rsi_common** %7, align 8
  %173 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %14, align 8
  %174 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %177 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %176, i32 0, i32 0
  %178 = load i8, i8* %177, align 8
  %179 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %180 = call i32 @rsi_perform_cqm(%struct.rsi_common* %172, i32 %175, i8 signext %178, %struct.ieee80211_vif* %179)
  br label %181

181:                                              ; preds = %171, %165
  br label %182

182:                                              ; preds = %181, %155, %150
  br label %183

183:                                              ; preds = %182, %149
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_hdrlen(i32) #1

declare dso_local i32 @memset(%struct.ieee80211_tx_info*, i32, i32) #1

declare dso_local i64 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local i64 @ieee80211_has_protected(i32) #1

declare dso_local i64 @rsi_is_cipher_wep(%struct.rsi_common*) #1

declare dso_local i32 @memmove(i64, i64, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @rsi_perform_cqm(%struct.rsi_common*, i32, i8 signext, %struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
