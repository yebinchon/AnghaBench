; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_tx_build_gops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_tx_build_gops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { i64, i64*, %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref*, %struct.TYPE_21__, i32, i32, %struct.TYPE_29__*, %struct.TYPE_18__* }
%struct.gnttab_map_grant_ref = type { i32, i32, %struct.TYPE_28__, %struct.TYPE_26__ }
%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32, i32, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64 }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.sk_buff = type { i32 }
%struct.xen_netif_tx_request = type { i64, i32, i64, i32 }
%struct.xen_netif_extra_info = type { %struct.TYPE_24__, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_22__ }
%struct.TYPE_23__ = type { i32, i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32* }
%struct.TYPE_20__ = type { i64 }

@XEN_NETBK_LEGACY_SLOTS_MAX = common dso_local global i32 0, align 4
@XEN_NETIF_EXTRA_TYPE_MAX = common dso_local global i32 0, align 4
@XEN_NETIF_TX_RING_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"Impossible number of requests. req_prod %d, req_cons %d, size %ld\0A\00", align 1
@XEN_NETTXF_extra_info = common dso_local global i32 0, align 4
@XEN_NETIF_EXTRA_TYPE_MCAST_ADD = common dso_local global i32 0, align 4
@XEN_NETIF_RSP_OKAY = common dso_local global i32 0, align 4
@XEN_NETIF_RSP_ERROR = common dso_local global i32 0, align 4
@XEN_NETIF_EXTRA_TYPE_MCAST_DEL = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Bad packet size: %d\0A\00", align 1
@XEN_PAGE_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"txreq.offset: %u, size: %u, end: %lu\0A\00", align 1
@XEN_PAGE_MASK = common dso_local global i32 0, align 4
@XEN_NETBACK_TX_COPY_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"Can't allocate a skb in start_xmit.\0A\00", align 1
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"Can't allocate the frag_list skb.\0A\00", align 1
@XEN_NETIF_EXTRA_TYPE_GSO = common dso_local global i32 0, align 4
@XEN_NETIF_EXTRA_TYPE_HASH = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_NONE = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L3 = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L4 = common dso_local global i32 0, align 4
@DOMID_SELF = common dso_local global i32 0, align 4
@GNTCOPY_source_gref = common dso_local global i32 0, align 4
@INVALID_PENDING_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenvif_queue*, i32, i32*, i32*)* @xenvif_tx_build_gops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenvif_tx_build_gops(%struct.xenvif_queue* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.xenvif_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.gnttab_map_grant_ref*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.xen_netif_tx_request, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.xen_netif_extra_info*, align 8
  %26 = alloca %struct.xen_netif_extra_info*, align 8
  %27 = alloca %struct.xen_netif_extra_info*, align 8
  %28 = alloca %struct.xen_netif_extra_info*, align 8
  %29 = alloca i32, align 4
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %30 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %31 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %30, i32 0, i32 2
  %32 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %31, align 8
  store %struct.gnttab_map_grant_ref* %32, %struct.gnttab_map_grant_ref** %9, align 8
  br label %33

33:                                               ; preds = %665, %662, %4
  %34 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %35 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %34, i32 0, i32 5
  %36 = call i32 @skb_queue_len(i32* %35)
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %666

39:                                               ; preds = %33
  %40 = load i32, i32* @XEN_NETBK_LEGACY_SLOTS_MAX, align 4
  %41 = zext i32 %40 to i64
  %42 = call i8* @llvm.stacksave()
  store i8* %42, i8** %15, align 8
  %43 = alloca %struct.xen_netif_tx_request, i64 %41, align 16
  store i64 %41, i64* %16, align 8
  %44 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_MAX, align 4
  %45 = sub nsw i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = alloca %struct.xen_netif_extra_info, i64 %46, align 16
  store i64 %46, i64* %17, align 8
  %48 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %49 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %55 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub nsw i64 %53, %57
  %59 = load i64, i64* @XEN_NETIF_TX_RING_SIZE, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %83

61:                                               ; preds = %39
  %62 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %63 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %62, i32 0, i32 8
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %68 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_30__*, %struct.TYPE_30__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %74 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @XEN_NETIF_TX_RING_SIZE, align 8
  %78 = call i32 (i32, i8*, ...) @netdev_err(i32 %66, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i64 %72, i64 %76, i64 %77)
  %79 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %80 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %79, i32 0, i32 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %80, align 8
  %82 = call i32 @xenvif_fatal_tx_err(%struct.TYPE_18__* %81)
  store i32 3, i32* %24, align 4
  br label %662

83:                                               ; preds = %39
  %84 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %85 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %84, i32 0, i32 4
  %86 = call i32 @RING_HAS_UNCONSUMED_REQUESTS(%struct.TYPE_21__* %85)
  store i32 %86, i32* %21, align 4
  %87 = load i32, i32* %21, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %83
  store i32 3, i32* %24, align 4
  br label %662

90:                                               ; preds = %83
  %91 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %92 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = inttoptr i64 %94 to i8*
  store i8* %95, i8** %20, align 8
  %96 = call i32 (...) @rmb()
  %97 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %98 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %97, i32 0, i32 4
  %99 = load i8*, i8** %20, align 8
  %100 = call i32 @RING_COPY_REQUEST(%struct.TYPE_21__* %98, i8* %99, %struct.xen_netif_tx_request* %14)
  %101 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %14, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %104 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %102, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %90
  %108 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %109 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %14, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = call i64 @tx_credit_exceeded(%struct.xenvif_queue* %108, i64 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 3, i32* %24, align 4
  br label %662

114:                                              ; preds = %107, %90
  %115 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %14, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %118 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %119, %116
  store i64 %120, i64* %118, align 8
  %121 = load i32, i32* %21, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %21, align 4
  %123 = load i8*, i8** %20, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %20, align 8
  %125 = ptrtoint i8* %124 to i64
  %126 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %127 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  store i64 %125, i64* %128, align 8
  %129 = mul nuw i64 32, %46
  %130 = trunc i64 %129 to i32
  %131 = call i32 @memset(%struct.xen_netif_extra_info* %47, i32 0, i32 %130)
  store i32 0, i32* %18, align 4
  %132 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %14, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @XEN_NETTXF_extra_info, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %153

137:                                              ; preds = %114
  %138 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %139 = load i32, i32* %21, align 4
  %140 = call i32 @xenvif_get_extras(%struct.xenvif_queue* %138, %struct.xen_netif_extra_info* %47, i32* %18, i32 %139)
  store i32 %140, i32* %21, align 4
  %141 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %142 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %141, i32 0, i32 4
  %143 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to i8*
  store i8* %145, i8** %20, align 8
  %146 = load i32, i32* %21, align 4
  %147 = icmp slt i32 %146, 0
  %148 = zext i1 %147 to i32
  %149 = call i64 @unlikely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %137
  store i32 3, i32* %24, align 4
  br label %662

152:                                              ; preds = %137
  br label %153

153:                                              ; preds = %152, %114
  %154 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_MCAST_ADD, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %47, i64 %156
  %158 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %188

161:                                              ; preds = %153
  %162 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_MCAST_ADD, align 4
  %163 = sub nsw i32 %162, 1
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %47, i64 %164
  store %struct.xen_netif_extra_info* %165, %struct.xen_netif_extra_info** %25, align 8
  %166 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %167 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %166, i32 0, i32 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  %169 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %25, align 8
  %170 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @xenvif_mcast_add(%struct.TYPE_18__* %168, i32 %173)
  store i32 %174, i32* %12, align 4
  %175 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %176 = load i32, i32* %18, align 4
  %177 = load i32, i32* %12, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %161
  %180 = load i32, i32* @XEN_NETIF_RSP_OKAY, align 4
  br label %183

181:                                              ; preds = %161
  %182 = load i32, i32* @XEN_NETIF_RSP_ERROR, align 4
  br label %183

183:                                              ; preds = %181, %179
  %184 = phi i32 [ %180, %179 ], [ %182, %181 ]
  %185 = call i32 @make_tx_response(%struct.xenvif_queue* %175, %struct.xen_netif_tx_request* %14, i32 %176, i32 %184)
  %186 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %187 = call i32 @push_tx_responses(%struct.xenvif_queue* %186)
  store i32 2, i32* %24, align 4
  br label %662

188:                                              ; preds = %153
  %189 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_MCAST_DEL, align 4
  %190 = sub nsw i32 %189, 1
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %47, i64 %191
  %193 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %192, i32 0, i32 1
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %216

196:                                              ; preds = %188
  %197 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_MCAST_DEL, align 4
  %198 = sub nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %47, i64 %199
  store %struct.xen_netif_extra_info* %200, %struct.xen_netif_extra_info** %26, align 8
  %201 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %202 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %201, i32 0, i32 8
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %202, align 8
  %204 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %26, align 8
  %205 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @xenvif_mcast_del(%struct.TYPE_18__* %203, i32 %208)
  %210 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %211 = load i32, i32* %18, align 4
  %212 = load i32, i32* @XEN_NETIF_RSP_OKAY, align 4
  %213 = call i32 @make_tx_response(%struct.xenvif_queue* %210, %struct.xen_netif_tx_request* %14, i32 %211, i32 %212)
  %214 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %215 = call i32 @push_tx_responses(%struct.xenvif_queue* %214)
  store i32 2, i32* %24, align 4
  br label %662

216:                                              ; preds = %188
  %217 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %218 = load i32, i32* %18, align 4
  %219 = load i32, i32* %21, align 4
  %220 = call i32 @xenvif_count_requests(%struct.xenvif_queue* %217, %struct.xen_netif_tx_request* %14, i32 %218, %struct.xen_netif_tx_request* %43, i32 %219)
  store i32 %220, i32* %12, align 4
  %221 = load i32, i32* %12, align 4
  %222 = icmp slt i32 %221, 0
  %223 = zext i1 %222 to i32
  %224 = call i64 @unlikely(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %216
  store i32 3, i32* %24, align 4
  br label %662

227:                                              ; preds = %216
  %228 = load i32, i32* %12, align 4
  %229 = load i8*, i8** %20, align 8
  %230 = sext i32 %228 to i64
  %231 = getelementptr i8, i8* %229, i64 %230
  store i8* %231, i8** %20, align 8
  %232 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %14, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @ETH_HLEN, align 8
  %235 = icmp slt i64 %233, %234
  %236 = zext i1 %235 to i32
  %237 = call i64 @unlikely(i32 %236)
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %252

239:                                              ; preds = %227
  %240 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %241 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %240, i32 0, i32 8
  %242 = load %struct.TYPE_18__*, %struct.TYPE_18__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %14, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %244, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %246)
  %248 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %249 = load i32, i32* %18, align 4
  %250 = load i8*, i8** %20, align 8
  %251 = call i32 @xenvif_tx_err(%struct.xenvif_queue* %248, %struct.xen_netif_tx_request* %14, i32 %249, i8* %250)
  store i32 3, i32* %24, align 4
  br label %662

252:                                              ; preds = %227
  %253 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %14, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %14, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = add nsw i64 %254, %256
  %258 = load i64, i64* @XEN_PAGE_SIZE, align 8
  %259 = icmp sgt i64 %257, %258
  %260 = zext i1 %259 to i32
  %261 = call i64 @unlikely(i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %287

263:                                              ; preds = %252
  %264 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %265 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %264, i32 0, i32 8
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %14, i32 0, i32 2
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %14, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %14, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = load i32, i32* @XEN_PAGE_MASK, align 4
  %276 = xor i32 %275, -1
  %277 = sext i32 %276 to i64
  %278 = and i64 %274, %277
  %279 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %14, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = add i64 %278, %280
  %282 = call i32 (i32, i8*, ...) @netdev_err(i32 %268, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %270, i64 %272, i64 %281)
  %283 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %284 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %283, i32 0, i32 8
  %285 = load %struct.TYPE_18__*, %struct.TYPE_18__** %284, align 8
  %286 = call i32 @xenvif_fatal_tx_err(%struct.TYPE_18__* %285)
  store i32 3, i32* %24, align 4
  br label %662

287:                                              ; preds = %252
  %288 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %289 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %288, i32 0, i32 6
  %290 = load i32, i32* %289, align 4
  %291 = call i64 @pending_index(i32 %290)
  store i64 %291, i64* %23, align 8
  %292 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %293 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %292, i32 0, i32 1
  %294 = load i64*, i64** %293, align 8
  %295 = load i64, i64* %23, align 8
  %296 = getelementptr inbounds i64, i64* %294, i64 %295
  %297 = load i64, i64* %296, align 8
  store i64 %297, i64* %19, align 8
  %298 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %14, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i32, i32* @XEN_NETBACK_TX_COPY_LEN, align 4
  %301 = zext i32 %300 to i64
  %302 = icmp sgt i64 %299, %301
  br i1 %302, label %303, label %310

303:                                              ; preds = %287
  %304 = load i32, i32* %12, align 4
  %305 = load i32, i32* @XEN_NETBK_LEGACY_SLOTS_MAX, align 4
  %306 = icmp slt i32 %304, %305
  br i1 %306, label %307, label %310

307:                                              ; preds = %303
  %308 = load i32, i32* @XEN_NETBACK_TX_COPY_LEN, align 4
  %309 = zext i32 %308 to i64
  br label %313

310:                                              ; preds = %303, %287
  %311 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %14, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  br label %313

313:                                              ; preds = %310, %307
  %314 = phi i64 [ %309, %307 ], [ %312, %310 ]
  %315 = trunc i64 %314 to i32
  store i32 %315, i32* %22, align 4
  %316 = load i32, i32* %22, align 4
  %317 = call %struct.sk_buff* @xenvif_alloc_skb(i32 %316)
  store %struct.sk_buff* %317, %struct.sk_buff** %10, align 8
  %318 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %319 = icmp eq %struct.sk_buff* %318, null
  %320 = zext i1 %319 to i32
  %321 = call i64 @unlikely(i32 %320)
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %334

323:                                              ; preds = %313
  %324 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %325 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %324, i32 0, i32 8
  %326 = load %struct.TYPE_18__*, %struct.TYPE_18__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %328, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %330 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %331 = load i32, i32* %18, align 4
  %332 = load i8*, i8** %20, align 8
  %333 = call i32 @xenvif_tx_err(%struct.xenvif_queue* %330, %struct.xen_netif_tx_request* %14, i32 %331, i8* %332)
  store i32 3, i32* %24, align 4
  br label %662

334:                                              ; preds = %313
  %335 = load i32, i32* %12, align 4
  %336 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %337 = call %struct.TYPE_19__* @skb_shinfo(%struct.sk_buff* %336)
  %338 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %337, i32 0, i32 0
  store i32 %335, i32* %338, align 8
  %339 = load i32, i32* %22, align 4
  %340 = zext i32 %339 to i64
  %341 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %14, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = icmp slt i64 %340, %342
  br i1 %343, label %344, label %350

344:                                              ; preds = %334
  %345 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %346 = call %struct.TYPE_19__* @skb_shinfo(%struct.sk_buff* %345)
  %347 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %347, align 8
  br label %350

350:                                              ; preds = %344, %334
  store i32 0, i32* %13, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  %351 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %352 = call %struct.TYPE_19__* @skb_shinfo(%struct.sk_buff* %351)
  %353 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %356 = icmp ugt i32 %354, %355
  br i1 %356, label %357, label %400

357:                                              ; preds = %350
  %358 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %359 = call %struct.TYPE_19__* @skb_shinfo(%struct.sk_buff* %358)
  %360 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %359, i32 0, i32 0
  %361 = load i32, i32* %360, align 8
  %362 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %363 = sub i32 %361, %362
  store i32 %363, i32* %13, align 4
  %364 = load i32, i32* %13, align 4
  %365 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %366 = icmp ugt i32 %364, %365
  %367 = zext i1 %366 to i32
  %368 = call i32 @BUG_ON(i32 %367)
  %369 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %370 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %371 = call %struct.TYPE_19__* @skb_shinfo(%struct.sk_buff* %370)
  %372 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %371, i32 0, i32 0
  store i32 %369, i32* %372, align 8
  %373 = call %struct.sk_buff* @xenvif_alloc_skb(i32 0)
  store %struct.sk_buff* %373, %struct.sk_buff** %11, align 8
  %374 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %375 = icmp eq %struct.sk_buff* %374, null
  %376 = zext i1 %375 to i32
  %377 = call i64 @unlikely(i32 %376)
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %399

379:                                              ; preds = %357
  %380 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %381 = call %struct.TYPE_19__* @skb_shinfo(%struct.sk_buff* %380)
  %382 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %381, i32 0, i32 0
  store i32 0, i32* %382, align 8
  %383 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %384 = call i32 @kfree_skb(%struct.sk_buff* %383)
  %385 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %386 = load i32, i32* %18, align 4
  %387 = load i8*, i8** %20, align 8
  %388 = call i32 @xenvif_tx_err(%struct.xenvif_queue* %385, %struct.xen_netif_tx_request* %14, i32 %386, i8* %387)
  %389 = call i64 (...) @net_ratelimit()
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %398

391:                                              ; preds = %379
  %392 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %393 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %392, i32 0, i32 8
  %394 = load %struct.TYPE_18__*, %struct.TYPE_18__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %394, i32 0, i32 1
  %396 = load i32, i32* %395, align 4
  %397 = call i32 (i32, i8*, ...) @netdev_err(i32 %396, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %398

398:                                              ; preds = %391, %379
  store i32 3, i32* %24, align 4
  br label %662

399:                                              ; preds = %357
  br label %400

400:                                              ; preds = %399, %350
  %401 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_GSO, align 4
  %402 = sub nsw i32 %401, 1
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %47, i64 %403
  %405 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %404, i32 0, i32 1
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %408, label %429

408:                                              ; preds = %400
  %409 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_GSO, align 4
  %410 = sub nsw i32 %409, 1
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %47, i64 %411
  store %struct.xen_netif_extra_info* %412, %struct.xen_netif_extra_info** %27, align 8
  %413 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %414 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %413, i32 0, i32 8
  %415 = load %struct.TYPE_18__*, %struct.TYPE_18__** %414, align 8
  %416 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %417 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %27, align 8
  %418 = call i64 @xenvif_set_skb_gso(%struct.TYPE_18__* %415, %struct.sk_buff* %416, %struct.xen_netif_extra_info* %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %428

420:                                              ; preds = %408
  %421 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %422 = call %struct.TYPE_19__* @skb_shinfo(%struct.sk_buff* %421)
  %423 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %422, i32 0, i32 0
  store i32 0, i32* %423, align 8
  %424 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %425 = call i32 @kfree_skb(%struct.sk_buff* %424)
  %426 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %427 = call i32 @kfree_skb(%struct.sk_buff* %426)
  store i32 3, i32* %24, align 4
  br label %662

428:                                              ; preds = %408
  br label %429

429:                                              ; preds = %428, %400
  %430 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_HASH, align 4
  %431 = sub nsw i32 %430, 1
  %432 = sext i32 %431 to i64
  %433 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %47, i64 %432
  %434 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %433, i32 0, i32 1
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %469

437:                                              ; preds = %429
  %438 = load i32, i32* @PKT_HASH_TYPE_NONE, align 4
  store i32 %438, i32* %29, align 4
  %439 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_HASH, align 4
  %440 = sub nsw i32 %439, 1
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %47, i64 %441
  store %struct.xen_netif_extra_info* %442, %struct.xen_netif_extra_info** %28, align 8
  %443 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %28, align 8
  %444 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 8
  switch i32 %447, label %452 [
    i32 131, label %448
    i32 129, label %448
    i32 130, label %450
    i32 128, label %450
  ]

448:                                              ; preds = %437, %437
  %449 = load i32, i32* @PKT_HASH_TYPE_L3, align 4
  store i32 %449, i32* %29, align 4
  br label %453

450:                                              ; preds = %437, %437
  %451 = load i32, i32* @PKT_HASH_TYPE_L4, align 4
  store i32 %451, i32* %29, align 4
  br label %453

452:                                              ; preds = %437
  br label %453

453:                                              ; preds = %452, %450, %448
  %454 = load i32, i32* %29, align 4
  %455 = load i32, i32* @PKT_HASH_TYPE_NONE, align 4
  %456 = icmp ne i32 %454, %455
  br i1 %456, label %457, label %468

457:                                              ; preds = %453
  %458 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %459 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %28, align 8
  %460 = getelementptr inbounds %struct.xen_netif_extra_info, %struct.xen_netif_extra_info* %459, i32 0, i32 0
  %461 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %461, i32 0, i32 1
  %463 = load i64, i64* %462, align 8
  %464 = inttoptr i64 %463 to i32*
  %465 = load i32, i32* %464, align 4
  %466 = load i32, i32* %29, align 4
  %467 = call i32 @skb_set_hash(%struct.sk_buff* %458, i32 %465, i32 %466)
  br label %468

468:                                              ; preds = %457, %453
  br label %469

469:                                              ; preds = %468, %429
  %470 = load i64, i64* %19, align 8
  %471 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %472 = call %struct.TYPE_20__* @XENVIF_TX_CB(%struct.sk_buff* %471)
  %473 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %472, i32 0, i32 0
  store i64 %470, i64* %473, align 8
  %474 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %475 = load i32, i32* %22, align 4
  %476 = call i32 @__skb_put(%struct.sk_buff* %474, i32 %475)
  %477 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %14, i32 0, i32 3
  %478 = load i32, i32* %477, align 8
  %479 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %480 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %479, i32 0, i32 3
  %481 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %480, align 8
  %482 = load i32*, i32** %7, align 8
  %483 = load i32, i32* %482, align 4
  %484 = zext i32 %483 to i64
  %485 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %481, i64 %484
  %486 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %485, i32 0, i32 3
  %487 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %486, i32 0, i32 2
  %488 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %487, i32 0, i32 0
  store i32 %478, i32* %488, align 4
  %489 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %490 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %489, i32 0, i32 8
  %491 = load %struct.TYPE_18__*, %struct.TYPE_18__** %490, align 8
  %492 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %491, i32 0, i32 0
  %493 = load i32, i32* %492, align 4
  %494 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %495 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %494, i32 0, i32 3
  %496 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %495, align 8
  %497 = load i32*, i32** %7, align 8
  %498 = load i32, i32* %497, align 4
  %499 = zext i32 %498 to i64
  %500 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %496, i64 %499
  %501 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %500, i32 0, i32 3
  %502 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %501, i32 0, i32 1
  store i32 %493, i32* %502, align 4
  %503 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %14, i32 0, i32 2
  %504 = load i64, i64* %503, align 8
  %505 = trunc i64 %504 to i32
  %506 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %507 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %506, i32 0, i32 3
  %508 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %507, align 8
  %509 = load i32*, i32** %7, align 8
  %510 = load i32, i32* %509, align 4
  %511 = zext i32 %510 to i64
  %512 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %508, i64 %511
  %513 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %512, i32 0, i32 3
  %514 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %513, i32 0, i32 0
  store i32 %505, i32* %514, align 4
  %515 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %516 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 4
  %518 = call i32 @virt_to_gfn(i32 %517)
  %519 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %520 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %519, i32 0, i32 3
  %521 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %520, align 8
  %522 = load i32*, i32** %7, align 8
  %523 = load i32, i32* %522, align 4
  %524 = zext i32 %523 to i64
  %525 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %521, i64 %524
  %526 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %525, i32 0, i32 2
  %527 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %526, i32 0, i32 2
  %528 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %527, i32 0, i32 0
  store i32 %518, i32* %528, align 4
  %529 = load i32, i32* @DOMID_SELF, align 4
  %530 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %531 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %530, i32 0, i32 3
  %532 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %531, align 8
  %533 = load i32*, i32** %7, align 8
  %534 = load i32, i32* %533, align 4
  %535 = zext i32 %534 to i64
  %536 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %532, i64 %535
  %537 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %536, i32 0, i32 2
  %538 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %537, i32 0, i32 1
  store i32 %529, i32* %538, align 4
  %539 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %540 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %539, i32 0, i32 0
  %541 = load i32, i32* %540, align 4
  %542 = call i32 @offset_in_page(i32 %541)
  %543 = load i32, i32* @XEN_PAGE_MASK, align 4
  %544 = xor i32 %543, -1
  %545 = and i32 %542, %544
  %546 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %547 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %546, i32 0, i32 3
  %548 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %547, align 8
  %549 = load i32*, i32** %7, align 8
  %550 = load i32, i32* %549, align 4
  %551 = zext i32 %550 to i64
  %552 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %548, i64 %551
  %553 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %552, i32 0, i32 2
  %554 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %553, i32 0, i32 0
  store i32 %545, i32* %554, align 4
  %555 = load i32, i32* %22, align 4
  %556 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %557 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %556, i32 0, i32 3
  %558 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %557, align 8
  %559 = load i32*, i32** %7, align 8
  %560 = load i32, i32* %559, align 4
  %561 = zext i32 %560 to i64
  %562 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %558, i64 %561
  %563 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %562, i32 0, i32 0
  store i32 %555, i32* %563, align 4
  %564 = load i32, i32* @GNTCOPY_source_gref, align 4
  %565 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %566 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %565, i32 0, i32 3
  %567 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %566, align 8
  %568 = load i32*, i32** %7, align 8
  %569 = load i32, i32* %568, align 4
  %570 = zext i32 %569 to i64
  %571 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %567, i64 %570
  %572 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %571, i32 0, i32 1
  store i32 %564, i32* %572, align 4
  %573 = load i32*, i32** %7, align 8
  %574 = load i32, i32* %573, align 4
  %575 = add i32 %574, 1
  store i32 %575, i32* %573, align 4
  %576 = load i32, i32* %22, align 4
  %577 = zext i32 %576 to i64
  %578 = getelementptr inbounds %struct.xen_netif_tx_request, %struct.xen_netif_tx_request* %14, i32 0, i32 0
  %579 = load i64, i64* %578, align 8
  %580 = icmp slt i64 %577, %579
  br i1 %580, label %581, label %596

581:                                              ; preds = %469
  %582 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %583 = call %struct.TYPE_19__* @skb_shinfo(%struct.sk_buff* %582)
  %584 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %583, i32 0, i32 1
  %585 = load i32*, i32** %584, align 8
  %586 = getelementptr inbounds i32, i32* %585, i64 0
  %587 = load i64, i64* %19, align 8
  %588 = call i32 @frag_set_pending_idx(i32* %586, i64 %587)
  %589 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %590 = load i64, i64* %19, align 8
  %591 = load i32, i32* %18, align 4
  %592 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %9, align 8
  %593 = call i32 @xenvif_tx_create_map_op(%struct.xenvif_queue* %589, i64 %590, %struct.xen_netif_tx_request* %14, i32 %591, %struct.gnttab_map_grant_ref* %592)
  %594 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %9, align 8
  %595 = getelementptr inbounds %struct.gnttab_map_grant_ref, %struct.gnttab_map_grant_ref* %594, i32 1
  store %struct.gnttab_map_grant_ref* %595, %struct.gnttab_map_grant_ref** %9, align 8
  br label %618

596:                                              ; preds = %469
  %597 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %598 = call %struct.TYPE_19__* @skb_shinfo(%struct.sk_buff* %597)
  %599 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %598, i32 0, i32 1
  %600 = load i32*, i32** %599, align 8
  %601 = getelementptr inbounds i32, i32* %600, i64 0
  %602 = load i64, i64* @INVALID_PENDING_IDX, align 8
  %603 = call i32 @frag_set_pending_idx(i32* %601, i64 %602)
  %604 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %605 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %604, i32 0, i32 7
  %606 = load %struct.TYPE_29__*, %struct.TYPE_29__** %605, align 8
  %607 = load i64, i64* %19, align 8
  %608 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %606, i64 %607
  %609 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %608, i32 0, i32 1
  %610 = call i32 @memcpy(i32* %609, %struct.xen_netif_tx_request* %14, i32 32)
  %611 = load i32, i32* %18, align 4
  %612 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %613 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %612, i32 0, i32 7
  %614 = load %struct.TYPE_29__*, %struct.TYPE_29__** %613, align 8
  %615 = load i64, i64* %19, align 8
  %616 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %614, i64 %615
  %617 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %616, i32 0, i32 0
  store i32 %611, i32* %617, align 4
  br label %618

618:                                              ; preds = %596, %581
  %619 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %620 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %619, i32 0, i32 6
  %621 = load i32, i32* %620, align 4
  %622 = add nsw i32 %621, 1
  store i32 %622, i32* %620, align 4
  %623 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %624 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %625 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %9, align 8
  %626 = load i32, i32* %13, align 4
  %627 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %628 = call %struct.gnttab_map_grant_ref* @xenvif_get_requests(%struct.xenvif_queue* %623, %struct.sk_buff* %624, %struct.xen_netif_tx_request* %43, %struct.gnttab_map_grant_ref* %625, i32 %626, %struct.sk_buff* %627)
  store %struct.gnttab_map_grant_ref* %628, %struct.gnttab_map_grant_ref** %9, align 8
  %629 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %630 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %629, i32 0, i32 5
  %631 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %632 = call i32 @__skb_queue_tail(i32* %630, %struct.sk_buff* %631)
  %633 = load i8*, i8** %20, align 8
  %634 = ptrtoint i8* %633 to i64
  %635 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %636 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %635, i32 0, i32 4
  %637 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %636, i32 0, i32 0
  store i64 %634, i64* %637, align 8
  %638 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %9, align 8
  %639 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %640 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %639, i32 0, i32 2
  %641 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %640, align 8
  %642 = ptrtoint %struct.gnttab_map_grant_ref* %638 to i64
  %643 = ptrtoint %struct.gnttab_map_grant_ref* %641 to i64
  %644 = sub i64 %642, %643
  %645 = sdiv exact i64 %644, 32
  %646 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %647 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %646, i32 0, i32 2
  %648 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %647, align 8
  %649 = call i32 @ARRAY_SIZE(%struct.gnttab_map_grant_ref* %648)
  %650 = zext i32 %649 to i64
  %651 = icmp sge i64 %645, %650
  br i1 %651, label %660, label %652

652:                                              ; preds = %618
  %653 = load i32*, i32** %7, align 8
  %654 = load i32, i32* %653, align 4
  %655 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %656 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %655, i32 0, i32 3
  %657 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %656, align 8
  %658 = call i32 @ARRAY_SIZE(%struct.gnttab_map_grant_ref* %657)
  %659 = icmp uge i32 %654, %658
  br i1 %659, label %660, label %661

660:                                              ; preds = %652, %618
  store i32 3, i32* %24, align 4
  br label %662

661:                                              ; preds = %652
  store i32 0, i32* %24, align 4
  br label %662

662:                                              ; preds = %661, %660, %420, %398, %323, %263, %239, %226, %196, %183, %151, %113, %89, %61
  %663 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %663)
  %664 = load i32, i32* %24, align 4
  switch i32 %664, label %677 [
    i32 0, label %665
    i32 3, label %666
    i32 2, label %33
  ]

665:                                              ; preds = %662
  br label %33

666:                                              ; preds = %662, %33
  %667 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %9, align 8
  %668 = load %struct.xenvif_queue*, %struct.xenvif_queue** %5, align 8
  %669 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %668, i32 0, i32 2
  %670 = load %struct.gnttab_map_grant_ref*, %struct.gnttab_map_grant_ref** %669, align 8
  %671 = ptrtoint %struct.gnttab_map_grant_ref* %667 to i64
  %672 = ptrtoint %struct.gnttab_map_grant_ref* %670 to i64
  %673 = sub i64 %671, %672
  %674 = sdiv exact i64 %673, 32
  %675 = trunc i64 %674 to i32
  %676 = load i32*, i32** %8, align 8
  store i32 %675, i32* %676, align 4
  ret void

677:                                              ; preds = %662
  unreachable
}

declare dso_local i32 @skb_queue_len(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i32 @xenvif_fatal_tx_err(%struct.TYPE_18__*) #1

declare dso_local i32 @RING_HAS_UNCONSUMED_REQUESTS(%struct.TYPE_21__*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @RING_COPY_REQUEST(%struct.TYPE_21__*, i8*, %struct.xen_netif_tx_request*) #1

declare dso_local i64 @tx_credit_exceeded(%struct.xenvif_queue*, i64) #1

declare dso_local i32 @memset(%struct.xen_netif_extra_info*, i32, i32) #1

declare dso_local i32 @xenvif_get_extras(%struct.xenvif_queue*, %struct.xen_netif_extra_info*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @xenvif_mcast_add(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @make_tx_response(%struct.xenvif_queue*, %struct.xen_netif_tx_request*, i32, i32) #1

declare dso_local i32 @push_tx_responses(%struct.xenvif_queue*) #1

declare dso_local i32 @xenvif_mcast_del(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @xenvif_count_requests(%struct.xenvif_queue*, %struct.xen_netif_tx_request*, i32, %struct.xen_netif_tx_request*, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

declare dso_local i32 @xenvif_tx_err(%struct.xenvif_queue*, %struct.xen_netif_tx_request*, i32, i8*) #1

declare dso_local i64 @pending_index(i32) #1

declare dso_local %struct.sk_buff* @xenvif_alloc_skb(i32) #1

declare dso_local %struct.TYPE_19__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i64 @xenvif_set_skb_gso(%struct.TYPE_18__*, %struct.sk_buff*, %struct.xen_netif_extra_info*) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.TYPE_20__* @XENVIF_TX_CB(%struct.sk_buff*) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @virt_to_gfn(i32) #1

declare dso_local i32 @offset_in_page(i32) #1

declare dso_local i32 @frag_set_pending_idx(i32*, i64) #1

declare dso_local i32 @xenvif_tx_create_map_op(%struct.xenvif_queue*, i64, %struct.xen_netif_tx_request*, i32, %struct.gnttab_map_grant_ref*) #1

declare dso_local i32 @memcpy(i32*, %struct.xen_netif_tx_request*, i32) #1

declare dso_local %struct.gnttab_map_grant_ref* @xenvif_get_requests(%struct.xenvif_queue*, %struct.sk_buff*, %struct.xen_netif_tx_request*, %struct.gnttab_map_grant_ref*, i32, %struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.gnttab_map_grant_ref*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
