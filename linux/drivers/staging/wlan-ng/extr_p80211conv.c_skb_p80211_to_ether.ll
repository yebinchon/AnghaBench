; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211conv.c_skb_p80211_to_ether.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211conv.c_skb_p80211_to_ether.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i32, i64, %struct.TYPE_7__, %struct.net_device* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32, i32, i64 }
%union.p80211_hdr = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32*, i32*, i32 }
%struct.wlan_ethhdr = type { i8*, i32*, i32* }
%struct.wlan_llc = type { i32, i32, i32 }
%struct.wlan_snap = type { i8*, i32 }
%struct.TYPE_6__ = type { i32*, i32* }
%struct.TYPE_8__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WLAN_HDR_A3_LEN = common dso_local global i32 0, align 4
@WLAN_CRC_LEN = common dso_local global i32 0, align 4
@WLAN_HDR_A4_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"A4 frame too short!\0A\00", align 1
@HOSTWEP_PRIVACYINVOKED = common dso_local global i32 0, align 4
@HOSTWEP_DECRYPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"WEP frame too short (%u).\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Host de-WEP failed, dropping frame (%d).\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"802.3 ENCAP len: %d\0A\00", align 1
@ETH_HLEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"ENCAP frame too large (%d > %d)\0A\00", align 1
@oui_rfc1042 = common dso_local global i32 0, align 4
@WLAN_IEEE_OUI_LEN = common dso_local global i32 0, align 4
@WLAN_ETHCONV_8021h = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"SNAP+RFC1042 len: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"SNAP frame too large (%d > %d)\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"802.1h/RFC1042 len: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"DIXII frame too large (%ld > %d)\0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"NON-ENCAP len: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [33 x i8] c"OTHER frame too large (%d > %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_p80211_to_ether(%struct.wlandevice* %0, i64 %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wlandevice*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %union.p80211_hdr*, align 8
  %16 = alloca %struct.wlan_ethhdr*, align 8
  %17 = alloca %struct.wlan_llc*, align 8
  %18 = alloca %struct.wlan_snap*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.wlandevice* %0, %struct.wlandevice** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %21 = load %struct.wlandevice*, %struct.wlandevice** %5, align 8
  %22 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %21, i32 0, i32 3
  %23 = load %struct.net_device*, %struct.net_device** %22, align 8
  store %struct.net_device* %23, %struct.net_device** %8, align 8
  %24 = load i32, i32* @ETH_ALEN, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %28 = load i32, i32* @ETH_ALEN, align 4
  %29 = zext i32 %28 to i64
  %30 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %14, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %35 = sub i32 %33, %34
  %36 = load i32, i32* @WLAN_CRC_LEN, align 4
  %37 = sub i32 %35, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  store i32 %38, i32* %11, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %union.p80211_hdr*
  store %union.p80211_hdr* %42, %union.p80211_hdr** %15, align 8
  %43 = load %union.p80211_hdr*, %union.p80211_hdr** %15, align 8
  %44 = bitcast %union.p80211_hdr* %43 to %struct.TYPE_5__*
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @le16_to_cpu(i32 %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @WLAN_GET_FC_TODS(i32 %48)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %3
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @WLAN_GET_FC_FROMDS(i32 %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %51
  %56 = load %union.p80211_hdr*, %union.p80211_hdr** %15, align 8
  %57 = bitcast %union.p80211_hdr* %56 to %struct.TYPE_5__*
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @ether_addr_copy(i32* %27, i32* %59)
  %61 = load %union.p80211_hdr*, %union.p80211_hdr** %15, align 8
  %62 = bitcast %union.p80211_hdr* %61 to %struct.TYPE_5__*
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @ether_addr_copy(i32* %30, i32* %64)
  br label %132

66:                                               ; preds = %51, %3
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @WLAN_GET_FC_TODS(i32 %67)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %66
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @WLAN_GET_FC_FROMDS(i32 %71)
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %85

74:                                               ; preds = %70
  %75 = load %union.p80211_hdr*, %union.p80211_hdr** %15, align 8
  %76 = bitcast %union.p80211_hdr* %75 to %struct.TYPE_5__*
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @ether_addr_copy(i32* %27, i32* %78)
  %80 = load %union.p80211_hdr*, %union.p80211_hdr** %15, align 8
  %81 = bitcast %union.p80211_hdr* %80 to %struct.TYPE_5__*
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @ether_addr_copy(i32* %30, i32* %83)
  br label %131

85:                                               ; preds = %70, %66
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @WLAN_GET_FC_TODS(i32 %86)
  %88 = icmp eq i32 %87, 1
  br i1 %88, label %89, label %104

89:                                               ; preds = %85
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @WLAN_GET_FC_FROMDS(i32 %90)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load %union.p80211_hdr*, %union.p80211_hdr** %15, align 8
  %95 = bitcast %union.p80211_hdr* %94 to %struct.TYPE_5__*
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @ether_addr_copy(i32* %27, i32* %97)
  %99 = load %union.p80211_hdr*, %union.p80211_hdr** %15, align 8
  %100 = bitcast %union.p80211_hdr* %99 to %struct.TYPE_5__*
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @ether_addr_copy(i32* %30, i32* %102)
  br label %130

104:                                              ; preds = %89, %85
  %105 = load i32, i32* @WLAN_HDR_A4_LEN, align 4
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @WLAN_HDR_A4_LEN, align 4
  %108 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %109 = sub i32 %107, %108
  %110 = icmp ult i32 %106, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = load %struct.net_device*, %struct.net_device** %8, align 8
  %113 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %515

114:                                              ; preds = %104
  %115 = load i32, i32* @WLAN_HDR_A4_LEN, align 4
  %116 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %117 = sub i32 %115, %116
  %118 = load i32, i32* %10, align 4
  %119 = sub i32 %118, %117
  store i32 %119, i32* %10, align 4
  %120 = load %union.p80211_hdr*, %union.p80211_hdr** %15, align 8
  %121 = bitcast %union.p80211_hdr* %120 to %struct.TYPE_6__*
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @ether_addr_copy(i32* %27, i32* %123)
  %125 = load %union.p80211_hdr*, %union.p80211_hdr** %15, align 8
  %126 = bitcast %union.p80211_hdr* %125 to %struct.TYPE_6__*
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @ether_addr_copy(i32* %30, i32* %128)
  br label %130

130:                                              ; preds = %114, %93
  br label %131

131:                                              ; preds = %130, %74
  br label %132

132:                                              ; preds = %131, %55
  %133 = load %struct.wlandevice*, %struct.wlandevice** %5, align 8
  %134 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @HOSTWEP_PRIVACYINVOKED, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %213

139:                                              ; preds = %132
  %140 = load i32, i32* %9, align 4
  %141 = call i64 @WLAN_GET_FC_ISWEP(i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %213

143:                                              ; preds = %139
  %144 = load %struct.wlandevice*, %struct.wlandevice** %5, align 8
  %145 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @HOSTWEP_DECRYPT, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %213

150:                                              ; preds = %143
  %151 = load i32, i32* %10, align 4
  %152 = icmp ule i32 %151, 8
  br i1 %152, label %153, label %159

153:                                              ; preds = %150
  %154 = load %struct.net_device*, %struct.net_device** %8, align 8
  %155 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %154, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %157)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %515

159:                                              ; preds = %150
  %160 = load %struct.wlandevice*, %struct.wlandevice** %5, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load i32, i32* %11, align 4
  %165 = zext i32 %164 to i64
  %166 = add nsw i64 %163, %165
  %167 = add nsw i64 %166, 4
  %168 = load i32, i32* %10, align 4
  %169 = sub i32 %168, 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = zext i32 %173 to i64
  %175 = add nsw i64 %172, %174
  %176 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %177 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %176, i32 0, i32 2
  %178 = load i64, i64* %177, align 8
  %179 = load i32, i32* %11, align 4
  %180 = zext i32 %179 to i64
  %181 = add nsw i64 %178, %180
  %182 = load i32, i32* %10, align 4
  %183 = zext i32 %182 to i64
  %184 = add nsw i64 %181, %183
  %185 = sub nsw i64 %184, 4
  %186 = call i32 @wep_decrypt(%struct.wlandevice* %160, i64 %167, i32 %169, i32 -1, i64 %175, i64 %185)
  store i32 %186, i32* %19, align 4
  %187 = load i32, i32* %19, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %197

189:                                              ; preds = %159
  %190 = load i32, i32* %19, align 4
  %191 = call i32 @pr_debug(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %190)
  %192 = load %struct.wlandevice*, %struct.wlandevice** %5, align 8
  %193 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  store i32 2, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %515

197:                                              ; preds = %159
  %198 = load i32, i32* %10, align 4
  %199 = sub i32 %198, 8
  store i32 %199, i32* %10, align 4
  %200 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %201 = call i32 @skb_pull(%struct.sk_buff* %200, i32 4)
  %202 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %204 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = sub i32 %205, 4
  %207 = call i32 @skb_trim(%struct.sk_buff* %202, i32 %206)
  %208 = load %struct.wlandevice*, %struct.wlandevice** %5, align 8
  %209 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %208, i32 0, i32 2
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 8
  br label %213

213:                                              ; preds = %197, %143, %139, %132
  %214 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %215 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = load i32, i32* %11, align 4
  %218 = zext i32 %217 to i64
  %219 = add nsw i64 %216, %218
  %220 = inttoptr i64 %219 to %struct.wlan_ethhdr*
  store %struct.wlan_ethhdr* %220, %struct.wlan_ethhdr** %16, align 8
  %221 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %222 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %221, i32 0, i32 2
  %223 = load i64, i64* %222, align 8
  %224 = load i32, i32* %11, align 4
  %225 = zext i32 %224 to i64
  %226 = add nsw i64 %223, %225
  %227 = inttoptr i64 %226 to %struct.wlan_llc*
  store %struct.wlan_llc* %227, %struct.wlan_llc** %17, align 8
  %228 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %229 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %228, i32 0, i32 2
  %230 = load i64, i64* %229, align 8
  %231 = load i32, i32* %11, align 4
  %232 = zext i32 %231 to i64
  %233 = add nsw i64 %230, %232
  %234 = add i64 %233, 12
  %235 = inttoptr i64 %234 to %struct.wlan_snap*
  store %struct.wlan_snap* %235, %struct.wlan_snap** %18, align 8
  %236 = load i32, i32* %10, align 4
  %237 = zext i32 %236 to i64
  %238 = icmp uge i64 %237, 24
  br i1 %238, label %239, label %291

239:                                              ; preds = %213
  %240 = load %struct.wlan_llc*, %struct.wlan_llc** %17, align 8
  %241 = getelementptr inbounds %struct.wlan_llc, %struct.wlan_llc* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 170
  br i1 %243, label %249, label %244

244:                                              ; preds = %239
  %245 = load %struct.wlan_llc*, %struct.wlan_llc** %17, align 8
  %246 = getelementptr inbounds %struct.wlan_llc, %struct.wlan_llc* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 170
  br i1 %248, label %249, label %291

249:                                              ; preds = %244, %239
  %250 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %16, align 8
  %251 = getelementptr inbounds %struct.wlan_ethhdr, %struct.wlan_ethhdr* %250, i32 0, i32 2
  %252 = load i32*, i32** %251, align 8
  %253 = call i32 @ether_addr_equal_unaligned(i32* %27, i32* %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %249
  %256 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %16, align 8
  %257 = getelementptr inbounds %struct.wlan_ethhdr, %struct.wlan_ethhdr* %256, i32 0, i32 1
  %258 = load i32*, i32** %257, align 8
  %259 = call i32 @ether_addr_equal_unaligned(i32* %30, i32* %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %291, label %261

261:                                              ; preds = %255, %249
  %262 = load i32, i32* %10, align 4
  %263 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %262)
  %264 = load i32, i32* %10, align 4
  %265 = load %struct.net_device*, %struct.net_device** %8, align 8
  %266 = getelementptr inbounds %struct.net_device, %struct.net_device* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @ETH_HLEN, align 4
  %269 = add i32 %267, %268
  %270 = icmp ugt i32 %264, %269
  br i1 %270, label %271, label %280

271:                                              ; preds = %261
  %272 = load %struct.net_device*, %struct.net_device** %8, align 8
  %273 = load i32, i32* %10, align 4
  %274 = load %struct.net_device*, %struct.net_device** %8, align 8
  %275 = getelementptr inbounds %struct.net_device, %struct.net_device* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @ETH_HLEN, align 4
  %278 = add i32 %276, %277
  %279 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %272, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %273, i32 %278)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %515

280:                                              ; preds = %261
  %281 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %282 = load i32, i32* %11, align 4
  %283 = call i32 @skb_pull(%struct.sk_buff* %281, i32 %282)
  %284 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %285 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %286 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = load i32, i32* @WLAN_CRC_LEN, align 4
  %289 = sub i32 %287, %288
  %290 = call i32 @skb_trim(%struct.sk_buff* %284, i32 %289)
  br label %493

291:                                              ; preds = %255, %244, %213
  %292 = load i32, i32* %10, align 4
  %293 = zext i32 %292 to i64
  %294 = icmp uge i64 %293, 28
  br i1 %294, label %295, label %378

295:                                              ; preds = %291
  %296 = load %struct.wlan_llc*, %struct.wlan_llc** %17, align 8
  %297 = getelementptr inbounds %struct.wlan_llc, %struct.wlan_llc* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = icmp eq i32 %298, 170
  br i1 %299, label %300, label %378

300:                                              ; preds = %295
  %301 = load %struct.wlan_llc*, %struct.wlan_llc** %17, align 8
  %302 = getelementptr inbounds %struct.wlan_llc, %struct.wlan_llc* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = icmp eq i32 %303, 170
  br i1 %304, label %305, label %378

305:                                              ; preds = %300
  %306 = load %struct.wlan_llc*, %struct.wlan_llc** %17, align 8
  %307 = getelementptr inbounds %struct.wlan_llc, %struct.wlan_llc* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 4
  %309 = icmp eq i32 %308, 3
  br i1 %309, label %310, label %378

310:                                              ; preds = %305
  %311 = load %struct.wlan_snap*, %struct.wlan_snap** %18, align 8
  %312 = getelementptr inbounds %struct.wlan_snap, %struct.wlan_snap* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @oui_rfc1042, align 4
  %315 = load i32, i32* @WLAN_IEEE_OUI_LEN, align 4
  %316 = call i64 @memcmp(i32 %313, i32 %314, i32 %315)
  %317 = icmp eq i64 %316, 0
  br i1 %317, label %318, label %329

318:                                              ; preds = %310
  %319 = load i64, i64* %6, align 8
  %320 = load i64, i64* @WLAN_ETHCONV_8021h, align 8
  %321 = icmp eq i64 %319, %320
  br i1 %321, label %322, label %329

322:                                              ; preds = %318
  %323 = load %struct.wlan_snap*, %struct.wlan_snap** %18, align 8
  %324 = getelementptr inbounds %struct.wlan_snap, %struct.wlan_snap* %323, i32 0, i32 0
  %325 = load i8*, i8** %324, align 8
  %326 = call i32 @be16_to_cpu(i8* %325)
  %327 = call i64 @p80211_stt_findproto(i32 %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %337, label %329

329:                                              ; preds = %322, %318, %310
  %330 = load %struct.wlan_snap*, %struct.wlan_snap** %18, align 8
  %331 = getelementptr inbounds %struct.wlan_snap, %struct.wlan_snap* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 8
  %333 = load i32, i32* @oui_rfc1042, align 4
  %334 = load i32, i32* @WLAN_IEEE_OUI_LEN, align 4
  %335 = call i64 @memcmp(i32 %332, i32 %333, i32 %334)
  %336 = icmp ne i64 %335, 0
  br i1 %336, label %337, label %378

337:                                              ; preds = %329, %322
  %338 = load i32, i32* %10, align 4
  %339 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %338)
  %340 = load i32, i32* %10, align 4
  %341 = load %struct.net_device*, %struct.net_device** %8, align 8
  %342 = getelementptr inbounds %struct.net_device, %struct.net_device* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = icmp ugt i32 %340, %343
  br i1 %344, label %345, label %352

345:                                              ; preds = %337
  %346 = load %struct.net_device*, %struct.net_device** %8, align 8
  %347 = load i32, i32* %10, align 4
  %348 = load %struct.net_device*, %struct.net_device** %8, align 8
  %349 = getelementptr inbounds %struct.net_device, %struct.net_device* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %346, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i32 %347, i32 %350)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %515

352:                                              ; preds = %337
  %353 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %354 = load i32, i32* %11, align 4
  %355 = call i32 @skb_pull(%struct.sk_buff* %353, i32 %354)
  %356 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %357 = load i32, i32* @ETH_HLEN, align 4
  %358 = call %struct.wlan_ethhdr* @skb_push(%struct.sk_buff* %356, i32 %357)
  store %struct.wlan_ethhdr* %358, %struct.wlan_ethhdr** %16, align 8
  %359 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %16, align 8
  %360 = getelementptr inbounds %struct.wlan_ethhdr, %struct.wlan_ethhdr* %359, i32 0, i32 2
  %361 = load i32*, i32** %360, align 8
  %362 = call i32 @ether_addr_copy(i32* %361, i32* %27)
  %363 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %16, align 8
  %364 = getelementptr inbounds %struct.wlan_ethhdr, %struct.wlan_ethhdr* %363, i32 0, i32 1
  %365 = load i32*, i32** %364, align 8
  %366 = call i32 @ether_addr_copy(i32* %365, i32* %30)
  %367 = load i32, i32* %10, align 4
  %368 = call i8* @htons(i32 %367)
  %369 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %16, align 8
  %370 = getelementptr inbounds %struct.wlan_ethhdr, %struct.wlan_ethhdr* %369, i32 0, i32 0
  store i8* %368, i8** %370, align 8
  %371 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %372 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %373 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* @WLAN_CRC_LEN, align 4
  %376 = sub i32 %374, %375
  %377 = call i32 @skb_trim(%struct.sk_buff* %371, i32 %376)
  br label %492

378:                                              ; preds = %329, %305, %300, %295, %291
  %379 = load i32, i32* %10, align 4
  %380 = zext i32 %379 to i64
  %381 = icmp uge i64 %380, 28
  br i1 %381, label %382, label %450

382:                                              ; preds = %378
  %383 = load %struct.wlan_llc*, %struct.wlan_llc** %17, align 8
  %384 = getelementptr inbounds %struct.wlan_llc, %struct.wlan_llc* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 4
  %386 = icmp eq i32 %385, 170
  br i1 %386, label %387, label %450

387:                                              ; preds = %382
  %388 = load %struct.wlan_llc*, %struct.wlan_llc** %17, align 8
  %389 = getelementptr inbounds %struct.wlan_llc, %struct.wlan_llc* %388, i32 0, i32 1
  %390 = load i32, i32* %389, align 4
  %391 = icmp eq i32 %390, 170
  br i1 %391, label %392, label %450

392:                                              ; preds = %387
  %393 = load %struct.wlan_llc*, %struct.wlan_llc** %17, align 8
  %394 = getelementptr inbounds %struct.wlan_llc, %struct.wlan_llc* %393, i32 0, i32 2
  %395 = load i32, i32* %394, align 4
  %396 = icmp eq i32 %395, 3
  br i1 %396, label %397, label %450

397:                                              ; preds = %392
  %398 = load i32, i32* %10, align 4
  %399 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0), i32 %398)
  %400 = load i32, i32* %10, align 4
  %401 = zext i32 %400 to i64
  %402 = sub i64 %401, 12
  %403 = sub i64 %402, 16
  %404 = load %struct.net_device*, %struct.net_device** %8, align 8
  %405 = getelementptr inbounds %struct.net_device, %struct.net_device* %404, i32 0, i32 0
  %406 = load i32, i32* %405, align 4
  %407 = zext i32 %406 to i64
  %408 = icmp ugt i64 %403, %407
  br i1 %408, label %409, label %419

409:                                              ; preds = %397
  %410 = load %struct.net_device*, %struct.net_device** %8, align 8
  %411 = load i32, i32* %10, align 4
  %412 = zext i32 %411 to i64
  %413 = sub i64 %412, 12
  %414 = sub i64 %413, 16
  %415 = load %struct.net_device*, %struct.net_device** %8, align 8
  %416 = getelementptr inbounds %struct.net_device, %struct.net_device* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %410, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i64 %414, i32 %417)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %515

