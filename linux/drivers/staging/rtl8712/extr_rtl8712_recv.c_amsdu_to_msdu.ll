; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_amsdu_to_msdu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_amsdu_to_msdu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, %struct.recv_priv }
%struct.recv_priv = type { %struct.__queue }
%struct.__queue = type { i32 }
%union.recv_frame = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i8*, %struct.rx_pkt_attrib }
%struct.rx_pkt_attrib = type { i64, i64, i32, i32, i32*, i32* }
%struct.TYPE_13__ = type { i32*, i32, i32, i32, i32 }

@MAX_SUBFRAME_COUNT = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@ETHERNET_HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"r8712u: nRemain_Length is %d and nSubframe_Length is: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"r8712u: ParseSubframe(): Too many Subframes! Packets dropped!\0A\00", align 1
@rfc1042_header = common dso_local global i32 0, align 4
@SNAP_SIZE = common dso_local global i32 0, align 4
@ETH_P_AARP = common dso_local global i32 0, align 4
@ETH_P_IPX = common dso_local global i32 0, align 4
@bridge_tunnel_header = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, %union.recv_frame*)* @amsdu_to_msdu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amsdu_to_msdu(%struct._adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %union.recv_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.rx_pkt_attrib*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.recv_priv*, align 8
  %17 = alloca %struct.__queue*, align 8
  %18 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %union.recv_frame* %1, %union.recv_frame** %4, align 8
  %19 = load i32, i32* @MAX_SUBFRAME_COUNT, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %14, align 8
  %22 = alloca %struct.TYPE_13__*, i64 %20, align 16
  store i64 %20, i64* %15, align 8
  %23 = load %struct._adapter*, %struct._adapter** %3, align 8
  %24 = getelementptr inbounds %struct._adapter, %struct._adapter* %23, i32 0, i32 1
  store %struct.recv_priv* %24, %struct.recv_priv** %16, align 8
  %25 = load %struct.recv_priv*, %struct.recv_priv** %16, align 8
  %26 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %25, i32 0, i32 0
  store %struct.__queue* %26, %struct.__queue** %17, align 8
  store i32 0, i32* %9, align 4
  %27 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %28 = bitcast %union.recv_frame* %27 to %struct.TYPE_12__*
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 2
  store %struct.rx_pkt_attrib* %30, %struct.rx_pkt_attrib** %12, align 8
  %31 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %32 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %33 = bitcast %union.recv_frame* %32 to %struct.TYPE_12__*
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @recvframe_pull(%union.recv_frame* %31, i64 %37)
  %39 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %40 = bitcast %union.recv_frame* %39 to %struct.TYPE_12__*
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %2
  %47 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %48 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %49 = bitcast %union.recv_frame* %48 to %struct.TYPE_12__*
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @recvframe_pull(%union.recv_frame* %47, i64 %53)
  br label %55

55:                                               ; preds = %46, %2
  %56 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %57 = bitcast %union.recv_frame* %56 to %struct.TYPE_12__*
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %5, align 4
  %61 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %62 = bitcast %union.recv_frame* %61 to %struct.TYPE_12__*
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  store i8* %65, i8** %11, align 8
  br label %66

66:                                               ; preds = %158, %55
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @ETH_HLEN, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %159

70:                                               ; preds = %66
  %71 = load i8*, i8** %11, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 12
  %73 = bitcast i8* %72 to i32*
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = ashr i32 %75, 8
  %77 = load i32, i32* %8, align 4
  %78 = shl i32 %77, 8
  %79 = add nsw i32 %76, %78
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @ETHERNET_HEADER_SIZE, align 4
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %81, %82
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %70
  %86 = load %struct._adapter*, %struct._adapter** %3, align 8
  %87 = getelementptr inbounds %struct._adapter, %struct._adapter* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %5, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (i32, i8*, ...) @netdev_warn(i32 %88, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90)
  br label %294

92:                                               ; preds = %70
  %93 = load i32, i32* @ETH_HLEN, align 4
  %94 = load i8*, i8** %11, align 8
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i8, i8* %94, i64 %95
  store i8* %96, i8** %11, align 8
  %97 = load i32, i32* @ETH_HLEN, align 4
  %98 = load i32, i32* %5, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 12
  %102 = call %struct.TYPE_13__* @dev_alloc_skb(i32 %101)
  store %struct.TYPE_13__* %102, %struct.TYPE_13__** %13, align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %104 = icmp ne %struct.TYPE_13__* %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %92
  br label %159

106:                                              ; preds = %92
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %108 = call i32 @skb_reserve(%struct.TYPE_13__* %107, i32 12)
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %110 = load i8*, i8** %11, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @skb_put_data(%struct.TYPE_13__* %109, i8* %110, i32 %111)
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %22, i64 %116
  store %struct.TYPE_13__* %113, %struct.TYPE_13__** %117, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @MAX_SUBFRAME_COUNT, align 4
  %120 = icmp sge i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %106
  %122 = load %struct._adapter*, %struct._adapter** %3, align 8
  %123 = getelementptr inbounds %struct._adapter, %struct._adapter* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 (i32, i8*, ...) @netdev_warn(i32 %124, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0))
  br label %159

