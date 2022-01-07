; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_parse_rxdesc16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_parse_rxdesc16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { %struct.ieee80211_hw* }
%struct.ieee80211_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_rx_status = type { i32, i32, i64, i32, i32, i32, i32 }
%struct.rtl8xxxu_rxdesc16 = type { i32, i32, i32, i32, i64, i64, i64, i64, i32, i32, i64 }
%struct.rtl8723au_phy_stats = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@RX_FLAG_MACTIME_START = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@RATE_INFO_BW_40 = common dso_local global i32 0, align 4
@RX_ENC_HT = common dso_local global i32 0, align 4
@DESC_RATE_MCS0 = common dso_local global i64 0, align 8
@RX_TYPE_DATA_PKT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl8xxxu_parse_rxdesc16(%struct.rtl8xxxu_priv* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rtl8xxxu_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_rx_status*, align 8
  %7 = alloca %struct.rtl8xxxu_rxdesc16*, align 8
  %8 = alloca %struct.rtl8723au_phy_stats*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %19 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %20 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %19, i32 0, i32 0
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %20, align 8
  store %struct.ieee80211_hw* %21, %struct.ieee80211_hw** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %25

25:                                               ; preds = %234, %2
  %26 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.rtl8xxxu_rxdesc16*
  store %struct.rtl8xxxu_rxdesc16* %29, %struct.rtl8xxxu_rxdesc16** %7, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %10, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %11, align 8
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %53, %25
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ult i64 %40, 16
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load i32*, i32** %10, align 8
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = load i32*, i32** %11, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %14, align 4
  br label %38

56:                                               ; preds = %38
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load %struct.rtl8xxxu_rxdesc16*, %struct.rtl8xxxu_rxdesc16** %7, align 8
  %61 = getelementptr inbounds %struct.rtl8xxxu_rxdesc16, %struct.rtl8xxxu_rxdesc16* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %15, align 4
  br label %63

63:                                               ; preds = %59, %56
  %64 = load %struct.rtl8xxxu_rxdesc16*, %struct.rtl8xxxu_rxdesc16** %7, align 8
  %65 = getelementptr inbounds %struct.rtl8xxxu_rxdesc16, %struct.rtl8xxxu_rxdesc16* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %16, align 4
  %67 = load %struct.rtl8xxxu_rxdesc16*, %struct.rtl8xxxu_rxdesc16** %7, align 8
  %68 = getelementptr inbounds %struct.rtl8xxxu_rxdesc16, %struct.rtl8xxxu_rxdesc16* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %69, 8
  store i32 %70, i32* %12, align 4
  %71 = load %struct.rtl8xxxu_rxdesc16*, %struct.rtl8xxxu_rxdesc16** %7, align 8
  %72 = getelementptr inbounds %struct.rtl8xxxu_rxdesc16, %struct.rtl8xxxu_rxdesc16* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %16, align 4
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %74, %75
  %77 = load i32, i32* %13, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = add i64 %79, 64
  %81 = trunc i64 %80 to i32
  %82 = call i32 @roundup(i32 %81, i32 128)
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp sgt i32 %83, 1
  br i1 %84, label %85, label %96

85:                                               ; preds = %63
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = load i32, i32* %18, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %89, 64
  %91 = icmp ugt i64 %87, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = load i32, i32* @GFP_ATOMIC, align 4
  %95 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %93, i32 %94)
  store %struct.sk_buff* %95, %struct.sk_buff** %9, align 8
  br label %96

