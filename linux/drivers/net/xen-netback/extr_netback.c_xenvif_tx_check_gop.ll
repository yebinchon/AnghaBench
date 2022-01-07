; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_tx_check_gop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_tx_check_gop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.gnttab_map_grant_ref = type { i32, i32, i32 }
%struct.gnttab_copy = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.skb_shared_info = type { i32, %struct.sk_buff*, i32* }
%struct.TYPE_8__ = type { i64 }

@.str = private unnamed_addr constant [65 x i8] c"Grant copy of header failed! status: %d pending_idx: %u ref: %u\0A\00", align 1
@XEN_NETIF_RSP_ERROR = common dso_local global i32 0, align 4
@XEN_NETIF_RSP_OKAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"Grant map of %d. frag failed! status: %d pending_idx: %u ref: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenvif_queue*, %struct.sk_buff*, %struct.gnttab_map_grant_ref**, %struct.gnttab_copy**)* @xenvif_tx_check_gop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenvif_tx_check_gop(%struct.xenvif_queue* %0, %struct.sk_buff* %1, %struct.gnttab_map_grant_ref** %2, %struct.gnttab_copy** %3) #0 {
  %5 = alloca %struct.xenvif_queue*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.gnttab_map_grant_ref**, align 8
  %8 = alloca %struct.gnttab_copy**, align 8
  %9 = alloca %struct.gnttab_map_grant_ref*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.skb_shared_info*, align 8
  %12 = alloca %struct.skb_shared_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.gnttab_map_grant_ref** %2, %struct.gnttab_map_grant_ref*** %7, align 8
  store %struct.gnttab_copy** %3, %struct.gnttab_copy*** %8, align 8
  %19 = load %struct.gnttab_map_grant_ref**, %struct.gnttab_map_grant_ref*** %7, align 8
  %20 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %19, align 8
  store %struct.gnttab_map_grant_ref* %20, %struct.gnttab_map_grant_ref** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call %struct.TYPE_8__* @XENVIF_TX_CB(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %10, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %25)
  store %struct.skb_shared_info* %26, %struct.skb_shared_info** %11, align 8
  store %struct.skb_shared_info* null, %struct.skb_shared_info** %12, align 8
  %27 = load %struct.skb_shared_info*, %struct.skb_shared_info** %11, align 8
  %28 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %4
  %33 = load %struct.skb_shared_info*, %struct.skb_shared_info** %11, align 8
  %34 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = call i64 @frag_get_pending_idx(i32* %36)
  %38 = load i64, i64* %10, align 8
  %39 = icmp eq i64 %37, %38
  br label %40

40:                                               ; preds = %32, %4
  %41 = phi i1 [ false, %4 ], [ %39, %32 ]
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %14, align 4
  %43 = load %struct.gnttab_copy**, %struct.gnttab_copy*** %8, align 8
  %44 = load %struct.gnttab_copy*, %struct.gnttab_copy** %43, align 8
  %45 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %16, align 4
  %47 = load i32, i32* %16, align 4
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %82

50:                                               ; preds = %40
  %51 = call i64 (...) @net_ratelimit()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %50
  %54 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %55 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.gnttab_copy**, %struct.gnttab_copy*** %8, align 8
  %60 = load %struct.gnttab_copy*, %struct.gnttab_copy** %59, align 8
  %61 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %10, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.gnttab_copy**, %struct.gnttab_copy*** %8, align 8
  %66 = load %struct.gnttab_copy*, %struct.gnttab_copy** %65, align 8
  %67 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = call i32 (i32, i8*, i32, i32, i64, ...) @netdev_dbg(i32 %58, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %64, i64 %71)
  br label %73