126:                                              ; preds = %106
  %127 = load i32, i32* %8, align 4
  %128 = load i8*, i8** %11, align 8
  %129 = sext i32 %127 to i64
  %130 = getelementptr inbounds i8, i8* %128, i64 %129
  store i8* %130, i8** %11, align 8
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %5, align 4
  %133 = sub nsw i32 %132, %131
  store i32 %133, i32* %5, align 4
  %134 = load i32, i32* %5, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %158

136:                                              ; preds = %126
  %137 = load i32, i32* %8, align 4
  %138 = load i32, i32* @ETH_HLEN, align 4
  %139 = add nsw i32 %137, %138
  %140 = and i32 %139, 3
  %141 = sub nsw i32 4, %140
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp eq i32 %142, 4
  br i1 %143, label %144, label %145

144:                                              ; preds = %136
  store i32 0, i32* %6, align 4
  br label %145

145:                                              ; preds = %144, %136
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* %6, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %294

150:                                              ; preds = %145
  %151 = load i32, i32* %6, align 4
  %152 = load i8*, i8** %11, align 8
  %153 = sext i32 %151 to i64
  %154 = getelementptr inbounds i8, i8* %152, i64 %153
  store i8* %154, i8** %11, align 8
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* %5, align 4
  %157 = sub nsw i32 %156, %155
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %150, %126
  br label %66

159:                                              ; preds = %121, %105, %66
  store i32 0, i32* %10, align 4
  br label %160

160:                                              ; preds = %290, %159
  %161 = load i32, i32* %10, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %293

164:                                              ; preds = %160
  %165 = load i32, i32* %10, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %22, i64 %166
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %167, align 8
  store %struct.TYPE_13__* %168, %struct.TYPE_13__** %13, align 8
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 6
  %173 = load i32, i32* %172, align 4
  %174 = shl i32 %173, 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 7
  %179 = load i32, i32* %178, align 4
  %180 = or i32 %174, %179
  store i32 %180, i32* %7, align 4
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = icmp sge i32 %183, 8
  br i1 %184, label %185, label %229

185:                                              ; preds = %164
  %186 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* @rfc1042_header, align 4
  %190 = load i32, i32* @SNAP_SIZE, align 4
  %191 = call i32 @memcmp(i32* %188, i32 %189, i32 %190)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %201, label %193

193:                                              ; preds = %185
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* @ETH_P_AARP, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* @ETH_P_IPX, align 4
  %200 = icmp ne i32 %198, %199
  br i1 %200, label %209, label %201

201:                                              ; preds = %197, %193, %185
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i32, i32* @bridge_tunnel_header, align 4
  %206 = load i32, i32* @SNAP_SIZE, align 4
  %207 = call i32 @memcmp(i32* %204, i32 %205, i32 %206)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %229, label %209

209:                                              ; preds = %201, %197
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %211 = load i32, i32* @SNAP_SIZE, align 4
  %212 = call i32 @skb_pull(%struct.TYPE_13__* %210, i32 %211)
  %213 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %214 = load i32, i32* @ETH_ALEN, align 4
  %215 = call i32 @skb_push(%struct.TYPE_13__* %213, i32 %214)
  %216 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %217 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %216, i32 0, i32 5
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* @ETH_ALEN, align 4
  %220 = call i32 @memcpy(i32 %215, i32* %218, i32 %219)
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %222 = load i32, i32* @ETH_ALEN, align 4
  %223 = call i32 @skb_push(%struct.TYPE_13__* %221, i32 %222)
  %224 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %225 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %224, i32 0, i32 4
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* @ETH_ALEN, align 4
  %228 = call i32 @memcpy(i32 %223, i32* %226, i32 %227)
  br label %253