419:                                              ; preds = %397
  %420 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %421 = load i32, i32* %11, align 4
  %422 = call i32 @skb_pull(%struct.sk_buff* %420, i32 %421)
  %423 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %424 = call i32 @skb_pull(%struct.sk_buff* %423, i32 12)
  %425 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %426 = call i32 @skb_pull(%struct.sk_buff* %425, i32 16)
  %427 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %428 = load i32, i32* @ETH_HLEN, align 4
  %429 = call %struct.wlan_ethhdr* @skb_push(%struct.sk_buff* %427, i32 %428)
  store %struct.wlan_ethhdr* %429, %struct.wlan_ethhdr** %16, align 8
  %430 = load %struct.wlan_snap*, %struct.wlan_snap** %18, align 8
  %431 = getelementptr inbounds %struct.wlan_snap, %struct.wlan_snap* %430, i32 0, i32 0
  %432 = load i8*, i8** %431, align 8
  %433 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %16, align 8
  %434 = getelementptr inbounds %struct.wlan_ethhdr, %struct.wlan_ethhdr* %433, i32 0, i32 0
  store i8* %432, i8** %434, align 8
  %435 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %16, align 8
  %436 = getelementptr inbounds %struct.wlan_ethhdr, %struct.wlan_ethhdr* %435, i32 0, i32 2
  %437 = load i32*, i32** %436, align 8
  %438 = call i32 @ether_addr_copy(i32* %437, i32* %27)
  %439 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %16, align 8
  %440 = getelementptr inbounds %struct.wlan_ethhdr, %struct.wlan_ethhdr* %439, i32 0, i32 1
  %441 = load i32*, i32** %440, align 8
  %442 = call i32 @ether_addr_copy(i32* %441, i32* %30)
  %443 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %444 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %445 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = load i32, i32* @WLAN_CRC_LEN, align 4
  %448 = sub i32 %446, %447
  %449 = call i32 @skb_trim(%struct.sk_buff* %443, i32 %448)
  br label %491

