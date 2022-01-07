; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00queue.c_rt2x00queue_create_tx_descriptor_ht.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00queue.c_rt2x00queue_create_tx_descriptor_ht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.txentry_desc = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32, i32, i8*, i32, i32 }
%struct.ieee80211_sta = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rt2x00_rate = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i32, i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.rt2x00_sta = type { i32 }

@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@IEEE80211_SMPS_DYNAMIC = common dso_local global i64 0, align 8
@ENTRY_TXD_HT_MIMO_PS = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_USE_SHORT_PREAMBLE = common dso_local global i32 0, align 4
@CONFIG_HT_DISABLED = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_FIRST_FRAGMENT = common dso_local global i32 0, align 4
@TXOP_SIFS = common dso_local global i8* null, align 8
@TXOP_BACKOFF = common dso_local global i8* null, align 8
@IEEE80211_TX_CTL_STBC = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_RATE_CTRL_PROBE = common dso_local global i32 0, align 4
@ENTRY_TXD_HT_AMPDU = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_40_MHZ_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_DUP_DATA = common dso_local global i32 0, align 4
@ENTRY_TXD_HT_BW_40 = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_SHORT_GI = common dso_local global i32 0, align 4
@ENTRY_TXD_HT_SHORT_GI = common dso_local global i32 0, align 4
@TXOP_HTTXOP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.sk_buff*, %struct.txentry_desc*, %struct.ieee80211_sta*, %struct.rt2x00_rate*)* @rt2x00queue_create_tx_descriptor_ht to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00queue_create_tx_descriptor_ht(%struct.rt2x00_dev* %0, %struct.sk_buff* %1, %struct.txentry_desc* %2, %struct.ieee80211_sta* %3, %struct.rt2x00_rate* %4) #0 {
  %6 = alloca %struct.rt2x00_dev*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.txentry_desc*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.rt2x00_rate*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca %struct.ieee80211_tx_rate*, align 8
  %13 = alloca %struct.ieee80211_hdr*, align 8
  %14 = alloca %struct.rt2x00_sta*, align 8
  %15 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.txentry_desc* %2, %struct.txentry_desc** %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  store %struct.rt2x00_rate* %4, %struct.rt2x00_rate** %10, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %16)
  store %struct.ieee80211_tx_info* %17, %struct.ieee80211_tx_info** %11, align 8
  %18 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %19 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %20, align 8
  %22 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %21, i64 0
  store %struct.ieee80211_tx_rate* %22, %struct.ieee80211_tx_rate** %12, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %26, %struct.ieee80211_hdr** %13, align 8
  store %struct.rt2x00_sta* null, %struct.rt2x00_sta** %14, align 8
  store i32 0, i32* %15, align 4
  %27 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %28 = icmp ne %struct.ieee80211_sta* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %5
  %30 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %31 = call %struct.rt2x00_sta* @sta_to_rt2x00_sta(%struct.ieee80211_sta* %30)
  store %struct.rt2x00_sta* %31, %struct.rt2x00_sta** %14, align 8
  %32 = load %struct.rt2x00_sta*, %struct.rt2x00_sta** %14, align 8
  %33 = getelementptr inbounds %struct.rt2x00_sta, %struct.rt2x00_sta* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %36 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 5
  store i32 %34, i32* %38, align 4
  %39 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %40 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %15, align 4
  br label %43

43:                                               ; preds = %29, %5
  %44 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %45 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %79

50:                                               ; preds = %43
  %51 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %52 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %55 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  store i32 %53, i32* %57, align 8
  %58 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %59 = icmp ne %struct.ieee80211_sta* %58, null
  br i1 %59, label %60, label %78

60:                                               ; preds = %50
  %61 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %62 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 7
  br i1 %66, label %67, label %78

67:                                               ; preds = %60
  %68 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %69 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @IEEE80211_SMPS_DYNAMIC, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load i32, i32* @ENTRY_TXD_HT_MIMO_PS, align 4
  %75 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %76 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %75, i32 0, i32 1
  %77 = call i32 @__set_bit(i32 %74, i32* %76)
  br label %78

78:                                               ; preds = %73, %67, %60, %50
  br label %102