229:                                              ; preds = %201, %164
  %230 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %231 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @htons(i32 %232)
  store i32 %233, i32* %18, align 4
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %235 = call i32 @skb_push(%struct.TYPE_13__* %234, i32 2)
  %236 = call i32 @memcpy(i32 %235, i32* %18, i32 2)
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %238 = load i32, i32* @ETH_ALEN, align 4
  %239 = call i32 @skb_push(%struct.TYPE_13__* %237, i32 %238)
  %240 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %241 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %240, i32 0, i32 5
  %242 = load i32*, i32** %241, align 8
  %243 = load i32, i32* @ETH_ALEN, align 4
  %244 = call i32 @memcpy(i32 %239, i32* %242, i32 %243)
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %246 = load i32, i32* @ETH_ALEN, align 4
  %247 = call i32 @skb_push(%struct.TYPE_13__* %245, i32 %246)
  %248 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %249 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %248, i32 0, i32 4
  %250 = load i32*, i32** %249, align 8
  %251 = load i32, i32* @ETH_ALEN, align 4
  %252 = call i32 @memcpy(i32 %247, i32* %250, i32 %251)
  br label %253

253:                                              ; preds = %229, %209
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %255 = icmp ne %struct.TYPE_13__* %254, null
  br i1 %255, label %256, label %289

256:                                              ; preds = %253
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %258 = load %struct._adapter*, %struct._adapter** %3, align 8
  %259 = getelementptr inbounds %struct._adapter, %struct._adapter* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @eth_type_trans(%struct.TYPE_13__* %257, i32 %260)
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 4
  store i32 %261, i32* %263, align 4
  %264 = load %struct._adapter*, %struct._adapter** %3, align 8
  %265 = getelementptr inbounds %struct._adapter, %struct._adapter* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 3
  store i32 %266, i32* %268, align 8
  %269 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %270 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 8
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %273, label %282

273:                                              ; preds = %256
  %274 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %275 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 4
  %277 = icmp eq i32 %276, 1
  br i1 %277, label %278, label %282

278:                                              ; preds = %273
  %279 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %280 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 2
  store i32 %279, i32* %281, align 4
  br label %286

282:                                              ; preds = %273, %256
  %283 = load i32, i32* @CHECKSUM_NONE, align 4
  %284 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 2
  store i32 %283, i32* %285, align 4
  br label %286

286:                                              ; preds = %282, %278
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %288 = call i32 @netif_rx(%struct.TYPE_13__* %287)
  br label %289

289:                                              ; preds = %286, %253
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %10, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %10, align 4
  br label %160

293:                                              ; preds = %160
  br label %294

294:                                              ; preds = %293, %149, %85
  %295 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %296 = bitcast %union.recv_frame* %295 to %struct.TYPE_12__*
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 0
  store i32 0, i32* %298, align 8
  %299 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %300 = load %struct.__queue*, %struct.__queue** %17, align 8
  %301 = call i32 @r8712_free_recvframe(%union.recv_frame* %299, %struct.__queue* %300)
  %302 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %302)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @recvframe_pull(%union.recv_frame*, i64) #2

declare dso_local i32 @netdev_warn(i32, i8*, ...) #2

declare dso_local %struct.TYPE_13__* @dev_alloc_skb(i32) #2

declare dso_local i32 @skb_reserve(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @skb_put_data(%struct.TYPE_13__*, i8*, i32) #2

declare dso_local i32 @memcmp(i32*, i32, i32) #2

declare dso_local i32 @skb_pull(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @skb_push(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @eth_type_trans(%struct.TYPE_13__*, i32) #2

declare dso_local i32 @netif_rx(%struct.TYPE_13__*) #2

declare dso_local i32 @r8712_free_recvframe(%union.recv_frame*, %struct.__queue*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