450:                                              ; preds = %392, %387, %382, %378
  %451 = load i32, i32* %10, align 4
  %452 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.9, i64 0, i64 0), i32 %451)
  %453 = load i32, i32* %10, align 4
  %454 = load %struct.net_device*, %struct.net_device** %8, align 8
  %455 = getelementptr inbounds %struct.net_device, %struct.net_device* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 4
  %457 = icmp ugt i32 %453, %456
  br i1 %457, label %458, label %465

458:                                              ; preds = %450
  %459 = load %struct.net_device*, %struct.net_device** %8, align 8
  %460 = load i32, i32* %10, align 4
  %461 = load %struct.net_device*, %struct.net_device** %8, align 8
  %462 = getelementptr inbounds %struct.net_device, %struct.net_device* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %459, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.10, i64 0, i64 0), i32 %460, i32 %463)
  store i32 1, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %515

465:                                              ; preds = %450
  %466 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %467 = load i32, i32* %11, align 4
  %468 = call i32 @skb_pull(%struct.sk_buff* %466, i32 %467)
  %469 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %470 = load i32, i32* @ETH_HLEN, align 4
  %471 = call %struct.wlan_ethhdr* @skb_push(%struct.sk_buff* %469, i32 %470)
  store %struct.wlan_ethhdr* %471, %struct.wlan_ethhdr** %16, align 8
  %472 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %16, align 8
  %473 = getelementptr inbounds %struct.wlan_ethhdr, %struct.wlan_ethhdr* %472, i32 0, i32 2
  %474 = load i32*, i32** %473, align 8
  %475 = call i32 @ether_addr_copy(i32* %474, i32* %27)
  %476 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %16, align 8
  %477 = getelementptr inbounds %struct.wlan_ethhdr, %struct.wlan_ethhdr* %476, i32 0, i32 1
  %478 = load i32*, i32** %477, align 8
  %479 = call i32 @ether_addr_copy(i32* %478, i32* %30)
  %480 = load i32, i32* %10, align 4
  %481 = call i8* @htons(i32 %480)
  %482 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %16, align 8
  %483 = getelementptr inbounds %struct.wlan_ethhdr, %struct.wlan_ethhdr* %482, i32 0, i32 0
  store i8* %481, i8** %483, align 8
  %484 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %485 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %486 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 8
  %488 = load i32, i32* @WLAN_CRC_LEN, align 4
  %489 = sub i32 %487, %488
  %490 = call i32 @skb_trim(%struct.sk_buff* %484, i32 %489)
  br label %491

