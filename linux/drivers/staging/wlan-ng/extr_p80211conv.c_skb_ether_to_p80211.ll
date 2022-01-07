; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211conv.c_skb_ether_to_p80211.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_p80211conv.c_skb_ether_to_p80211.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i32, i32, %struct.TYPE_5__*, i32* }
%struct.TYPE_5__ = type { i32* }
%struct.sk_buff = type { i64, i32* }
%union.p80211_hdr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i32, %struct.wlan_ethhdr*, %struct.wlan_ethhdr*, %struct.wlan_ethhdr* }
%struct.wlan_ethhdr = type { i32, i32, i32 }
%struct.p80211_metawep = type { i32*, i32, i32 }
%struct.wlan_llc = type { i32, i32, i32 }
%struct.wlan_snap = type { %struct.wlan_ethhdr*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"zero-length skb!\0A\00", align 1
@WLAN_ETHCONV_ENCAP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"ENCAP len: %d\0A\00", align 1
@ETH_DATA_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"802.3 len: %d\0A\00", align 1
@ETH_HLEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"DIXII len: %d\0A\00", align 1
@WLAN_ETHCONV_8021h = common dso_local global i64 0, align 8
@oui_8021h = common dso_local global i32* null, align 8
@WLAN_IEEE_OUI_LEN = common dso_local global i32 0, align 4
@oui_rfc1042 = common dso_local global i32* null, align 8
@WLAN_FTYPE_DATA = common dso_local global i32 0, align 4
@WLAN_FSTYPE_DATAONLY = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [48 x i8] c"Error: Converting eth to wlan in unknown mode.\0A\00", align 1
@HOSTWEP_PRIVACYINVOKED = common dso_local global i32 0, align 4
@HOSTWEP_ENCRYPT = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@HOSTWEP_DEFAULTKEY_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Host en-WEP failed, dropping frame (%d).\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_ether_to_p80211(%struct.wlandevice* %0, i64 %1, %struct.sk_buff* %2, %union.p80211_hdr* %3, %struct.p80211_metawep* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wlandevice*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %union.p80211_hdr*, align 8
  %11 = alloca %struct.p80211_metawep*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.wlan_ethhdr, align 4
  %15 = alloca %struct.wlan_llc*, align 8
  %16 = alloca %struct.wlan_snap*, align 8
  %17 = alloca i32, align 4
  store %struct.wlandevice* %0, %struct.wlandevice** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %9, align 8
  store %union.p80211_hdr* %3, %union.p80211_hdr** %10, align 8
  store %struct.p80211_metawep* %4, %struct.p80211_metawep** %11, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @memcpy(%struct.wlan_ethhdr* %14, i32* %20, i32 12)
  %22 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sle i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %287

28:                                               ; preds = %5
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @WLAN_ETHCONV_ENCAP, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  br label %102

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.wlan_ethhdr, %struct.wlan_ethhdr* %14, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @ntohs(i32 %39)
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i64, i64* @ETH_DATA_LEN, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %37
  %45 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i64 %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %50 = load i32, i32* @ETH_HLEN, align 4
  %51 = call i32 @skb_pull(%struct.sk_buff* %49, i32 %50)
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @skb_trim(%struct.sk_buff* %52, i64 %53)
  br label %101

55:                                               ; preds = %37
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %61 = load i32, i32* @ETH_HLEN, align 4
  %62 = call i32 @skb_pull(%struct.sk_buff* %60, i32 %61)
  %63 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %64 = call i8* @skb_push(%struct.sk_buff* %63, i32 16)
  %65 = bitcast i8* %64 to %struct.wlan_snap*
  store %struct.wlan_snap* %65, %struct.wlan_snap** %16, align 8
  %66 = load i64, i64* %13, align 8
  %67 = call i32 @htons(i64 %66)
  %68 = load %struct.wlan_snap*, %struct.wlan_snap** %16, align 8
  %69 = getelementptr inbounds %struct.wlan_snap, %struct.wlan_snap* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @WLAN_ETHCONV_8021h, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %55
  %74 = load i64, i64* %13, align 8
  %75 = call i64 @p80211_stt_findproto(i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load %struct.wlan_snap*, %struct.wlan_snap** %16, align 8
  %79 = getelementptr inbounds %struct.wlan_snap, %struct.wlan_snap* %78, i32 0, i32 0
  %80 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %79, align 8
  %81 = load i32*, i32** @oui_8021h, align 8
  %82 = load i32, i32* @WLAN_IEEE_OUI_LEN, align 4
  %83 = call i32 @memcpy(%struct.wlan_ethhdr* %80, i32* %81, i32 %82)
  br label %91

84:                                               ; preds = %73, %55
  %85 = load %struct.wlan_snap*, %struct.wlan_snap** %16, align 8
  %86 = getelementptr inbounds %struct.wlan_snap, %struct.wlan_snap* %85, i32 0, i32 0
  %87 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %86, align 8
  %88 = load i32*, i32** @oui_rfc1042, align 8
  %89 = load i32, i32* @WLAN_IEEE_OUI_LEN, align 4
  %90 = call i32 @memcpy(%struct.wlan_ethhdr* %87, i32* %88, i32 %89)
  br label %91

91:                                               ; preds = %84, %77
  %92 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %93 = call i8* @skb_push(%struct.sk_buff* %92, i32 12)
  %94 = bitcast i8* %93 to %struct.wlan_llc*
  store %struct.wlan_llc* %94, %struct.wlan_llc** %15, align 8
  %95 = load %struct.wlan_llc*, %struct.wlan_llc** %15, align 8
  %96 = getelementptr inbounds %struct.wlan_llc, %struct.wlan_llc* %95, i32 0, i32 0
  store i32 170, i32* %96, align 4
  %97 = load %struct.wlan_llc*, %struct.wlan_llc** %15, align 8
  %98 = getelementptr inbounds %struct.wlan_llc, %struct.wlan_llc* %97, i32 0, i32 1
  store i32 170, i32* %98, align 4
  %99 = load %struct.wlan_llc*, %struct.wlan_llc** %15, align 8
  %100 = getelementptr inbounds %struct.wlan_llc, %struct.wlan_llc* %99, i32 0, i32 2
  store i32 3, i32* %100, align 4
  br label %101

101:                                              ; preds = %91, %44
  br label %102

102:                                              ; preds = %101, %32
  %103 = load i32, i32* @WLAN_FTYPE_DATA, align 4
  %104 = call i32 @WLAN_SET_FC_FTYPE(i32 %103)
  %105 = load i32, i32* @WLAN_FSTYPE_DATAONLY, align 4
  %106 = call i32 @WLAN_SET_FC_FSTYPE(i32 %105)
  %107 = or i32 %104, %106
  %108 = call i32 @cpu_to_le16(i32 %107)
  store i32 %108, i32* %12, align 4
  %109 = load %struct.wlandevice*, %struct.wlandevice** %7, align 8
  %110 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  switch i32 %111, label %200 [
    i32 128, label %112
    i32 129, label %140
    i32 130, label %172
  ]

112:                                              ; preds = %102
  %113 = load %union.p80211_hdr*, %union.p80211_hdr** %10, align 8
  %114 = bitcast %union.p80211_hdr* %113 to %struct.TYPE_4__*
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 5
  %116 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %115, align 8
  %117 = getelementptr inbounds %struct.wlan_ethhdr, %struct.wlan_ethhdr* %14, i32 0, i32 1
  %118 = load i32, i32* @ETH_ALEN, align 4
  %119 = call i32 @memcpy(%struct.wlan_ethhdr* %116, i32* %117, i32 %118)
  %120 = load %union.p80211_hdr*, %union.p80211_hdr** %10, align 8
  %121 = bitcast %union.p80211_hdr* %120 to %struct.TYPE_4__*
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 4
  %123 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %122, align 8
  %124 = load %struct.wlandevice*, %struct.wlandevice** %7, align 8
  %125 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %124, i32 0, i32 2
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* @ETH_ALEN, align 4
  %130 = call i32 @memcpy(%struct.wlan_ethhdr* %123, i32* %128, i32 %129)
  %131 = load %union.p80211_hdr*, %union.p80211_hdr** %10, align 8
  %132 = bitcast %union.p80211_hdr* %131 to %struct.TYPE_4__*
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 3
  %134 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %133, align 8
  %135 = load %struct.wlandevice*, %struct.wlandevice** %7, align 8
  %136 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* @ETH_ALEN, align 4
  %139 = call i32 @memcpy(%struct.wlan_ethhdr* %134, i32* %137, i32 %138)
  br label %205

140:                                              ; preds = %102
  %141 = call i32 @WLAN_SET_FC_TODS(i32 1)
  %142 = call i32 @cpu_to_le16(i32 %141)
  %143 = load i32, i32* %12, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %12, align 4
  %145 = load %union.p80211_hdr*, %union.p80211_hdr** %10, align 8
  %146 = bitcast %union.p80211_hdr* %145 to %struct.TYPE_4__*
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 5
  %148 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %147, align 8
  %149 = load %struct.wlandevice*, %struct.wlandevice** %7, align 8
  %150 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* @ETH_ALEN, align 4
  %153 = call i32 @memcpy(%struct.wlan_ethhdr* %148, i32* %151, i32 %152)
  %154 = load %union.p80211_hdr*, %union.p80211_hdr** %10, align 8
  %155 = bitcast %union.p80211_hdr* %154 to %struct.TYPE_4__*
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 4
  %157 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %156, align 8
  %158 = load %struct.wlandevice*, %struct.wlandevice** %7, align 8
  %159 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %158, i32 0, i32 2
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = load i32, i32* @ETH_ALEN, align 4
  %164 = call i32 @memcpy(%struct.wlan_ethhdr* %157, i32* %162, i32 %163)
  %165 = load %union.p80211_hdr*, %union.p80211_hdr** %10, align 8
  %166 = bitcast %union.p80211_hdr* %165 to %struct.TYPE_4__*
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 3
  %168 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %167, align 8
  %169 = getelementptr inbounds %struct.wlan_ethhdr, %struct.wlan_ethhdr* %14, i32 0, i32 1
  %170 = load i32, i32* @ETH_ALEN, align 4
  %171 = call i32 @memcpy(%struct.wlan_ethhdr* %168, i32* %169, i32 %170)
  br label %205

172:                                              ; preds = %102
  %173 = call i32 @WLAN_SET_FC_FROMDS(i32 1)
  %174 = call i32 @cpu_to_le16(i32 %173)
  %175 = load i32, i32* %12, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %12, align 4
  %177 = load %union.p80211_hdr*, %union.p80211_hdr** %10, align 8
  %178 = bitcast %union.p80211_hdr* %177 to %struct.TYPE_4__*
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 5
  %180 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %179, align 8
  %181 = getelementptr inbounds %struct.wlan_ethhdr, %struct.wlan_ethhdr* %14, i32 0, i32 1
  %182 = load i32, i32* @ETH_ALEN, align 4
  %183 = call i32 @memcpy(%struct.wlan_ethhdr* %180, i32* %181, i32 %182)
  %184 = load %union.p80211_hdr*, %union.p80211_hdr** %10, align 8
  %185 = bitcast %union.p80211_hdr* %184 to %struct.TYPE_4__*
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 4
  %187 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %186, align 8
  %188 = load %struct.wlandevice*, %struct.wlandevice** %7, align 8
  %189 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %188, i32 0, i32 3
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* @ETH_ALEN, align 4
  %192 = call i32 @memcpy(%struct.wlan_ethhdr* %187, i32* %190, i32 %191)
  %193 = load %union.p80211_hdr*, %union.p80211_hdr** %10, align 8
  %194 = bitcast %union.p80211_hdr* %193 to %struct.TYPE_4__*
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 3
  %196 = load %struct.wlan_ethhdr*, %struct.wlan_ethhdr** %195, align 8
  %197 = getelementptr inbounds %struct.wlan_ethhdr, %struct.wlan_ethhdr* %14, i32 0, i32 0
  %198 = load i32, i32* @ETH_ALEN, align 4
  %199 = call i32 @memcpy(%struct.wlan_ethhdr* %196, i32* %197, i32 %198)
  br label %205

200:                                              ; preds = %102
  %201 = load %struct.wlandevice*, %struct.wlandevice** %7, align 8
  %202 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %201, i32 0, i32 2
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %202, align 8
  %204 = call i32 @netdev_err(%struct.TYPE_5__* %203, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %6, align 4
  br label %287

205:                                              ; preds = %172, %140, %112
  %206 = load %struct.p80211_metawep*, %struct.p80211_metawep** %11, align 8
  %207 = getelementptr inbounds %struct.p80211_metawep, %struct.p80211_metawep* %206, i32 0, i32 0
  store i32* null, i32** %207, align 8
  %208 = load %struct.wlandevice*, %struct.wlandevice** %7, align 8
  %209 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  %211 = load i32, i32* @HOSTWEP_PRIVACYINVOKED, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %276

214:                                              ; preds = %205
  %215 = load %struct.wlandevice*, %struct.wlandevice** %7, align 8
  %216 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @HOSTWEP_ENCRYPT, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %276

221:                                              ; preds = %214
  %222 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %223 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = load i32, i32* @GFP_ATOMIC, align 4
  %226 = call i32* @kmalloc(i64 %224, i32 %225)
  %227 = load %struct.p80211_metawep*, %struct.p80211_metawep** %11, align 8
  %228 = getelementptr inbounds %struct.p80211_metawep, %struct.p80211_metawep* %227, i32 0, i32 0
  store i32* %226, i32** %228, align 8
  %229 = load %struct.p80211_metawep*, %struct.p80211_metawep** %11, align 8
  %230 = getelementptr inbounds %struct.p80211_metawep, %struct.p80211_metawep* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = icmp ne i32* %231, null
  br i1 %232, label %236, label %233

233:                                              ; preds = %221
  %234 = load i32, i32* @ENOMEM, align 4
  %235 = sub nsw i32 0, %234
  store i32 %235, i32* %6, align 4
  br label %287

236:                                              ; preds = %221
  %237 = load %struct.wlandevice*, %struct.wlandevice** %7, align 8
  %238 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %239 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = load %struct.p80211_metawep*, %struct.p80211_metawep** %11, align 8
  %242 = getelementptr inbounds %struct.p80211_metawep, %struct.p80211_metawep* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %245 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load %struct.wlandevice*, %struct.wlandevice** %7, align 8
  %248 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @HOSTWEP_DEFAULTKEY_MASK, align 4
  %251 = and i32 %249, %250
  %252 = load %struct.p80211_metawep*, %struct.p80211_metawep** %11, align 8
  %253 = getelementptr inbounds %struct.p80211_metawep, %struct.p80211_metawep* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.p80211_metawep*, %struct.p80211_metawep** %11, align 8
  %256 = getelementptr inbounds %struct.p80211_metawep, %struct.p80211_metawep* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = call i32 @wep_encrypt(%struct.wlandevice* %237, i32* %240, i32* %243, i64 %246, i32 %251, i32 %254, i32 %257)
  store i32 %258, i32* %17, align 4
  %259 = load i32, i32* %17, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %271

261:                                              ; preds = %236
  %262 = load %struct.wlandevice*, %struct.wlandevice** %7, align 8
  %263 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %262, i32 0, i32 2
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %263, align 8
  %265 = load i32, i32* %17, align 4
  %266 = call i32 @netdev_warn(%struct.TYPE_5__* %264, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %265)
  %267 = load %struct.p80211_metawep*, %struct.p80211_metawep** %11, align 8
  %268 = getelementptr inbounds %struct.p80211_metawep, %struct.p80211_metawep* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = call i32 @kfree(i32* %269)
  store i32 2, i32* %6, align 4
  br label %287

271:                                              ; preds = %236
  %272 = call i32 @WLAN_SET_FC_ISWEP(i32 1)
  %273 = call i32 @cpu_to_le16(i32 %272)
  %274 = load i32, i32* %12, align 4
  %275 = or i32 %274, %273
  store i32 %275, i32* %12, align 4
  br label %276

276:                                              ; preds = %271, %214, %205
  %277 = load i32, i32* %12, align 4
  %278 = load %union.p80211_hdr*, %union.p80211_hdr** %10, align 8
  %279 = bitcast %union.p80211_hdr* %278 to %struct.TYPE_4__*
  %280 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %279, i32 0, i32 2
  store i32 %277, i32* %280, align 8
  %281 = load %union.p80211_hdr*, %union.p80211_hdr** %10, align 8
  %282 = bitcast %union.p80211_hdr* %281 to %struct.TYPE_4__*
  %283 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %282, i32 0, i32 1
  store i64 0, i64* %283, align 8
  %284 = load %union.p80211_hdr*, %union.p80211_hdr** %10, align 8
  %285 = bitcast %union.p80211_hdr* %284 to %struct.TYPE_4__*
  %286 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %285, i32 0, i32 0
  store i64 0, i64* %286, align 8
  store i32 0, i32* %6, align 4
  br label %287

287:                                              ; preds = %276, %261, %233, %200, %26
  %288 = load i32, i32* %6, align 4
  ret i32 %288
}

declare dso_local i32 @memcpy(%struct.wlan_ethhdr*, i32*, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i64) #1

declare dso_local i64 @p80211_stt_findproto(i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @WLAN_SET_FC_FTYPE(i32) #1

declare dso_local i32 @WLAN_SET_FC_FSTYPE(i32) #1

declare dso_local i32 @WLAN_SET_FC_TODS(i32) #1

declare dso_local i32 @WLAN_SET_FC_FROMDS(i32) #1

declare dso_local i32 @netdev_err(%struct.TYPE_5__*, i8*) #1

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @wep_encrypt(%struct.wlandevice*, i32*, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @WLAN_SET_FC_ISWEP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