79:                                               ; preds = %43
  %80 = load %struct.rt2x00_rate*, %struct.rt2x00_rate** %10, align 8
  %81 = getelementptr inbounds %struct.rt2x00_rate, %struct.rt2x00_rate* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @rt2x00_get_rate_mcs(i32 %82)
  %84 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %85 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 8
  %88 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %89 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @IEEE80211_TX_RC_USE_SHORT_PREAMBLE, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %79
  %95 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %96 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, 8
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %94, %79
  br label %102

102:                                              ; preds = %101, %78
  %103 = load i32, i32* @CONFIG_HT_DISABLED, align 4
  %104 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  %105 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %104, i32 0, i32 0
  %106 = call i64 @test_bit(i32 %103, i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %128

108:                                              ; preds = %102
  %109 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %110 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @IEEE80211_TX_CTL_FIRST_FRAGMENT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %108
  %116 = load i8*, i8** @TXOP_SIFS, align 8
  %117 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %118 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 3
  store i8* %116, i8** %120, align 8
  br label %127

121:                                              ; preds = %108
  %122 = load i8*, i8** @TXOP_BACKOFF, align 8
  %123 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %124 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 3
  store i8* %122, i8** %126, align 8
  br label %127

127:                                              ; preds = %121, %115
  br label %237

128:                                              ; preds = %102
  %129 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %130 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @IEEE80211_TX_CTL_STBC, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %137 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  store i32 1, i32* %139, align 4
  br label %140

140:                                              ; preds = %135, %128
  %141 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %142 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %168

147:                                              ; preds = %140
  %148 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %149 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @IEEE80211_TX_CTL_RATE_CTRL_PROBE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %168, label %154

154:                                              ; preds = %147
  %155 = load i32, i32* @ENTRY_TXD_HT_AMPDU, align 4
  %156 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %157 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %156, i32 0, i32 1
  %158 = call i32 @__set_bit(i32 %155, i32* %157)
  %159 = load i32, i32* %15, align 4
  %160 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %161 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 4
  store i32 %159, i32* %163, align 8
  %164 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %165 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  store i32 7, i32* %167, align 8
  br label %168

168:                                              ; preds = %154, %147, %140
  %169 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %170 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @IEEE80211_TX_RC_40_MHZ_WIDTH, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %182, label %175

175:                                              ; preds = %168
  %176 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %177 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @IEEE80211_TX_RC_DUP_DATA, align 4
  %180 = and i32 %178, %179
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %175, %168
  %183 = load i32, i32* @ENTRY_TXD_HT_BW_40, align 4
  %184 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %185 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %184, i32 0, i32 1
  %186 = call i32 @__set_bit(i32 %183, i32* %185)
  br label %187

187:                                              ; preds = %182, %175
  %188 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %189 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @IEEE80211_TX_RC_SHORT_GI, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %187
  %195 = load i32, i32* @ENTRY_TXD_HT_SHORT_GI, align 4
  %196 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %197 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %196, i32 0, i32 1
  %198 = call i32 @__set_bit(i32 %195, i32* %197)
  br label %199

199:                                              ; preds = %194, %187
  %200 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %201 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i64 @ieee80211_is_mgmt(i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %217

205:                                              ; preds = %199
  %206 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %207 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @ieee80211_is_beacon(i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %217, label %211

211:                                              ; preds = %205
  %212 = load i8*, i8** @TXOP_BACKOFF, align 8
  %213 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %214 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 3
  store i8* %212, i8** %216, align 8
  br label %237

217:                                              ; preds = %205, %199
  %218 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %219 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = load i32, i32* @IEEE80211_TX_CTL_FIRST_FRAGMENT, align 4
  %222 = and i32 %220, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %230, label %224

224:                                              ; preds = %217
  %225 = load i8*, i8** @TXOP_SIFS, align 8
  %226 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %227 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 3
  store i8* %225, i8** %229, align 8
  br label %236

230:                                              ; preds = %217
  %231 = load i8*, i8** @TXOP_HTTXOP, align 8
  %232 = load %struct.txentry_desc*, %struct.txentry_desc** %8, align 8
  %233 = getelementptr inbounds %struct.txentry_desc, %struct.txentry_desc* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 3
  store i8* %231, i8** %235, align 8
  br label %236

236:                                              ; preds = %230, %224
  br label %237

237:                                              ; preds = %127, %236, %211
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.rt2x00_sta* @sta_to_rt2x00_sta(%struct.ieee80211_sta*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @rt2x00_get_rate_mcs(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i32 @ieee80211_is_beacon(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