491:                                              ; preds = %465, %419
  br label %492

492:                                              ; preds = %491, %352
  br label %493

493:                                              ; preds = %492, %280
  %494 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %495 = load %struct.net_device*, %struct.net_device** %8, align 8
  %496 = call i32 @eth_type_trans(%struct.sk_buff* %494, %struct.net_device* %495)
  %497 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %498 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %497, i32 0, i32 1
  store i32 %496, i32* %498, align 4
  %499 = load %struct.wlandevice*, %struct.wlandevice** %5, align 8
  %500 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %499, i32 0, i32 1
  %501 = load i64, i64* %500, align 8
  %502 = icmp ne i64 %501, 0
  br i1 %502, label %503, label %512

503:                                              ; preds = %493
  %504 = load %struct.wlandevice*, %struct.wlandevice** %5, align 8
  %505 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %506 = call %struct.TYPE_8__* @eth_hdr(%struct.sk_buff* %505)
  %507 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %506, i32 0, i32 0
  %508 = load i32, i32* %507, align 4
  %509 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %510 = call i32 @p80211skb_rxmeta(%struct.sk_buff* %509)
  %511 = call i32 @orinoco_spy_gather(%struct.wlandevice* %504, i32 %508, i32 %510)
  br label %512

512:                                              ; preds = %503, %493
  %513 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %514 = call i32 @p80211skb_rxmeta_detach(%struct.sk_buff* %513)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %515

