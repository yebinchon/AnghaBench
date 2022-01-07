; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_core_get_next_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_core_get_next_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.qeth_card = type { i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.qeth_qdio_buffer = type { %struct.sk_buff*, %struct.qdio_buffer* }
%struct.qdio_buffer = type { i32 }
%struct.qdio_buffer_element = type { i32, %struct.qeth_hdr* }
%struct.qeth_hdr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@QETH_CQ_ENABLED = common dso_local global i64 0, align 8
@QETH_RX_PULL_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unexeob\00", align 1
@rx_errors = common dso_local global i32 0, align 4
@rx_sg_skbs = common dso_local global i32 0, align 4
@rx_sg_frags = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"noskbmem\00", align 1
@rx_dropped = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @qeth_core_get_next_skb(%struct.qeth_card* %0, %struct.qeth_qdio_buffer* %1, %struct.qdio_buffer_element** %2, i32* %3, %struct.qeth_hdr** %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.qeth_card*, align 8
  %8 = alloca %struct.qeth_qdio_buffer*, align 8
  %9 = alloca %struct.qdio_buffer_element**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.qeth_hdr**, align 8
  %12 = alloca %struct.qdio_buffer_element*, align 8
  %13 = alloca %struct.qdio_buffer*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %7, align 8
  store %struct.qeth_qdio_buffer* %1, %struct.qeth_qdio_buffer** %8, align 8
  store %struct.qdio_buffer_element** %2, %struct.qdio_buffer_element*** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.qeth_hdr** %4, %struct.qeth_hdr*** %11, align 8
  %22 = load %struct.qdio_buffer_element**, %struct.qdio_buffer_element*** %9, align 8
  %23 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %22, align 8
  store %struct.qdio_buffer_element* %23, %struct.qdio_buffer_element** %12, align 8
  %24 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %8, align 8
  %25 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %24, i32 0, i32 1
  %26 = load %struct.qdio_buffer*, %struct.qdio_buffer** %25, align 8
  store %struct.qdio_buffer* %26, %struct.qdio_buffer** %13, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %29

29:                                               ; preds = %43, %5
  %30 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %31 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = load i32, i32* %14, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %35, 16
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %29
  %39 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %40 = call i64 @qeth_is_last_sbale(%struct.qdio_buffer_element* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %254

43:                                               ; preds = %38
  %44 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %45 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %44, i32 1
  store %struct.qdio_buffer_element* %45, %struct.qdio_buffer_element** %12, align 8
  store i32 0, i32* %14, align 4
  br label %29

46:                                               ; preds = %29
  %47 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %48 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %47, i32 0, i32 1
  %49 = load %struct.qeth_hdr*, %struct.qeth_hdr** %48, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %49, i64 %51
  %53 = load %struct.qeth_hdr**, %struct.qeth_hdr*** %11, align 8
  store %struct.qeth_hdr* %52, %struct.qeth_hdr** %53, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, 16
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %14, align 4
  %58 = load %struct.qeth_hdr**, %struct.qeth_hdr*** %11, align 8
  %59 = load %struct.qeth_hdr*, %struct.qeth_hdr** %58, align 8
  %60 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  switch i32 %63, label %86 [
    i32 130, label %64
    i32 129, label %71
    i32 128, label %79
  ]

64:                                               ; preds = %46
  %65 = load %struct.qeth_hdr**, %struct.qeth_hdr*** %11, align 8
  %66 = load %struct.qeth_hdr*, %struct.qeth_hdr** %65, align 8
  %67 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %16, align 4
  br label %87

71:                                               ; preds = %46
  %72 = load %struct.qeth_hdr**, %struct.qeth_hdr*** %11, align 8
  %73 = load %struct.qeth_hdr*, %struct.qeth_hdr** %72, align 8
  %74 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* @ETH_HLEN, align 4
  store i32 %78, i32* %19, align 4
  br label %87

79:                                               ; preds = %46
  %80 = load %struct.qeth_hdr**, %struct.qeth_hdr*** %11, align 8
  %81 = load %struct.qeth_hdr*, %struct.qeth_hdr** %80, align 8
  %82 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %16, align 4
  store i32 16, i32* %19, align 4
  br label %87

86:                                               ; preds = %46
  br label %87

87:                                               ; preds = %86, %79, %71, %64
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %254

91:                                               ; preds = %87
  %92 = load i32, i32* %16, align 4
  %93 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %94 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp sge i32 %92, %96
  br i1 %97, label %98, label %107

98:                                               ; preds = %91
  %99 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %100 = call i32 @IS_OSN(%struct.qeth_card* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  %103 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %104 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %103, i32 0, i32 2
  %105 = call i32 @atomic_read(i32* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %102, %98, %91
  %108 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %109 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @QETH_CQ_ENABLED, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %107, %102
  store i32 1, i32* %20, align 4
  br label %115

115:                                              ; preds = %114, %107
  %116 = load i32, i32* %20, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %115
  %119 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %8, align 8
  %120 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %119, i32 0, i32 0
  %121 = load %struct.sk_buff*, %struct.sk_buff** %120, align 8
  %122 = icmp ne %struct.sk_buff* %121, null
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %8, align 8
  %125 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %124, i32 0, i32 0
  %126 = load %struct.sk_buff*, %struct.sk_buff** %125, align 8
  store %struct.sk_buff* %126, %struct.sk_buff** %15, align 8
  %127 = load %struct.qeth_qdio_buffer*, %struct.qeth_qdio_buffer** %8, align 8
  %128 = getelementptr inbounds %struct.qeth_qdio_buffer, %struct.qeth_qdio_buffer* %127, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %128, align 8
  br label %144

129:                                              ; preds = %118, %115
  %130 = load i32, i32* %20, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %129
  %133 = load i32, i32* @QETH_RX_PULL_LEN, align 4
  br label %136

134:                                              ; preds = %129
  %135 = load i32, i32* %16, align 4
  br label %136

136:                                              ; preds = %134, %132
  %137 = phi i32 [ %133, %132 ], [ %135, %134 ]
  store i32 %137, i32* %21, align 4
  %138 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %139 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %138, i32 0, i32 0
  %140 = load i32, i32* %21, align 4
  %141 = load i32, i32* %19, align 4
  %142 = add i32 %140, %141
  %143 = call %struct.sk_buff* @napi_alloc_skb(i32* %139, i32 %142)
  store %struct.sk_buff* %143, %struct.sk_buff** %15, align 8
  br label %144

144:                                              ; preds = %136, %123
  %145 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %146 = icmp ne %struct.sk_buff* %145, null
  br i1 %146, label %148, label %147

147:                                              ; preds = %144
  br label %244

148:                                              ; preds = %144
  %149 = load i32, i32* %19, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %148
  %152 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %153 = load i32, i32* %19, align 4
  %154 = call i32 @skb_reserve(%struct.sk_buff* %152, i32 %153)
  br label %155

155:                                              ; preds = %151, %148
  %156 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %157 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %156, i32 0, i32 1
  %158 = load %struct.qeth_hdr*, %struct.qeth_hdr** %157, align 8
  %159 = load i32, i32* %14, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %158, i64 %160
  %162 = bitcast %struct.qeth_hdr* %161 to i8*
  store i8* %162, i8** %17, align 8
  br label %163

163:                                              ; preds = %223, %155
  %164 = load i32, i32* %16, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %224

166:                                              ; preds = %163
  %167 = load i32, i32* %16, align 4
  %168 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %169 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* %14, align 4
  %172 = sub nsw i32 %170, %171
  %173 = call i32 @min(i32 %167, i32 %172)
  store i32 %173, i32* %18, align 4
  %174 = load i32, i32* %18, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %191

176:                                              ; preds = %166
  %177 = load i32, i32* %20, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %176
  %180 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %181 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* %18, align 4
  %184 = call i32 @qeth_create_skb_frag(%struct.qdio_buffer_element* %180, %struct.sk_buff* %181, i32 %182, i32 %183)
  br label %190

185:                                              ; preds = %176
  %186 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %187 = load i8*, i8** %17, align 8
  %188 = load i32, i32* %18, align 4
  %189 = call i32 @skb_put_data(%struct.sk_buff* %186, i8* %187, i32 %188)
  br label %190

190:                                              ; preds = %185, %179
  br label %191

191:                                              ; preds = %190, %166
  %192 = load i32, i32* %18, align 4
  %193 = load i32, i32* %16, align 4
  %194 = sub nsw i32 %193, %192
  store i32 %194, i32* %16, align 4
  %195 = load i32, i32* %16, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %219

197:                                              ; preds = %191
  %198 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %199 = call i64 @qeth_is_last_sbale(%struct.qdio_buffer_element* %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %212

201:                                              ; preds = %197
  %202 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %203 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %202, i32 4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %204 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %205 = load %struct.qdio_buffer*, %struct.qdio_buffer** %13, align 8
  %206 = call i32 @QETH_CARD_HEX(%struct.qeth_card* %204, i32 2, %struct.qdio_buffer* %205, i32 8)
  %207 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %208 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %207)
  %209 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %210 = load i32, i32* @rx_errors, align 4
  %211 = call i32 @QETH_CARD_STAT_INC(%struct.qeth_card* %209, i32 %210)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %254

212:                                              ; preds = %197
  %213 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %214 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %213, i32 1
  store %struct.qdio_buffer_element* %214, %struct.qdio_buffer_element** %12, align 8
  store i32 0, i32* %14, align 4
  %215 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %216 = getelementptr inbounds %struct.qdio_buffer_element, %struct.qdio_buffer_element* %215, i32 0, i32 1
  %217 = load %struct.qeth_hdr*, %struct.qeth_hdr** %216, align 8
  %218 = bitcast %struct.qeth_hdr* %217 to i8*
  store i8* %218, i8** %17, align 8
  br label %223

219:                                              ; preds = %191
  %220 = load i32, i32* %18, align 4
  %221 = load i32, i32* %14, align 4
  %222 = add nsw i32 %221, %220
  store i32 %222, i32* %14, align 4
  br label %223

223:                                              ; preds = %219, %212
  br label %163

224:                                              ; preds = %163
  %225 = load %struct.qdio_buffer_element*, %struct.qdio_buffer_element** %12, align 8
  %226 = load %struct.qdio_buffer_element**, %struct.qdio_buffer_element*** %9, align 8
  store %struct.qdio_buffer_element* %225, %struct.qdio_buffer_element** %226, align 8
  %227 = load i32, i32* %14, align 4
  %228 = load i32*, i32** %10, align 8
  store i32 %227, i32* %228, align 4
  %229 = load i32, i32* %20, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %242

231:                                              ; preds = %224
  %232 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %233 = load i32, i32* @rx_sg_skbs, align 4
  %234 = call i32 @QETH_CARD_STAT_INC(%struct.qeth_card* %232, i32 %233)
  %235 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %236 = load i32, i32* @rx_sg_frags, align 4
  %237 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %238 = call %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff* %237)
  %239 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @QETH_CARD_STAT_ADD(%struct.qeth_card* %235, i32 %236, i32 %240)
  br label %242

242:                                              ; preds = %231, %224
  %243 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %243, %struct.sk_buff** %6, align 8
  br label %254

244:                                              ; preds = %147
  %245 = call i64 (...) @net_ratelimit()
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %250

247:                                              ; preds = %244
  %248 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %249 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %248, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %250

250:                                              ; preds = %247, %244
  %251 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %252 = load i32, i32* @rx_dropped, align 4
  %253 = call i32 @QETH_CARD_STAT_INC(%struct.qeth_card* %251, i32 %252)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %254

254:                                              ; preds = %250, %242, %201, %90, %42
  %255 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %255
}

declare dso_local i64 @qeth_is_last_sbale(%struct.qdio_buffer_element*) #1

declare dso_local i32 @IS_OSN(%struct.qeth_card*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.sk_buff* @napi_alloc_skb(i32*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @qeth_create_skb_frag(%struct.qdio_buffer_element*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @QETH_CARD_HEX(%struct.qeth_card*, i32, %struct.qdio_buffer*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @QETH_CARD_STAT_INC(%struct.qeth_card*, i32) #1

declare dso_local i32 @QETH_CARD_STAT_ADD(%struct.qeth_card*, i32, i32) #1

declare dso_local %struct.TYPE_12__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @net_ratelimit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
