; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_data_indication.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_hostif.c_hostif_data_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i64, i32*, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32* }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.ether_hdr = type { i8, i32* }
%struct.ieee802_1x_hdr = type { i64 }

@ETH_HLEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"invalid : source is own mac address !!\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"eth_hdrernet->h_dest=%02X:%02X:%02X:%02X:%02X:%02X\0A\00", align 1
@TYPE_DATA = common dso_local global i64 0, align 8
@FORCE_DISCONNECT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"SNAP, rx_ind_size = %d\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@ETHER_HDR_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"NETBEUI/NetBIOS rx_ind_size=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"invalid data format\0A\00", align 1
@IEEE802_1X_TYPE_EAPOL_KEY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*)* @hostif_data_indication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hostif_data_indication(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca %struct.ether_hdr*, align 8
  %8 = alloca %struct.ieee802_1x_hdr*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  %11 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %12 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ETH_HLEN, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %18 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  br label %283

22:                                               ; preds = %1
  %23 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %24 = call i64 @get_word(%struct.ks_wlan_private* %23)
  store i64 %24, i64* %5, align 8
  %25 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %26 = call i64 @get_word(%struct.ks_wlan_private* %25)
  %27 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %28 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = bitcast i32* %29 to %struct.ether_hdr*
  store %struct.ether_hdr* %30, %struct.ether_hdr** %7, align 8
  %31 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %32 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %31, i32 0, i32 7
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load %struct.ether_hdr*, %struct.ether_hdr** %7, align 8
  %36 = getelementptr inbounds %struct.ether_hdr, %struct.ether_hdr* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i64 @ether_addr_equal(i32* %34, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %84

40:                                               ; preds = %22
  %41 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %42 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, ...) @netdev_err(i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %46 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ether_hdr*, %struct.ether_hdr** %7, align 8
  %49 = getelementptr inbounds %struct.ether_hdr, %struct.ether_hdr* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ether_hdr*, %struct.ether_hdr** %7, align 8
  %54 = getelementptr inbounds %struct.ether_hdr, %struct.ether_hdr* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ether_hdr*, %struct.ether_hdr** %7, align 8
  %59 = getelementptr inbounds %struct.ether_hdr, %struct.ether_hdr* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ether_hdr*, %struct.ether_hdr** %7, align 8
  %64 = getelementptr inbounds %struct.ether_hdr, %struct.ether_hdr* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ether_hdr*, %struct.ether_hdr** %7, align 8
  %69 = getelementptr inbounds %struct.ether_hdr, %struct.ether_hdr* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ether_hdr*, %struct.ether_hdr** %7, align 8
  %74 = getelementptr inbounds %struct.ether_hdr, %struct.ether_hdr* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 5
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @netdev_err(i32 %47, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %57, i32 %62, i32 %67, i32 %72, i32 %77)
  %79 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %80 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %283

84:                                               ; preds = %22
  %85 = load i64, i64* %5, align 8
  %86 = load i64, i64* @TYPE_DATA, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %90 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %89, i32 0, i32 6
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %96 = load i64, i64* %5, align 8
  %97 = call i32 @hostif_data_indication_wpa(%struct.ks_wlan_private* %95, i64 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %283

101:                                              ; preds = %94
  br label %102

102:                                              ; preds = %101, %88, %84
  %103 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %104 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @FORCE_DISCONNECT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %116, label %109

109:                                              ; preds = %102
  %110 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %111 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp eq i32 %114, 2
  br i1 %115, label %116, label %117

116:                                              ; preds = %109, %102
  br label %283

117:                                              ; preds = %109
  %118 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %119 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 12
  %122 = load i32, i32* %121, align 4
  switch i32 %122, label %230 [
    i32 128, label %123
    i32 129, label %174
  ]

123:                                              ; preds = %117
  %124 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %125 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %126, 6
  %128 = trunc i64 %127 to i32
  store i32 %128, i32* %3, align 4
  %129 = load i32, i32* %3, align 4
  %130 = call %struct.sk_buff* @dev_alloc_skb(i32 %129)
  store %struct.sk_buff* %130, %struct.sk_buff** %4, align 8
  %131 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %132 = icmp ne %struct.sk_buff* %131, null
  br i1 %132, label %139, label %133

133:                                              ; preds = %123
  %134 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %135 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %134, i32 0, i32 3
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  br label %283

139:                                              ; preds = %123
  %140 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %141 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %3, align 4
  %144 = call i32 @netdev_dbg(i32 %142, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %143)
  %145 = load i32, i32* @ETH_ALEN, align 4
  %146 = mul nsw i32 %145, 2
  %147 = sext i32 %146 to i64
  store i64 %147, i64* %9, align 8
  %148 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %149 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %150 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = bitcast i32* %151 to i8*
  %153 = load i64, i64* %9, align 8
  %154 = trunc i64 %153 to i32
  %155 = call i32 @skb_put_data(%struct.sk_buff* %148, i8* %152, i32 %154)
  %156 = load i32, i32* %3, align 4
  %157 = load i32, i32* @ETH_ALEN, align 4
  %158 = mul nsw i32 %157, 2
  %159 = sub i32 %156, %158
  %160 = zext i32 %159 to i64
  store i64 %160, i64* %9, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %162 = load %struct.ether_hdr*, %struct.ether_hdr** %7, align 8
  %163 = getelementptr inbounds %struct.ether_hdr, %struct.ether_hdr* %162, i32 0, i32 0
  %164 = load i64, i64* %9, align 8
  %165 = trunc i64 %164 to i32
  %166 = call i32 @skb_put_data(%struct.sk_buff* %161, i8* %163, i32 %165)
  %167 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %168 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %167, i32 0, i32 1
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* @ETHER_HDR_SIZE, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  %173 = bitcast i32* %172 to %struct.ieee802_1x_hdr*
  store %struct.ieee802_1x_hdr* %173, %struct.ieee802_1x_hdr** %8, align 8
  br label %240

174:                                              ; preds = %117
  %175 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %176 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = add nsw i64 %177, 2
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %3, align 4
  %180 = load i32, i32* %3, align 4
  %181 = call %struct.sk_buff* @dev_alloc_skb(i32 %180)
  store %struct.sk_buff* %181, %struct.sk_buff** %4, align 8
  %182 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %183 = icmp ne %struct.sk_buff* %182, null
  br i1 %183, label %190, label %184

184:                                              ; preds = %174
  %185 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %186 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %187, align 4
  br label %283

190:                                              ; preds = %174
  %191 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %192 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %3, align 4
  %195 = call i32 @netdev_dbg(i32 %193, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %194)
  %196 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %197 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %198 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = bitcast i32* %199 to i8*
  %201 = call i32 @skb_put_data(%struct.sk_buff* %196, i8* %200, i32 12)
  %202 = load i32, i32* %3, align 4
  %203 = sub i32 %202, 12
  %204 = lshr i32 %203, 8
  %205 = and i32 %204, 255
  %206 = trunc i32 %205 to i8
  %207 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  store i8 %206, i8* %207, align 16
  %208 = load i32, i32* %3, align 4
  %209 = sub i32 %208, 12
  %210 = and i32 %209, 255
  %211 = trunc i32 %210 to i8
  %212 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 1
  store i8 %211, i8* %212, align 1
  %213 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %214 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0
  %215 = call i32 @skb_put_data(%struct.sk_buff* %213, i8* %214, i32 2)
  %216 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %217 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %218 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 12
  %221 = bitcast i32* %220 to i8*
  %222 = load i32, i32* %3, align 4
  %223 = sub i32 %222, 14
  %224 = call i32 @skb_put_data(%struct.sk_buff* %216, i8* %221, i32 %223)
  %225 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %226 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 14
  %229 = bitcast i32* %228 to %struct.ieee802_1x_hdr*
  store %struct.ieee802_1x_hdr* %229, %struct.ieee802_1x_hdr** %8, align 8
  br label %240

230:                                              ; preds = %117
  %231 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %232 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %231, i32 0, i32 4
  %233 = load i32, i32* %232, align 4
  %234 = call i32 (i32, i8*, ...) @netdev_err(i32 %233, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %235 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %236 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %235, i32 0, i32 3
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %237, align 4
  br label %283

240:                                              ; preds = %190, %139
  %241 = load %struct.ieee802_1x_hdr*, %struct.ieee802_1x_hdr** %8, align 8
  %242 = getelementptr inbounds %struct.ieee802_1x_hdr, %struct.ieee802_1x_hdr* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @IEEE802_1X_TYPE_EAPOL_KEY, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %257

246:                                              ; preds = %240
  %247 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %248 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %247, i32 0, i32 6
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %246
  %253 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %254 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %253, i32 0, i32 5
  %255 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i32 0, i32 0
  %256 = call i32 @atomic_set(i32* %255, i32 1)
  br label %257

257:                                              ; preds = %252, %246, %240
  %258 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %259 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %258, i32 0, i32 4
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %262 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %261, i32 0, i32 0
  store i32 %260, i32* %262, align 4
  %263 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %264 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %265 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @eth_type_trans(%struct.sk_buff* %263, i32 %266)
  %268 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %269 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %268, i32 0, i32 1
  store i32 %267, i32* %269, align 4
  %270 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %271 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %272, align 4
  %275 = load i32, i32* %3, align 4
  %276 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %277 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %276, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = add i32 %279, %275
  store i32 %280, i32* %278, align 4
  %281 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %282 = call i32 @netif_rx(%struct.sk_buff* %281)
  br label %283

283:                                              ; preds = %257, %230, %184, %133, %116, %100, %40, %16
  ret void
}

declare dso_local i64 @get_word(%struct.ks_wlan_private*) #1

declare dso_local i64 @ether_addr_equal(i32*, i32*) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i32 @hostif_data_indication_wpa(%struct.ks_wlan_private*, i64) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
