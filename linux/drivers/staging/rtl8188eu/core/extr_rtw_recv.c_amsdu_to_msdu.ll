; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_amsdu_to_msdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_amsdu_to_msdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.recv_priv }
%struct.recv_priv = type { %struct.__queue }
%struct.__queue = type { i32 }
%struct.recv_frame = type { %struct.sk_buff*, %struct.rx_pkt_attrib }
%struct.sk_buff = type { i32, i8*, i32, i32, i32 }
%struct.rx_pkt_attrib = type { i64, i64, i32*, i32* }

@MAX_SUBFRAME_COUNT = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@ETHERNET_HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"nRemain_Length is %d and nSubframe_Length is : %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"skb_clone() Fail!!! , nr_subframes=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"ParseSubframe(): Too many Subframes! Packets dropped!\0A\00", align 1
@rtw_rfc1042_header = common dso_local global i32 0, align 4
@SNAP_SIZE = common dso_local global i64 0, align 8
@ETH_P_AARP = common dso_local global i32 0, align 4
@ETH_P_IPX = common dso_local global i32 0, align 4
@rtw_bridge_tunnel_header = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.recv_frame*)* @amsdu_to_msdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amsdu_to_msdu(%struct.adapter* %0, %struct.recv_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.recv_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.rx_pkt_attrib*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.recv_priv*, align 8
  %17 = alloca %struct.__queue*, align 8
  %18 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.recv_frame* %1, %struct.recv_frame** %4, align 8
  %19 = load i32, i32* @MAX_SUBFRAME_COUNT, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca %struct.sk_buff*, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 1
  store %struct.recv_priv* %24, %struct.recv_priv** %16, align 8
  %25 = load %struct.recv_priv*, %struct.recv_priv** %16, align 8
  %26 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %25, i32 0, i32 0
  store %struct.__queue* %26, %struct.__queue** %17, align 8
  store i32 0, i32* %9, align 4
  %27 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %28 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %27, i32 0, i32 1
  store %struct.rx_pkt_attrib* %28, %struct.rx_pkt_attrib** %12, align 8
  %29 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %30 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %29, i32 0, i32 0
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  %32 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %33 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @skb_pull(%struct.sk_buff* %31, i64 %35)
  %37 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %38 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %2
  %43 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %44 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %43, i32 0, i32 0
  %45 = load %struct.sk_buff*, %struct.sk_buff** %44, align 8
  %46 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %47 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @skb_pull(%struct.sk_buff* %45, i64 %49)
  br label %51

51:                                               ; preds = %42, %2
  %52 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %53 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %52, i32 0, i32 0
  %54 = load %struct.sk_buff*, %struct.sk_buff** %53, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  store i32 %56, i32* %5, align 4
  %57 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %58 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %57, i32 0, i32 0
  %59 = load %struct.sk_buff*, %struct.sk_buff** %58, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  store i8* %61, i8** %11, align 8
  br label %62

62:                                               ; preds = %164, %51
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @ETH_HLEN, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %165

66:                                               ; preds = %62
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 12
  %69 = call i32 @get_unaligned_be16(i8* %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @ETHERNET_HEADER_SIZE, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %71, %72
  %74 = icmp slt i32 %70, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %77)
  br label %274

79:                                               ; preds = %66
  %80 = load i32, i32* @ETH_HLEN, align 4
  %81 = load i8*, i8** %11, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %81, i64 %82
  store i8* %83, i8** %11, align 8
  %84 = load i32, i32* @ETH_HLEN, align 4
  %85 = load i32, i32* %5, align 4
  %86 = sub nsw i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 12
  %89 = call %struct.sk_buff* @dev_alloc_skb(i32 %88)
  store %struct.sk_buff* %89, %struct.sk_buff** %13, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %91 = icmp ne %struct.sk_buff* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %79
  %93 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %94 = call i32 @skb_reserve(%struct.sk_buff* %93, i32 12)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %96 = load i8*, i8** %11, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @skb_put_data(%struct.sk_buff* %95, i8* %96, i32 %97)
  br label %121

99:                                               ; preds = %79
  %100 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %101 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %100, i32 0, i32 0
  %102 = load %struct.sk_buff*, %struct.sk_buff** %101, align 8
  %103 = load i32, i32* @GFP_ATOMIC, align 4
  %104 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %102, i32 %103)
  store %struct.sk_buff* %104, %struct.sk_buff** %13, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %106 = icmp ne %struct.sk_buff* %105, null
  br i1 %106, label %107, label %117

