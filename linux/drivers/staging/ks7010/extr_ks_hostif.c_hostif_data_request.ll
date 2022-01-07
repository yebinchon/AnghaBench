; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_data_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_data_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i32, %struct.TYPE_10__, i32, i32*, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__, %struct.TYPE_9__*, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32, i8* }
%struct.hostif_data_request = type { %struct.TYPE_6__, i8*, i32* }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.ether_hdr = type { i32 }
%struct.ieee802_1x_hdr = type { i64 }
%struct.wpa_eapol_key = type { i32 }
%struct.ethhdr = type { i16 }

@ETH_FRAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"bad length skb_len=%d\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@FORCE_DISCONNECT = common dso_local global i32 0, align 4
@PS_SNOOZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"Invalid mac address: ethernet->h_source=%pM\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ETH_P_PAE = common dso_local global i16 0, align 2
@IEEE802_1X_TYPE_EAPOL_KEY = common dso_local global i64 0, align 8
@TYPE_AUTH = common dso_local global i32 0, align 4
@IW_AUTH_CIPHER_TKIP = common dso_local global i64 0, align 8
@MICHAEL_MIC_LEN = common dso_local global i32 0, align 4
@TYPE_DATA = common dso_local global i32 0, align 4
@IW_AUTH_CIPHER_CCMP = common dso_local global i64 0, align 8
@HIF_DATA_REQ = common dso_local global i32 0, align 4
@send_packet_complete = common dso_local global i32 0, align 4
@WPA_KEY_INFO_ERROR = common dso_local global i16 0, align 2
@WPA_KEY_INFO_REQUEST = common dso_local global i16 0, align 2
@.str.2 = private unnamed_addr constant [29 x i8] c"MIC ERROR Report SET : %04X\0A\00", align 1
@SME_MIC_FAILURE_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostif_data_request(%struct.ks_wlan_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ks_wlan_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hostif_data_request*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i16, align 2
  %12 = alloca %struct.ether_hdr*, align 8
  %13 = alloca i16, align 2
  %14 = alloca %struct.ieee802_1x_hdr*, align 8
  %15 = alloca %struct.wpa_eapol_key*, align 8
  %16 = alloca %struct.ethhdr*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  store i16 0, i16* %13, align 2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @ETH_FRAME_LEN, align 4
  %27 = icmp ugt i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %30 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = trunc i32 %32 to i16
  %34 = call i32 @netdev_err(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i16 zeroext %33)
  %35 = load i32, i32* @EOVERFLOW, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %18, align 4
  br label %451

37:                                               ; preds = %2
  %38 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %39 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @is_disconnect_status(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %57, label %43

43:                                               ; preds = %37
  %44 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %45 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @FORCE_DISCONNECT, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %43
  %51 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %52 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %50, %43, %37
  %58 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %59 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @netif_queue_stopped(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %57
  %64 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %65 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @netif_wake_queue(i32 %66)
  br label %68

68:                                               ; preds = %63, %57
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i32 @dev_kfree_skb(%struct.sk_buff* %69)
  store i32 0, i32* %3, align 4
  br label %455

71:                                               ; preds = %50
  %72 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %73 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %72, i32 0, i32 4
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = call i64 @atomic_read(i32* %74)
  %76 = load i64, i64* @PS_SNOOZE, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %71
  %79 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %80 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @netif_queue_stopped(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %86 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @netif_stop_queue(i32 %87)
  br label %89

89:                                               ; preds = %84, %78
  br label %90

90:                                               ; preds = %89, %71
  %91 = load i32, i32* %6, align 4
  %92 = zext i32 %91 to i64
  %93 = add i64 38, %92
  %94 = add i64 %93, 8
  store i64 %94, i64* %17, align 8
  %95 = load i64, i64* %17, align 8
  %96 = trunc i64 %95 to i32
  %97 = call i32 @hif_align_size(i32 %96)
  %98 = load i32, i32* @GFP_ATOMIC, align 4
  %99 = call %struct.hostif_data_request* @kmalloc(i32 %97, i32 %98)
  store %struct.hostif_data_request* %99, %struct.hostif_data_request** %9, align 8
  %100 = load %struct.hostif_data_request*, %struct.hostif_data_request** %9, align 8
  %101 = icmp ne %struct.hostif_data_request* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %90
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %18, align 4
  br label %451

105:                                              ; preds = %90
  %106 = load %struct.hostif_data_request*, %struct.hostif_data_request** %9, align 8
  %107 = getelementptr inbounds %struct.hostif_data_request, %struct.hostif_data_request* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = bitcast i32* %108 to i8*
  store i8* %109, i8** %10, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 1
  %112 = load i8*, i8** %111, align 8
  store i8* %112, i8** %7, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %114 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %8, align 4
  %116 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %117 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %116, i32 0, i32 1
  %118 = load i8*, i8** %117, align 8
  %119 = bitcast i8* %118 to %struct.ethhdr*
  store %struct.ethhdr* %119, %struct.ethhdr** %16, align 8
  %120 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %121 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load %struct.ethhdr*, %struct.ethhdr** %16, align 8
  %125 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %124, i32 0, i32 0
  %126 = load i16, i16* %125, align 2
  %127 = call i32 @ether_addr_equal(i32* %123, i16 zeroext %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %105
  %130 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %131 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.ethhdr*, %struct.ethhdr** %16, align 8
  %134 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %133, i32 0, i32 0
  %135 = load i16, i16* %134, align 2
  %136 = call i32 @netdev_err(i32 %132, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %135)
  %137 = load i32, i32* @ENXIO, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %18, align 4
  br label %448

139:                                              ; preds = %105
  %140 = load i32, i32* @ETH_ALEN, align 4
  %141 = mul nsw i32 %140, 2
  %142 = sext i32 %141 to i64
  store i64 %142, i64* %17, align 8
  %143 = load i8*, i8** %10, align 8
  %144 = load i8*, i8** %7, align 8
  %145 = load i64, i64* %17, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 @memcpy(i8* %143, i8* %144, i32 %146)
  %148 = load i64, i64* %17, align 8
  %149 = load i8*, i8** %10, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 %148
  store i8* %150, i8** %10, align 8
  %151 = load i64, i64* %17, align 8
  %152 = load i8*, i8** %7, align 8
  %153 = getelementptr inbounds i8, i8* %152, i64 %151
  store i8* %153, i8** %7, align 8
  %154 = load i64, i64* %17, align 8
  %155 = load i32, i32* %8, align 4
  %156 = zext i32 %155 to i64
  %157 = sub i64 %156, %154
  %158 = trunc i64 %157 to i32
  store i32 %158, i32* %8, align 4
  %159 = load i8*, i8** %7, align 8
  %160 = getelementptr inbounds i8, i8* %159, i64 1
  %161 = load i8, i8* %160, align 1
  %162 = zext i8 %161 to i32
  %163 = load i8*, i8** %7, align 8
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = shl i32 %165, 8
  %167 = add nsw i32 %162, %166
  %168 = icmp sgt i32 %167, 1500
  br i1 %168, label %169, label %184

169:                                              ; preds = %139
  %170 = load i8*, i8** %10, align 8
  %171 = getelementptr inbounds i8, i8* %170, i32 1
  store i8* %171, i8** %10, align 8
  store i8 -86, i8* %170, align 1
  %172 = load i8*, i8** %10, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %10, align 8
  store i8 -86, i8* %172, align 1
  %174 = load i8*, i8** %10, align 8
  %175 = getelementptr inbounds i8, i8* %174, i32 1
  store i8* %175, i8** %10, align 8
  store i8 3, i8* %174, align 1
  %176 = load i8*, i8** %10, align 8
  %177 = getelementptr inbounds i8, i8* %176, i32 1
  store i8* %177, i8** %10, align 8
  store i8 0, i8* %176, align 1
  %178 = load i8*, i8** %10, align 8
  %179 = getelementptr inbounds i8, i8* %178, i32 1
  store i8* %179, i8** %10, align 8
  store i8 0, i8* %178, align 1
  %180 = load i8*, i8** %10, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %10, align 8
  store i8 0, i8* %180, align 1
  %182 = load i32, i32* %6, align 4
  %183 = add i32 %182, 6
  store i32 %183, i32* %6, align 4
  br label %191

184:                                              ; preds = %139
  %185 = load i8*, i8** %7, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 2
  store i8* %186, i8** %7, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sub i32 %187, 2
  store i32 %188, i32* %8, align 4
  %189 = load i32, i32* %6, align 4
  %190 = sub i32 %189, 2
  store i32 %190, i32* %6, align 4
  br label %191

191:                                              ; preds = %184, %169
  %192 = load i8*, i8** %10, align 8
  %193 = load i8*, i8** %7, align 8
  %194 = load i32, i32* %8, align 4
  %195 = call i32 @memcpy(i8* %192, i8* %193, i32 %194)
  %196 = load i32, i32* %8, align 4
  %197 = load i8*, i8** %10, align 8
  %198 = zext i32 %196 to i64
  %199 = getelementptr inbounds i8, i8* %197, i64 %198
  store i8* %199, i8** %10, align 8
  %200 = load %struct.hostif_data_request*, %struct.hostif_data_request** %9, align 8
  %201 = getelementptr inbounds %struct.hostif_data_request, %struct.hostif_data_request* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = bitcast i32* %203 to %struct.ether_hdr*
  store %struct.ether_hdr* %204, %struct.ether_hdr** %12, align 8
  %205 = load %struct.ether_hdr*, %struct.ether_hdr** %12, align 8
  %206 = getelementptr inbounds %struct.ether_hdr, %struct.ether_hdr* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call zeroext i16 @ntohs(i32 %207)
  store i16 %208, i16* %11, align 2
  %209 = load i16, i16* %11, align 2
  %210 = zext i16 %209 to i32
  %211 = load i16, i16* @ETH_P_PAE, align 2
  %212 = zext i16 %211 to i32
  %213 = icmp eq i32 %210, %212
  br i1 %213, label %214, label %239

214:                                              ; preds = %191
  %215 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %216 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp sgt i64 %219, 0
  br i1 %220, label %221, label %239

221:                                              ; preds = %214
  %222 = load %struct.ether_hdr*, %struct.ether_hdr** %12, align 8
  %223 = getelementptr inbounds %struct.ether_hdr, %struct.ether_hdr* %222, i64 1
  %224 = bitcast %struct.ether_hdr* %223 to %struct.ieee802_1x_hdr*
  store %struct.ieee802_1x_hdr* %224, %struct.ieee802_1x_hdr** %14, align 8
  %225 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %14, align 8
  %226 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @IEEE802_1X_TYPE_EAPOL_KEY, align 8
  %229 = icmp eq i64 %227, %228
  br i1 %229, label %230, label %238

230:                                              ; preds = %221
  %231 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %14, align 8
  %232 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %231, i64 1
  %233 = bitcast %struct.ieee802_1x_hdr* %232 to %struct.wpa_eapol_key*
  store %struct.wpa_eapol_key* %233, %struct.wpa_eapol_key** %15, align 8
  %234 = load %struct.wpa_eapol_key*, %struct.wpa_eapol_key** %15, align 8
  %235 = getelementptr inbounds %struct.wpa_eapol_key, %struct.wpa_eapol_key* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call zeroext i16 @ntohs(i32 %236)
  store i16 %237, i16* %13, align 2
  br label %238

238:                                              ; preds = %230, %221
  br label %239

239:                                              ; preds = %238, %214, %191
  %240 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %241 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 3
  %243 = load i64, i64* %242, align 8
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %357

245:                                              ; preds = %239
  %246 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %247 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %246, i32 0, i32 1
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 2
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %248, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i64 0
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %357

254:                                              ; preds = %245
  %255 = load i16, i16* %11, align 2
  %256 = zext i16 %255 to i32
  %257 = load i16, i16* @ETH_P_PAE, align 2
  %258 = zext i16 %257 to i32
  %259 = icmp eq i32 %256, %258
  br i1 %259, label %260, label %292

260:                                              ; preds = %254
  %261 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %262 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 2
  %264 = load %struct.TYPE_9__*, %struct.TYPE_9__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %264, i64 1
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %292

269:                                              ; preds = %260
  %270 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %271 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %270, i32 0, i32 1
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 2
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %272, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i64 2
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %292

278:                                              ; preds = %269
  %279 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %280 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %280, i32 0, i32 2
  %282 = load %struct.TYPE_9__*, %struct.TYPE_9__** %281, align 8
  %283 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %282, i64 3
  %284 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %287, label %292

287:                                              ; preds = %278
  %288 = load i32, i32* @TYPE_AUTH, align 4
  %289 = call i8* @cpu_to_le16(i32 %288)
  %290 = load %struct.hostif_data_request*, %struct.hostif_data_request** %9, align 8
  %291 = getelementptr inbounds %struct.hostif_data_request, %struct.hostif_data_request* %290, i32 0, i32 1
  store i8* %289, i8** %291, align 8
  br label %356

292:                                              ; preds = %278, %269, %260, %254
  %293 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %294 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %293, i32 0, i32 1
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = load i64, i64* @IW_AUTH_CIPHER_TKIP, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %342

299:                                              ; preds = %292
  %300 = load i32, i32* @MICHAEL_MIC_LEN, align 4
  %301 = zext i32 %300 to i64
  %302 = call i8* @llvm.stacksave()
  store i8* %302, i8** %19, align 8
  %303 = alloca i8, i64 %301, align 16
  store i64 %301, i64* %20, align 8
  %304 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %305 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 2
  %307 = load %struct.TYPE_9__*, %struct.TYPE_9__** %306, align 8
  %308 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %307, i64 0
  %309 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.hostif_data_request*, %struct.hostif_data_request** %9, align 8
  %312 = getelementptr inbounds %struct.hostif_data_request, %struct.hostif_data_request* %311, i32 0, i32 2
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 0
  %315 = load i32, i32* %6, align 4
  %316 = call i32 @michael_mic(i32 %310, i32* %314, i32 %315, i32 0, i8* %303)
  store i32 %316, i32* %18, align 4
  %317 = load i32, i32* %18, align 4
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %299
  store i32 3, i32* %21, align 4
  br label %338

320:                                              ; preds = %299
  %321 = load i8*, i8** %10, align 8
  %322 = trunc i64 %301 to i32
  %323 = call i32 @memcpy(i8* %321, i8* %303, i32 %322)
  %324 = load i32, i32* %8, align 4
  %325 = zext i32 %324 to i64
  %326 = add i64 %325, %301
  %327 = trunc i64 %326 to i32
  store i32 %327, i32* %8, align 4
  %328 = load i32, i32* %6, align 4
  %329 = zext i32 %328 to i64
  %330 = add i64 %329, %301
  %331 = trunc i64 %330 to i32
  store i32 %331, i32* %6, align 4
  %332 = load i8*, i8** %10, align 8
  %333 = getelementptr inbounds i8, i8* %332, i64 %301
  store i8* %333, i8** %10, align 8
  %334 = load i32, i32* @TYPE_DATA, align 4
  %335 = call i8* @cpu_to_le16(i32 %334)
  %336 = load %struct.hostif_data_request*, %struct.hostif_data_request** %9, align 8
  %337 = getelementptr inbounds %struct.hostif_data_request, %struct.hostif_data_request* %336, i32 0, i32 1
  store i8* %335, i8** %337, align 8
  store i32 0, i32* %21, align 4
  br label %338

338:                                              ; preds = %319, %320
  %339 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %339)
  %340 = load i32, i32* %21, align 4
  switch i32 %340, label %457 [
    i32 0, label %341
    i32 3, label %448
  ]

341:                                              ; preds = %338
  br label %355

342:                                              ; preds = %292
  %343 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %344 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @IW_AUTH_CIPHER_CCMP, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %354

349:                                              ; preds = %342
  %350 = load i32, i32* @TYPE_DATA, align 4
  %351 = call i8* @cpu_to_le16(i32 %350)
  %352 = load %struct.hostif_data_request*, %struct.hostif_data_request** %9, align 8
  %353 = getelementptr inbounds %struct.hostif_data_request, %struct.hostif_data_request* %352, i32 0, i32 1
  store i8* %351, i8** %353, align 8
  br label %354

354:                                              ; preds = %349, %342
  br label %355

355:                                              ; preds = %354, %341
  br label %356

356:                                              ; preds = %355, %287
  br label %374

357:                                              ; preds = %245, %239
  %358 = load i16, i16* %11, align 2
  %359 = zext i16 %358 to i32
  %360 = load i16, i16* @ETH_P_PAE, align 2
  %361 = zext i16 %360 to i32
  %362 = icmp eq i32 %359, %361
  br i1 %362, label %363, label %368

363:                                              ; preds = %357
  %364 = load i32, i32* @TYPE_AUTH, align 4
  %365 = call i8* @cpu_to_le16(i32 %364)
  %366 = load %struct.hostif_data_request*, %struct.hostif_data_request** %9, align 8
  %367 = getelementptr inbounds %struct.hostif_data_request, %struct.hostif_data_request* %366, i32 0, i32 1
  store i8* %365, i8** %367, align 8
  br label %373

368:                                              ; preds = %357
  %369 = load i32, i32* @TYPE_DATA, align 4
  %370 = call i8* @cpu_to_le16(i32 %369)
  %371 = load %struct.hostif_data_request*, %struct.hostif_data_request** %9, align 8
  %372 = getelementptr inbounds %struct.hostif_data_request, %struct.hostif_data_request* %371, i32 0, i32 1
  store i8* %370, i8** %372, align 8
  br label %373

373:                                              ; preds = %368, %363
  br label %374

374:                                              ; preds = %373, %356
  %375 = load i32, i32* %6, align 4
  %376 = zext i32 %375 to i64
  %377 = add i64 24, %376
  %378 = trunc i64 %377 to i32
  %379 = call i8* @cpu_to_le16(i32 %378)
  %380 = load %struct.hostif_data_request*, %struct.hostif_data_request** %9, align 8
  %381 = getelementptr inbounds %struct.hostif_data_request, %struct.hostif_data_request* %380, i32 0, i32 0
  %382 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %381, i32 0, i32 1
  store i8* %379, i8** %382, align 8
  %383 = load i32, i32* @HIF_DATA_REQ, align 4
  %384 = call i8* @cpu_to_le16(i32 %383)
  %385 = load %struct.hostif_data_request*, %struct.hostif_data_request** %9, align 8
  %386 = getelementptr inbounds %struct.hostif_data_request, %struct.hostif_data_request* %385, i32 0, i32 0
  %387 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %386, i32 0, i32 0
  store i8* %384, i8** %387, align 8
  %388 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %389 = load %struct.hostif_data_request*, %struct.hostif_data_request** %9, align 8
  %390 = load i32, i32* %6, align 4
  %391 = zext i32 %390 to i64
  %392 = add i64 32, %391
  %393 = trunc i64 %392 to i32
  %394 = call i32 @hif_align_size(i32 %393)
  %395 = load i32, i32* @send_packet_complete, align 4
  %396 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %397 = call i32 @ks_wlan_hw_tx(%struct.ks_wlan_private* %388, %struct.hostif_data_request* %389, i32 %394, i32 %395, %struct.sk_buff* %396)
  store i32 %397, i32* %18, align 4
  %398 = load i16, i16* %11, align 2
  %399 = zext i16 %398 to i32
  %400 = load i16, i16* @ETH_P_PAE, align 2
  %401 = zext i16 %400 to i32
  %402 = icmp eq i32 %399, %401
  br i1 %402, label %403, label %446

403:                                              ; preds = %374
  %404 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %405 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %404, i32 0, i32 1
  %406 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %405, i32 0, i32 1
  %407 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %406, i32 0, i32 1
  %408 = load i64, i64* %407, align 8
  %409 = icmp sgt i64 %408, 0
  br i1 %409, label %410, label %446

410:                                              ; preds = %403
  %411 = load i16, i16* %13, align 2
  %412 = zext i16 %411 to i32
  %413 = load i16, i16* @WPA_KEY_INFO_ERROR, align 2
  %414 = zext i16 %413 to i32
  %415 = and i32 %412, %414
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %417, label %433

417:                                              ; preds = %410
  %418 = load i16, i16* %13, align 2
  %419 = zext i16 %418 to i32
  %420 = load i16, i16* @WPA_KEY_INFO_REQUEST, align 2
  %421 = zext i16 %420 to i32
  %422 = and i32 %419, %421
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %433

424:                                              ; preds = %417
  %425 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %426 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %425, i32 0, i32 2
  %427 = load i32, i32* %426, align 8
  %428 = load i16, i16* %13, align 2
  %429 = call i32 @netdev_err(i32 %427, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i16 zeroext %428)
  %430 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %431 = load i32, i32* @SME_MIC_FAILURE_REQUEST, align 4
  %432 = call i32 @hostif_sme_enqueue(%struct.ks_wlan_private* %430, i32 %431)
  br label %433

433:                                              ; preds = %424, %417, %410
  %434 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %435 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %434, i32 0, i32 1
  %436 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %436, i32 0, i32 1
  %438 = load i64, i64* %437, align 8
  %439 = icmp eq i64 %438, 2
  br i1 %439, label %440, label %445

440:                                              ; preds = %433
  %441 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %4, align 8
  %442 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %441, i32 0, i32 1
  %443 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %442, i32 0, i32 1
  %444 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %443, i32 0, i32 0
  store i32 1, i32* %444, align 8
  br label %445

445:                                              ; preds = %440, %433
  br label %446

446:                                              ; preds = %445, %403, %374
  %447 = load i32, i32* %18, align 4
  store i32 %447, i32* %3, align 4
  br label %455

448:                                              ; preds = %338, %129
  %449 = load %struct.hostif_data_request*, %struct.hostif_data_request** %9, align 8
  %450 = call i32 @kfree(%struct.hostif_data_request* %449)
  br label %451

451:                                              ; preds = %448, %102, %28
  %452 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %453 = call i32 @dev_kfree_skb(%struct.sk_buff* %452)
  %454 = load i32, i32* %18, align 4
  store i32 %454, i32* %3, align 4
  br label %455

455:                                              ; preds = %451, %446, %68
  %456 = load i32, i32* %3, align 4
  ret i32 %456

457:                                              ; preds = %338
  unreachable
}

declare dso_local i32 @netdev_err(i32, i8*, i16 zeroext) #1

declare dso_local i64 @is_disconnect_status(i32) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local %struct.hostif_data_request* @kmalloc(i32, i32) #1

declare dso_local i32 @hif_align_size(i32) #1

declare dso_local i32 @ether_addr_equal(i32*, i16 zeroext) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local zeroext i16 @ntohs(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @michael_mic(i32, i32*, i32, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @ks_wlan_hw_tx(%struct.ks_wlan_private*, %struct.hostif_data_request*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @hostif_sme_enqueue(%struct.ks_wlan_private*, i32) #1

declare dso_local i32 @kfree(%struct.hostif_data_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
