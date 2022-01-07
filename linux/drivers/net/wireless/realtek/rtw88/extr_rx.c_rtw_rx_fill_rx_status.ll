; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rx.c_rtw_rx_fill_rx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rx.c_rtw_rx_fill_rx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_8__, %struct.ieee80211_hw* }
%struct.TYPE_8__ = type { i64 }
%struct.ieee80211_hw = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.rtw_rx_pkt_stat = type { i64, i64, i32*, i32, i32, i64, i64 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_rx_status = type { i32, i32*, i32, i32, i32, i32, i32, i64, i32, i32, i32 }

@RX_FLAG_FAILED_FCS_CRC = common dso_local global i32 0, align 4
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS0 = common dso_local global i64 0, align 8
@RX_ENC_VHT = common dso_local global i32 0, align 4
@DESC_RATEMCS0 = common dso_local global i64 0, align 8
@RX_ENC_HT = common dso_local global i32 0, align 4
@DESC_RATEVHT1SS_MCS9 = common dso_local global i64 0, align 8
@DESC_RATEVHT2SS_MCS0 = common dso_local global i64 0, align 8
@DESC_RATEVHT2SS_MCS9 = common dso_local global i64 0, align 8
@DESC_RATEVHT3SS_MCS0 = common dso_local global i64 0, align 8
@DESC_RATEVHT3SS_MCS9 = common dso_local global i64 0, align 8
@DESC_RATEVHT4SS_MCS0 = common dso_local global i64 0, align 8
@DESC_RATEVHT4SS_MCS9 = common dso_local global i64 0, align 8
@DESC_RATEMCS15 = common dso_local global i64 0, align 8
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@DESC_RATE6M = common dso_local global i64 0, align 8
@DESC_RATE54M = common dso_local global i64 0, align 8
@NL80211_BAND_2GHZ = common dso_local global i32 0, align 4
@DESC_RATE1M = common dso_local global i64 0, align 8
@RX_FLAG_MACTIME_START = common dso_local global i32 0, align 4
@RTW_CHANNEL_WIDTH_80 = common dso_local global i64 0, align 8
@RATE_INFO_BW_80 = common dso_local global i32 0, align 4
@RTW_CHANNEL_WIDTH_40 = common dso_local global i64 0, align 8
@RATE_INFO_BW_40 = common dso_local global i32 0, align 4
@RATE_INFO_BW_20 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_rx_fill_rx_status(%struct.rtw_dev* %0, %struct.rtw_rx_pkt_stat* %1, %struct.ieee80211_hdr* %2, %struct.ieee80211_rx_status* %3, i64* %4) #0 {
  %6 = alloca %struct.rtw_dev*, align 8
  %7 = alloca %struct.rtw_rx_pkt_stat*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.ieee80211_rx_status*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca %struct.ieee80211_hw*, align 8
  %12 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %6, align 8
  store %struct.rtw_rx_pkt_stat* %1, %struct.rtw_rx_pkt_stat** %7, align 8
  store %struct.ieee80211_hdr* %2, %struct.ieee80211_hdr** %8, align 8
  store %struct.ieee80211_rx_status* %3, %struct.ieee80211_rx_status** %9, align 8
  store i64* %4, i64** %10, align 8
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %14 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %13, i32 0, i32 1
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %14, align 8
  store %struct.ieee80211_hw* %15, %struct.ieee80211_hw** %11, align 8
  %16 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %17 = call i32 @memset(%struct.ieee80211_rx_status* %16, i32 0, i32 64)
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %11, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %26 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %25, i32 0, i32 10
  store i32 %24, i32* %26, align 8
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %11, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %35 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %37 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %5
  %41 = load i32, i32* @RX_FLAG_FAILED_FCS_CRC, align 4
  %42 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %43 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %40, %5
  %47 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %48 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %53 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %54 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %59 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DESC_RATEVHT1SS_MCS0, align 8
  %62 = icmp sge i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  %64 = load i32, i32* @RX_ENC_VHT, align 4
  %65 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %66 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %65, i32 0, i32 9
  store i32 %64, i32* %66, align 4
  br label %78

67:                                               ; preds = %57
  %68 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %69 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DESC_RATEMCS0, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* @RX_ENC_HT, align 4
  %75 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %76 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %75, i32 0, i32 9
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %67
  br label %78

78:                                               ; preds = %77, %63
  %79 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %80 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @DESC_RATEVHT1SS_MCS0, align 8
  %83 = icmp sge i64 %81, %82
  br i1 %83, label %84, label %100

84:                                               ; preds = %78
  %85 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %86 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @DESC_RATEVHT1SS_MCS9, align 8
  %89 = icmp sle i64 %87, %88
  br i1 %89, label %90, label %100

90:                                               ; preds = %84
  %91 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %92 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %94 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @DESC_RATEVHT1SS_MCS0, align 8
  %97 = sub nsw i64 %95, %96
  %98 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %99 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %98, i32 0, i32 7
  store i64 %97, i64* %99, align 8
  br label %247

100:                                              ; preds = %84, %78
  %101 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %102 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @DESC_RATEVHT2SS_MCS0, align 8
  %105 = icmp sge i64 %103, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %100
  %107 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %108 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @DESC_RATEVHT2SS_MCS9, align 8
  %111 = icmp sle i64 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %106
  %113 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %114 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %113, i32 0, i32 0
  store i32 2, i32* %114, align 8
  %115 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %116 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @DESC_RATEVHT2SS_MCS0, align 8
  %119 = sub nsw i64 %117, %118
  %120 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %121 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %120, i32 0, i32 7
  store i64 %119, i64* %121, align 8
  br label %246

122:                                              ; preds = %106, %100
  %123 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %124 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @DESC_RATEVHT3SS_MCS0, align 8
  %127 = icmp sge i64 %125, %126
  br i1 %127, label %128, label %144

128:                                              ; preds = %122
  %129 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %130 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @DESC_RATEVHT3SS_MCS9, align 8
  %133 = icmp sle i64 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %128
  %135 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %136 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %135, i32 0, i32 0
  store i32 3, i32* %136, align 8
  %137 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %138 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @DESC_RATEVHT3SS_MCS0, align 8
  %141 = sub nsw i64 %139, %140
  %142 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %143 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %142, i32 0, i32 7
  store i64 %141, i64* %143, align 8
  br label %245

144:                                              ; preds = %128, %122
  %145 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %146 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @DESC_RATEVHT4SS_MCS0, align 8
  %149 = icmp sge i64 %147, %148
  br i1 %149, label %150, label %166

150:                                              ; preds = %144
  %151 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %152 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @DESC_RATEVHT4SS_MCS9, align 8
  %155 = icmp sle i64 %153, %154
  br i1 %155, label %156, label %166

156:                                              ; preds = %150
  %157 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %158 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %157, i32 0, i32 0
  store i32 4, i32* %158, align 8
  %159 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %160 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @DESC_RATEVHT4SS_MCS0, align 8
  %163 = sub nsw i64 %161, %162
  %164 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %165 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %164, i32 0, i32 7
  store i64 %163, i64* %165, align 8
  br label %244

166:                                              ; preds = %150, %144
  %167 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %168 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @DESC_RATEMCS0, align 8
  %171 = icmp sge i64 %169, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %166
  %173 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %174 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @DESC_RATEMCS15, align 8
  %177 = icmp sle i64 %175, %176
  br i1 %177, label %178, label %186

178:                                              ; preds = %172
  %179 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %180 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @DESC_RATEMCS0, align 8
  %183 = sub nsw i64 %181, %182
  %184 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %185 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %184, i32 0, i32 7
  store i64 %183, i64* %185, align 8
  br label %243

186:                                              ; preds = %172, %166
  %187 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %188 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %187, i32 0, i32 8
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %212

192:                                              ; preds = %186
  %193 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %194 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @DESC_RATE6M, align 8
  %197 = icmp sge i64 %195, %196
  br i1 %197, label %198, label %212

198:                                              ; preds = %192
  %199 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %200 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @DESC_RATE54M, align 8
  %203 = icmp sle i64 %201, %202
  br i1 %203, label %204, label %212

204:                                              ; preds = %198
  %205 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %206 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @DESC_RATE6M, align 8
  %209 = sub nsw i64 %207, %208
  %210 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %211 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %210, i32 0, i32 7
  store i64 %209, i64* %211, align 8
  br label %242

212:                                              ; preds = %198, %192, %186
  %213 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %214 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %213, i32 0, i32 8
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @NL80211_BAND_2GHZ, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %238

218:                                              ; preds = %212
  %219 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %220 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @DESC_RATE1M, align 8
  %223 = icmp sge i64 %221, %222
  br i1 %223, label %224, label %238

224:                                              ; preds = %218
  %225 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %226 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @DESC_RATE54M, align 8
  %229 = icmp sle i64 %227, %228
  br i1 %229, label %230, label %238

230:                                              ; preds = %224
  %231 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %232 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @DESC_RATE1M, align 8
  %235 = sub nsw i64 %233, %234
  %236 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %237 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %236, i32 0, i32 7
  store i64 %235, i64* %237, align 8
  br label %241

238:                                              ; preds = %224, %218, %212
  %239 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %240 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %239, i32 0, i32 7
  store i64 0, i64* %240, align 8
  br label %241

241:                                              ; preds = %238, %230
  br label %242

242:                                              ; preds = %241, %204
  br label %243

243:                                              ; preds = %242, %178
  br label %244

244:                                              ; preds = %243, %156
  br label %245

245:                                              ; preds = %244, %134
  br label %246

246:                                              ; preds = %245, %112
  br label %247

247:                                              ; preds = %246, %90
  %248 = load i32, i32* @RX_FLAG_MACTIME_START, align 4
  %249 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %250 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 8
  %253 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %254 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %257 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %256, i32 0, i32 5
  store i32 %255, i32* %257, align 4
  %258 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %259 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @RTW_CHANNEL_WIDTH_80, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %267

263:                                              ; preds = %247
  %264 = load i32, i32* @RATE_INFO_BW_80, align 4
  %265 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %266 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %265, i32 0, i32 4
  store i32 %264, i32* %266, align 8
  br label %282

267:                                              ; preds = %247
  %268 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %269 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %268, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @RTW_CHANNEL_WIDTH_40, align 8
  %272 = icmp eq i64 %270, %271
  br i1 %272, label %273, label %277

273:                                              ; preds = %267
  %274 = load i32, i32* @RATE_INFO_BW_40, align 4
  %275 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %276 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %275, i32 0, i32 4
  store i32 %274, i32* %276, align 8
  br label %281

277:                                              ; preds = %267
  %278 = load i32, i32* @RATE_INFO_BW_20, align 4
  %279 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %280 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %279, i32 0, i32 4
  store i32 %278, i32* %280, align 8
  br label %281

281:                                              ; preds = %277, %273
  br label %282

282:                                              ; preds = %281, %263
  %283 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %284 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 8
  %286 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %287 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %286, i32 0, i32 3
  store i32 %285, i32* %287, align 4
  store i64 0, i64* %12, align 8
  br label %288

288:                                              ; preds = %313, %282
  %289 = load i64, i64* %12, align 8
  %290 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %291 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = icmp ult i64 %289, %293
  br i1 %294, label %295, label %316

295:                                              ; preds = %288
  %296 = load i64, i64* %12, align 8
  %297 = call i32 @BIT(i64 %296)
  %298 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %299 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = or i32 %300, %297
  store i32 %301, i32* %299, align 8
  %302 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %303 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %302, i32 0, i32 2
  %304 = load i32*, i32** %303, align 8
  %305 = load i64, i64* %12, align 8
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %9, align 8
  %309 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %308, i32 0, i32 1
  %310 = load i32*, i32** %309, align 8
  %311 = load i64, i64* %12, align 8
  %312 = getelementptr inbounds i32, i32* %310, i64 %311
  store i32 %307, i32* %312, align 4
  br label %313

313:                                              ; preds = %295
  %314 = load i64, i64* %12, align 8
  %315 = add i64 %314, 1
  store i64 %315, i64* %12, align 8
  br label %288

316:                                              ; preds = %288
  %317 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %318 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %319 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %320 = call i32 @rtw_rx_addr_match(%struct.rtw_dev* %317, %struct.rtw_rx_pkt_stat* %318, %struct.ieee80211_hdr* %319)
  ret void
}

declare dso_local i32 @memset(%struct.ieee80211_rx_status*, i32, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @rtw_rx_addr_match(%struct.rtw_dev*, %struct.rtw_rx_pkt_stat*, %struct.ieee80211_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