96:                                               ; preds = %92, %85, %63
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %97)
  store %struct.ieee80211_rx_status* %98, %struct.ieee80211_rx_status** %6, align 8
  %99 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %100 = call i32 @memset(%struct.ieee80211_rx_status* %99, i32 0, i32 32)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = call i32 @skb_pull(%struct.sk_buff* %101, i32 64)
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %104 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to %struct.rtl8723au_phy_stats*
  store %struct.rtl8723au_phy_stats* %106, %struct.rtl8723au_phy_stats** %8, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %108, %109
  %111 = call i32 @skb_pull(%struct.sk_buff* %107, i32 %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = load i32, i32* %16, align 4
  %114 = call i32 @skb_trim(%struct.sk_buff* %112, i32 %113)
  %115 = load %struct.rtl8xxxu_rxdesc16*, %struct.rtl8xxxu_rxdesc16** %7, align 8
  %116 = getelementptr inbounds %struct.rtl8xxxu_rxdesc16, %struct.rtl8xxxu_rxdesc16* %115, i32 0, i32 10
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %127

119:                                              ; preds = %96
  %120 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %3, align 8
  %121 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %122 = load %struct.rtl8723au_phy_stats*, %struct.rtl8723au_phy_stats** %8, align 8
  %123 = load %struct.rtl8xxxu_rxdesc16*, %struct.rtl8xxxu_rxdesc16** %7, align 8
  %124 = getelementptr inbounds %struct.rtl8xxxu_rxdesc16, %struct.rtl8xxxu_rxdesc16* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @rtl8xxxu_rx_parse_phystats(%struct.rtl8xxxu_priv* %120, %struct.ieee80211_rx_status* %121, %struct.rtl8723au_phy_stats* %122, i64 %125)
  br label %127

127:                                              ; preds = %119, %96
  %128 = load %struct.rtl8xxxu_rxdesc16*, %struct.rtl8xxxu_rxdesc16** %7, align 8
  %129 = getelementptr inbounds %struct.rtl8xxxu_rxdesc16, %struct.rtl8xxxu_rxdesc16* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %132 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 4
  %133 = load i32, i32* @RX_FLAG_MACTIME_START, align 4
  %134 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %135 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 8
  %138 = load %struct.rtl8xxxu_rxdesc16*, %struct.rtl8xxxu_rxdesc16** %7, align 8
  %139 = getelementptr inbounds %struct.rtl8xxxu_rxdesc16, %struct.rtl8xxxu_rxdesc16* %138, i32 0, i32 8
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %148, label %142

142:                                              ; preds = %127
  %143 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %144 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %145 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %142, %127
  %149 = load %struct.rtl8xxxu_rxdesc16*, %struct.rtl8xxxu_rxdesc16** %7, align 8
  %150 = getelementptr inbounds %struct.rtl8xxxu_rxdesc16, %struct.rtl8xxxu_rxdesc16* %149, i32 0, i32 7
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %148
  %154 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %155 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %156 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 8
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %153, %148
  %160 = load %struct.rtl8xxxu_rxdesc16*, %struct.rtl8xxxu_rxdesc16** %7, align 8
  %161 = getelementptr inbounds %struct.rtl8xxxu_rxdesc16, %struct.rtl8xxxu_rxdesc16* %160, i32 0, i32 6
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load i32, i32* @RATE_INFO_BW_40, align 4
  %166 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %167 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 4
  br label %168

168:                                              ; preds = %164, %159
  %169 = load %struct.rtl8xxxu_rxdesc16*, %struct.rtl8xxxu_rxdesc16** %7, align 8
  %170 = getelementptr inbounds %struct.rtl8xxxu_rxdesc16, %struct.rtl8xxxu_rxdesc16* %169, i32 0, i32 5
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %184

173:                                              ; preds = %168
  %174 = load i32, i32* @RX_ENC_HT, align 4
  %175 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %176 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 8
  %177 = load %struct.rtl8xxxu_rxdesc16*, %struct.rtl8xxxu_rxdesc16** %7, align 8
  %178 = getelementptr inbounds %struct.rtl8xxxu_rxdesc16, %struct.rtl8xxxu_rxdesc16* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @DESC_RATE_MCS0, align 8
  %181 = sub nsw i64 %179, %180
  %182 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %183 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %182, i32 0, i32 2
  store i64 %181, i64* %183, align 8
  br label %190

184:                                              ; preds = %168
  %185 = load %struct.rtl8xxxu_rxdesc16*, %struct.rtl8xxxu_rxdesc16** %7, align 8
  %186 = getelementptr inbounds %struct.rtl8xxxu_rxdesc16, %struct.rtl8xxxu_rxdesc16* %185, i32 0, i32 4
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %189 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %188, i32 0, i32 2
  store i64 %187, i64* %189, align 8
  br label %190

190:                                              ; preds = %184, %173
  %191 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %192 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %199 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %198, i32 0, i32 1
  store i32 %197, i32* %199, align 4
  %200 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %201 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load %struct.TYPE_4__*, %struct.TYPE_4__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %6, align 8
  %208 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 8
  %209 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %210 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %211 = call i32 @ieee80211_rx_irqsafe(%struct.ieee80211_hw* %209, %struct.sk_buff* %210)
  %212 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %212, %struct.sk_buff** %4, align 8
  %213 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %214 = icmp ne %struct.sk_buff* %213, null
  br i1 %214, label %215, label %219

215:                                              ; preds = %190
  %216 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %217 = load i32, i32* %18, align 4
  %218 = call i32 @skb_pull(%struct.sk_buff* %216, i32 %217)
  br label %219

219:                                              ; preds = %215, %190
  %220 = load i32, i32* %15, align 4
  %221 = add nsw i32 %220, -1
  store i32 %221, i32* %15, align 4
  %222 = load i32, i32* %18, align 4
  %223 = load i32, i32* %17, align 4
  %224 = sub nsw i32 %223, %222
  store i32 %224, i32* %17, align 4
  br label %225

225:                                              ; preds = %219
  %226 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %227 = icmp ne %struct.sk_buff* %226, null
  br i1 %227, label %228, label %234

228:                                              ; preds = %225
  %229 = load i32, i32* %17, align 4
  %230 = icmp sgt i32 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %228
  %232 = load i32, i32* %15, align 4
  %233 = icmp sgt i32 %232, 0
  br label %234

234:                                              ; preds = %231, %228, %225
  %235 = phi i1 [ false, %228 ], [ false, %225 ], [ %233, %231 ]
  br i1 %235, label %25, label %236

236:                                              ; preds = %234
  %237 = load i32, i32* @RX_TYPE_DATA_PKT, align 4
  ret i32 %237
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @rtl8xxxu_rx_parse_phystats(%struct.rtl8xxxu_priv*, %struct.ieee80211_rx_status*, %struct.rtl8723au_phy_stats*, i64) #1

declare dso_local i32 @ieee80211_rx_irqsafe(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