515:                                              ; preds = %512, %458, %409, %345, %271, %189, %153, %111
  %516 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %516)
  %517 = load i32, i32* %4, align 4
  ret i32 %517
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @WLAN_GET_FC_TODS(i32) #2

declare dso_local i32 @WLAN_GET_FC_FROMDS(i32) #2

declare dso_local i32 @ether_addr_copy(i32*, i32*) #2

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #2

declare dso_local i64 @WLAN_GET_FC_ISWEP(i32) #2

declare dso_local i32 @wep_decrypt(%struct.wlandevice*, i64, i32, i32, i64, i64) #2

declare dso_local i32 @pr_debug(i8*, i32) #2

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #2

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #2

declare dso_local i32 @ether_addr_equal_unaligned(i32*, i32*) #2

declare dso_local i64 @memcmp(i32, i32, i32) #2

declare dso_local i64 @p80211_stt_findproto(i32) #2

declare dso_local i32 @be16_to_cpu(i8*) #2

declare dso_local %struct.wlan_ethhdr* @skb_push(%struct.sk_buff*, i32) #2

declare dso_local i8* @htons(i32) #2

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #2

declare dso_local i32 @orinoco_spy_gather(%struct.wlandevice*, i32, i32) #2

declare dso_local %struct.TYPE_8__* @eth_hdr(%struct.sk_buff*) #2

declare dso_local i32 @p80211skb_rxmeta(%struct.sk_buff*) #2

declare dso_local i32 @p80211skb_rxmeta_detach(%struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