73:                                               ; preds = %53, %50
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %78 = load i64, i64* %10, align 8
  %79 = load i32, i32* @XEN_NETIF_RSP_ERROR, align 4
  %80 = call i32 @xenvif_idx_release(%struct.xenvif_queue* %77, i64 %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %73
  br label %82

82:                                               ; preds = %81, %40
  %83 = load %struct.gnttab_copy**, %struct.gnttab_copy*** %8, align 8
  %84 = load %struct.gnttab_copy*, %struct.gnttab_copy** %83, align 8
  %85 = getelementptr inbounds %struct.gnttab_copy, %struct.gnttab_copy* %84, i32 1
  store %struct.gnttab_copy* %85, %struct.gnttab_copy** %83, align 8
  br label %86

86:                                               ; preds = %242, %82
  store i32 0, i32* %15, align 4
  br label %87

87:                                               ; preds = %230, %86
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %235

91:                                               ; preds = %87
  %92 = load %struct.skb_shared_info*, %struct.skb_shared_info** %11, align 8
  %93 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = call i64 @frag_get_pending_idx(i32* %97)
  store i64 %98, i64* %10, align 8
  %99 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %9, align 8
  %100 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %18, align 4
  %102 = load i32, i32* %18, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = call i64 @likely(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %139

108:                                              ; preds = %91
  %109 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %9, align 8
  %112 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @xenvif_grant_handle_set(%struct.xenvif_queue* %109, i64 %110, i32 %113)
  %115 = load i32, i32* %16, align 4
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %138

118:                                              ; preds = %108
  %119 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %120 = load i64, i64* %10, align 8
  %121 = call i32 @xenvif_idx_unmap(%struct.xenvif_queue* %119, i64 %120)
  %122 = load i32, i32* %15, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %118
  %125 = load i32, i32* %14, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %129 = load i64, i64* %10, align 8
  %130 = load i32, i32* @XEN_NETIF_RSP_ERROR, align 4
  %131 = call i32 @xenvif_idx_release(%struct.xenvif_queue* %128, i64 %129, i32 %130)
  br label %137

132:                                              ; preds = %124, %118
  %133 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %134 = load i64, i64* %10, align 8
  %135 = load i32, i32* @XEN_NETIF_RSP_OKAY, align 4
  %136 = call i32 @xenvif_idx_release(%struct.xenvif_queue* %133, i64 %134, i32 %135)
  br label %137

137:                                              ; preds = %132, %127
  br label %138

138:                                              ; preds = %137, %108
  br label %230

139:                                              ; preds = %91
  %140 = call i64 (...) @net_ratelimit()
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %139
  %143 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %144 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %143, i32 0, i32 0
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %15, align 4
  %149 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %9, align 8
  %150 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i64, i64* %10, align 8
  %153 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %9, align 8
  %154 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i32 (i32, i8*, i32, i32, i64, ...) @netdev_dbg(i32 %147, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i32 %148, i32 %151, i64 %152, i32 %155)
  br label %157

157:                                              ; preds = %142, %139
  %158 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %159 = load i64, i64* %10, align 8
  %160 = load i32, i32* @XEN_NETIF_RSP_ERROR, align 4
  %161 = call i32 @xenvif_idx_release(%struct.xenvif_queue* %158, i64 %159, i32 %160)
  %162 = load i32, i32* %16, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %157
  br label %230

165:                                              ; preds = %157
  %166 = load i32, i32* %14, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %176, label %168

168:                                              ; preds = %165
  %169 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %170 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %171 = call %struct.TYPE_8__* @XENVIF_TX_CB(%struct.sk_buff* %170)
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i32, i32* @XEN_NETIF_RSP_OKAY, align 4
  %175 = call i32 @xenvif_idx_release(%struct.xenvif_queue* %169, i64 %173, i32 %174)
  br label %176

176:                                              ; preds = %168, %165
  store i32 0, i32* %17, align 4
  br label %177

177:                                              ; preds = %196, %176
  %178 = load i32, i32* %17, align 4
  %179 = load i32, i32* %15, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %199

181:                                              ; preds = %177
  %182 = load %struct.skb_shared_info*, %struct.skb_shared_info** %11, align 8
  %183 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %17, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  %188 = call i64 @frag_get_pending_idx(i32* %187)
  store i64 %188, i64* %10, align 8
  %189 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %190 = load i64, i64* %10, align 8
  %191 = call i32 @xenvif_idx_unmap(%struct.xenvif_queue* %189, i64 %190)
  %192 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %193 = load i64, i64* %10, align 8
  %194 = load i32, i32* @XEN_NETIF_RSP_OKAY, align 4
  %195 = call i32 @xenvif_idx_release(%struct.xenvif_queue* %192, i64 %193, i32 %194)
  br label %196

196:                                              ; preds = %181
  %197 = load i32, i32* %17, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %17, align 4
  br label %177

199:                                              ; preds = %177
  %200 = load %struct.skb_shared_info*, %struct.skb_shared_info** %12, align 8
  %201 = icmp ne %struct.skb_shared_info* %200, null
  br i1 %201, label %202, label %228

202:                                              ; preds = %199
  store i32 0, i32* %17, align 4
  br label %203

203:                                              ; preds = %224, %202
  %204 = load i32, i32* %17, align 4
  %205 = load %struct.skb_shared_info*, %struct.skb_shared_info** %12, align 8
  %206 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = icmp slt i32 %204, %207
  br i1 %208, label %209, label %227

209:                                              ; preds = %203
  %210 = load %struct.skb_shared_info*, %struct.skb_shared_info** %12, align 8
  %211 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = load i32, i32* %17, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %212, i64 %214
  %216 = call i64 @frag_get_pending_idx(i32* %215)
  store i64 %216, i64* %10, align 8
  %217 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %218 = load i64, i64* %10, align 8
  %219 = call i32 @xenvif_idx_unmap(%struct.xenvif_queue* %217, i64 %218)
  %220 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %221 = load i64, i64* %10, align 8
  %222 = load i32, i32* @XEN_NETIF_RSP_OKAY, align 4
  %223 = call i32 @xenvif_idx_release(%struct.xenvif_queue* %220, i64 %221, i32 %222)
  br label %224

224:                                              ; preds = %209
  %225 = load i32, i32* %17, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %17, align 4
  br label %203

227:                                              ; preds = %203
  br label %228

228:                                              ; preds = %227, %199
  %229 = load i32, i32* %18, align 4
  store i32 %229, i32* %16, align 4
  br label %230

230:                                              ; preds = %228, %164, %138
  %231 = load i32, i32* %15, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %15, align 4
  %233 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %9, align 8
  %234 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %233, i32 1
  store %struct.gnttab_map_grant_ref* %234, %struct.gnttab_map_grant_ref** %9, align 8
  br label %87

235:                                              ; preds = %87
  %236 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %237 = call i64 @skb_has_frag_list(%struct.sk_buff* %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %253

239:                                              ; preds = %235
  %240 = load %struct.skb_shared_info*, %struct.skb_shared_info** %12, align 8
  %241 = icmp ne %struct.skb_shared_info* %240, null
  br i1 %241, label %253, label %242

242:                                              ; preds = %239
  %243 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %244 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %243)
  store %struct.skb_shared_info* %244, %struct.skb_shared_info** %12, align 8
  %245 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %246 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %245)
  %247 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %246, i32 0, i32 1
  %248 = load %struct.sk_buff*, %struct.sk_buff** %247, align 8
  %249 = call %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff* %248)
  store %struct.skb_shared_info* %249, %struct.skb_shared_info** %11, align 8
  %250 = load %struct.skb_shared_info*, %struct.skb_shared_info** %11, align 8
  %251 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  store i32 %252, i32* %13, align 4
  br label %86

253:                                              ; preds = %239, %235
  %254 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %9, align 8
  %255 = load %struct.gnttab_map_grant_ref**, %struct.gnttab_map_grant_ref*** %7, align 8
  store %struct.gnttab_map_grant_ref* %254, %struct.gnttab_map_grant_ref** %255, align 8
  %256 = load i32, i32* %16, align 4
  ret i32 %256
}

declare dso_local %struct.TYPE_8__* @XENVIF_TX_CB(%struct.sk_buff*) #1

declare dso_local %struct.skb_shared_info* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @frag_get_pending_idx(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32, i64, ...) #1

declare dso_local i32 @xenvif_idx_release(%struct.xenvif_queue*, i64, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @xenvif_grant_handle_set(%struct.xenvif_queue*, i64, i32) #1

declare dso_local i32 @xenvif_idx_unmap(%struct.xenvif_queue*, i64) #1

declare dso_local i64 @skb_has_frag_list(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