107:                                              ; preds = %99
  %108 = load i8*, i8** %11, align 8
  %109 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 1
  store i8* %108, i8** %110, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %114, i32 %115)
  br label %120

117:                                              ; preds = %99
  %118 = load i32, i32* %9, align 4
  %119 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %118)
  br label %165

120:                                              ; preds = %107
  br label %121

121:                                              ; preds = %120, %92
  %122 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %9, align 4
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %22, i64 %125
  store %struct.sk_buff* %122, %struct.sk_buff** %126, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* @MAX_SUBFRAME_COUNT, align 4
  %129 = icmp sge i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %121
  %131 = call i32 (i8*, ...) @DBG_88E(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  br label %165

132:                                              ; preds = %121
  %133 = load i32, i32* %8, align 4
  %134 = load i8*, i8** %11, align 8
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %134, i64 %135
  store i8* %136, i8** %11, align 8
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* %5, align 4
  %139 = sub nsw i32 %138, %137
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %164

142:                                              ; preds = %132
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* @ETH_HLEN, align 4
  %145 = add nsw i32 %143, %144
  %146 = and i32 %145, 3
  %147 = sub nsw i32 4, %146
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp eq i32 %148, 4
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  store i32 0, i32* %6, align 4
  br label %151

151:                                              ; preds = %150, %142
  %152 = load i32, i32* %5, align 4
  %153 = load i32, i32* %6, align 4
  %154 = icmp slt i32 %152, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %151
  br label %274

156:                                              ; preds = %151
  %157 = load i32, i32* %6, align 4
  %158 = load i8*, i8** %11, align 8
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  store i8* %160, i8** %11, align 8
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %5, align 4
  %163 = sub nsw i32 %162, %161
  store i32 %163, i32* %5, align 4
  br label %164

164:                                              ; preds = %156, %132
  br label %62

165:                                              ; preds = %130, %117, %62
  store i32 0, i32* %10, align 4
  br label %166

166:                                              ; preds = %270, %165
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* %9, align 4
  %169 = icmp slt i32 %167, %168
  br i1 %169, label %170, label %273

170:                                              ; preds = %166
  %171 = load i32, i32* %10, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %22, i64 %172
  %174 = load %struct.sk_buff*, %struct.sk_buff** %173, align 8
  store %struct.sk_buff* %174, %struct.sk_buff** %13, align 8
  %175 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %176 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %175, i32 0, i32 1
  %177 = load i8*, i8** %176, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 6
  %179 = call i32 @get_unaligned_be16(i8* %178)
  store i32 %179, i32* %7, align 4
  %180 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %181 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = icmp sge i32 %182, 8
  br i1 %183, label %184, label %228

184:                                              ; preds = %170
  %185 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %186 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %185, i32 0, i32 1
  %187 = load i8*, i8** %186, align 8
  %188 = load i32, i32* @rtw_rfc1042_header, align 4
  %189 = load i64, i64* @SNAP_SIZE, align 8
  %190 = call i32 @memcmp(i8* %187, i32 %188, i64 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %184
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @ETH_P_AARP, align 4
  %195 = icmp ne i32 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %192
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* @ETH_P_IPX, align 4
  %199 = icmp ne i32 %197, %198
  br i1 %199, label %208, label %200

200:                                              ; preds = %196, %192, %184
  %201 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %202 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %201, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = load i32, i32* @rtw_bridge_tunnel_header, align 4
  %205 = load i64, i64* @SNAP_SIZE, align 8
  %206 = call i32 @memcmp(i8* %203, i32 %204, i64 %205)
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %228, label %208

208:                                              ; preds = %200, %196
  %209 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %210 = load i64, i64* @SNAP_SIZE, align 8
  %211 = call i32 @skb_pull(%struct.sk_buff* %209, i64 %210)
  %212 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %213 = load i32, i32* @ETH_ALEN, align 4
  %214 = call i32 @skb_push(%struct.sk_buff* %212, i32 %213)
  %215 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %216 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %215, i32 0, i32 3
  %217 = load i32*, i32** %216, align 8
  %218 = load i32, i32* @ETH_ALEN, align 4
  %219 = call i32 @memcpy(i32 %214, i32* %217, i32 %218)
  %220 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %221 = load i32, i32* @ETH_ALEN, align 4
  %222 = call i32 @skb_push(%struct.sk_buff* %220, i32 %221)
  %223 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %224 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %223, i32 0, i32 2
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* @ETH_ALEN, align 4
  %227 = call i32 @memcpy(i32 %222, i32* %225, i32 %226)
  br label %252

228:                                              ; preds = %200, %170
  %229 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %230 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = call i32 @htons(i32 %231)
  store i32 %232, i32* %18, align 4
  %233 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %234 = call i32 @skb_push(%struct.sk_buff* %233, i32 2)
  %235 = call i32 @memcpy(i32 %234, i32* %18, i32 2)
  %236 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %237 = load i32, i32* @ETH_ALEN, align 4
  %238 = call i32 @skb_push(%struct.sk_buff* %236, i32 %237)
  %239 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %240 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %239, i32 0, i32 3
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* @ETH_ALEN, align 4
  %243 = call i32 @memcpy(i32 %238, i32* %241, i32 %242)
  %244 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %245 = load i32, i32* @ETH_ALEN, align 4
  %246 = call i32 @skb_push(%struct.sk_buff* %244, i32 %245)
  %247 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %248 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %247, i32 0, i32 2
  %249 = load i32*, i32** %248, align 8
  %250 = load i32, i32* @ETH_ALEN, align 4
  %251 = call i32 @memcpy(i32 %246, i32* %249, i32 %250)
  br label %252

252:                                              ; preds = %228, %208
  %253 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %254 = load %struct.adapter*, %struct.adapter** %3, align 8
  %255 = getelementptr inbounds %struct.adapter, %struct.adapter* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @eth_type_trans(%struct.sk_buff* %253, i32 %256)
  %258 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %259 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %258, i32 0, i32 4
  store i32 %257, i32* %259, align 8
  %260 = load %struct.adapter*, %struct.adapter** %3, align 8
  %261 = getelementptr inbounds %struct.adapter, %struct.adapter* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %264 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %263, i32 0, i32 3
  store i32 %262, i32* %264, align 4
  %265 = load i32, i32* @CHECKSUM_NONE, align 4
  %266 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %267 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %266, i32 0, i32 2
  store i32 %265, i32* %267, align 8
  %268 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %269 = call i32 @netif_rx(%struct.sk_buff* %268)
  br label %270

270:                                              ; preds = %252
  %271 = load i32, i32* %10, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %10, align 4
  br label %166

273:                                              ; preds = %166
  br label %274

274:                                              ; preds = %273, %155, %75
  %275 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %276 = load %struct.__queue*, %struct.__queue** %17, align 8
  %277 = call i32 @rtw_free_recvframe(%struct.recv_frame* %275, %struct.__queue* %276)
  %278 = load i32, i32* @_SUCCESS, align 4
  %279 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %279)
  ret i32 %278
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #2

declare dso_local i32 @get_unaligned_be16(i8*) #2

declare dso_local i32 @DBG_88E(i8*, ...) #2

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #2

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #2

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #2

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #2

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #2

declare dso_local i32 @memcmp(i8*, i32, i64) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #2

declare dso_local i32 @netif_rx(%struct.sk_buff*) #2

declare dso_local i32 @rtw_free_recvframe(%struct.recv_frame*, %struct.__queue*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
