; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-tx.c_cvm_oct_xmit_pow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/octeon/extr_ethernet-tx.c_cvm_oct_xmit_pow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i64, i64, i32 }
%struct.net_device = type { %struct.TYPE_24__, i32 }
%struct.TYPE_24__ = type { i32, i32, i32 }
%struct.octeon_ethernet = type { i32 }
%struct.TYPE_21__ = type { i8*, %struct.TYPE_28__, %struct.TYPE_20__, %struct.TYPE_30__, %struct.TYPE_27__ }
%struct.TYPE_28__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.TYPE_23__, %struct.TYPE_31__, i64 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_31__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_30__ = type { %struct.TYPE_29__, i64 }
%struct.TYPE_29__ = type { i32, i32, i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_26__ }
%struct.TYPE_26__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_22__ = type { i64, i32 }

@CVMX_FPA_WQE_POOL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"%s: Failed to allocate a work queue entry\0A\00", align 1
@CVMX_FPA_PACKET_POOL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: Failed to allocate a packet buffer\0A\00", align 1
@CVMX_HELPER_FIRST_MBUFF_SKIP = common dso_local global i32 0, align 4
@OCTEON_CN68XX = common dso_local global i32 0, align 4
@pow_send_group = common dso_local global i32 0, align 4
@CVMX_HELPER_INPUT_TAG_TYPE = common dso_local global i32 0, align 4
@CVMX_FPA_PACKET_POOL_SIZE = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@PACKET_BROADCAST = common dso_local global i64 0, align 8
@PACKET_MULTICAST = common dso_local global i64 0, align 8
@ETH_P_RARP = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_xmit_pow(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.octeon_ethernet*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.octeon_ethernet* @netdev_priv(%struct.net_device* %10)
  store %struct.octeon_ethernet* %11, %struct.octeon_ethernet** %6, align 8
  %12 = load i32, i32* @CVMX_FPA_WQE_POOL, align 4
  %13 = call i8* @cvmx_fpa_alloc(i32 %12)
  %14 = bitcast i8* %13 to %struct.TYPE_21__*
  store %struct.TYPE_21__* %14, %struct.TYPE_21__** %9, align 8
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %16 = icmp ne %struct.TYPE_21__* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @printk_ratelimited(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %31)
  store i32 0, i32* %3, align 4
  br label %315

33:                                               ; preds = %2
  %34 = load i32, i32* @CVMX_FPA_PACKET_POOL, align 4
  %35 = call i8* @cvmx_fpa_alloc(i32 %34)
  store i8* %35, i8** %7, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = icmp ne i8* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %33
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @printk_ratelimited(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %48 = load i32, i32* @CVMX_FPA_WQE_POOL, align 4
  %49 = call i32 @cvmx_fpa_free(%struct.TYPE_21__* %47, i32 %48, i32 1)
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %55)
  store i32 0, i32* %3, align 4
  br label %315

57:                                               ; preds = %33
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr i8, i8* %58, i64 4
  store i8* %59, i8** %8, align 8
  %60 = load i32, i32* @CVMX_HELPER_FIRST_MBUFF_SKIP, align 4
  %61 = add nsw i32 %60, 7
  %62 = and i32 %61, 65528
  %63 = add nsw i32 %62, 6
  %64 = load i8*, i8** %8, align 8
  %65 = sext i32 %63 to i64
  %66 = getelementptr i8, i8* %64, i64 %65
  store i8* %66, i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @memcpy(i8* %67, i64 %70, i32 %73)
  %75 = load i32, i32* @OCTEON_CN68XX, align 4
  %76 = call i32 @OCTEON_IS_MODEL(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %57
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 4
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 0
  store i32 %81, i32* %86, align 8
  br label %87

87:                                               ; preds = %78, %57
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 8
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %95 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %6, align 8
  %96 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @cvmx_wqe_set_port(%struct.TYPE_21__* %94, i32 %97)
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %100 = load %struct.octeon_ethernet*, %struct.octeon_ethernet** %6, align 8
  %101 = getelementptr inbounds %struct.octeon_ethernet, %struct.octeon_ethernet* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 7
  %104 = call i32 @cvmx_wqe_set_qos(%struct.TYPE_21__* %99, i32 %103)
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %106 = load i32, i32* @pow_send_group, align 4
  %107 = call i32 @cvmx_wqe_set_grp(%struct.TYPE_21__* %105, i32 %106)
  %108 = load i32, i32* @CVMX_HELPER_INPUT_TAG_TYPE, align 4
  %109 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = load i32, i32* @pow_send_group, align 4
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 2
  store i32 %112, i32* %115, align 8
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 2
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %121, i32 0, i32 0
  store i32 1, i32* %122, align 8
  %123 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %124 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %124, i32 0, i32 1
  store i64 0, i64* %125, align 8
  %126 = load i8*, i8** %8, align 8
  %127 = call i32 @cvmx_ptr_to_phys(i8* %126)
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %130, i32 0, i32 3
  store i32 %127, i32* %131, align 4
  %132 = load i32, i32* @CVMX_FPA_PACKET_POOL, align 4
  %133 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i32 0, i32 2
  store i32 %132, i32* %136, align 8
  %137 = load i32, i32* @CVMX_FPA_PACKET_POOL_SIZE, align 4
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %140, i32 0, i32 1
  store i32 %137, i32* %141, align 4
  %142 = load i8*, i8** %8, align 8
  %143 = load i8*, i8** %7, align 8
  %144 = ptrtoint i8* %142 to i64
  %145 = ptrtoint i8* %143 to i64
  %146 = sub i64 %144, %145
  %147 = ashr i64 %146, 7
  %148 = trunc i64 %147 to i32
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 3
  %151 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %151, i32 0, i32 0
  store i32 %148, i32* %152, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i32, i32* @ETH_P_IP, align 4
  %157 = call i64 @htons(i32 %156)
  %158 = icmp eq i64 %155, %157
  br i1 %158, label %159, label %231

159:                                              ; preds = %87
  %160 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %162, i32 0, i32 1
  store i32 14, i32* %163, align 4
  %164 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %165 = call %struct.TYPE_22__* @ip_hdr(%struct.sk_buff* %164)
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @IPPROTO_TCP, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %177, label %170

170:                                              ; preds = %159
  %171 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %172 = call %struct.TYPE_22__* @ip_hdr(%struct.sk_buff* %171)
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @IPPROTO_UDP, align 8
  %176 = icmp eq i64 %174, %175
  br label %177

177:                                              ; preds = %170, %159
  %178 = phi i1 [ true, %159 ], [ %176, %170 ]
  %179 = zext i1 %178 to i32
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %181, i32 0, i32 1
  %183 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %182, i32 0, i32 2
  store i32 %179, i32* %183, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %185 = call %struct.TYPE_22__* @ip_hdr(%struct.sk_buff* %184)
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %195, label %189

189:                                              ; preds = %177
  %190 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %191 = call %struct.TYPE_22__* @ip_hdr(%struct.sk_buff* %190)
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 16384
  br label %195

195:                                              ; preds = %189, %177
  %196 = phi i1 [ true, %177 ], [ %194, %189 ]
  %197 = xor i1 %196, true
  %198 = zext i1 %197 to i32
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %201, i32 0, i32 3
  store i32 %198, i32* %202, align 4
  %203 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %204 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %203, i32 0, i32 2
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @PACKET_BROADCAST, align 8
  %207 = icmp eq i64 %205, %206
  %208 = zext i1 %207 to i32
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %211, i32 0, i32 4
  store i32 %208, i32* %212, align 8
  %213 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %214 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %213, i32 0, i32 2
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @PACKET_MULTICAST, align 8
  %217 = icmp eq i64 %215, %216
  %218 = zext i1 %217 to i32
  %219 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %219, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %221, i32 0, i32 5
  store i32 %218, i32* %222, align 4
  %223 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %223, i32 0, i32 0
  %225 = load i8*, i8** %224, align 8
  %226 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %227 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = add nsw i64 %228, 10
  %230 = call i32 @memcpy(i8* %225, i64 %229, i32 8)
  br label %285

231:                                              ; preds = %87
  %232 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %233 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %232, i32 0, i32 1
  %234 = load i64, i64* %233, align 8
  %235 = load i32, i32* @ETH_P_RARP, align 4
  %236 = call i64 @htons(i32 %235)
  %237 = icmp eq i64 %234, %236
  %238 = zext i1 %237 to i32
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %241, i32 0, i32 0
  store i32 %238, i32* %242, align 8
  %243 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %244 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load i32, i32* @ETH_P_ARP, align 4
  %247 = call i64 @htons(i32 %246)
  %248 = icmp eq i64 %245, %247
  %249 = zext i1 %248 to i32
  %250 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i32 0, i32 1
  store i32 %249, i32* %253, align 4
  %254 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %255 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %254, i32 0, i32 2
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @PACKET_BROADCAST, align 8
  %258 = icmp eq i64 %256, %257
  %259 = zext i1 %258 to i32
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %262, i32 0, i32 2
  store i32 %259, i32* %263, align 8
  %264 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %265 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %264, i32 0, i32 2
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @PACKET_MULTICAST, align 8
  %268 = icmp eq i64 %266, %267
  %269 = zext i1 %268 to i32
  %270 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %272, i32 0, i32 3
  store i32 %269, i32* %273, align 4
  %274 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %275 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %276, i32 0, i32 4
  store i32 1, i32* %277, align 8
  %278 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %278, i32 0, i32 0
  %280 = load i8*, i8** %279, align 8
  %281 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %282 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %281, i32 0, i32 3
  %283 = load i64, i64* %282, align 8
  %284 = call i32 @memcpy(i8* %280, i64 %283, i32 8)
  br label %285

285:                                              ; preds = %231, %195
  %286 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %287 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %288, i32 0, i32 2
  %290 = load i32, i32* %289, align 8
  %291 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %296 = call i32 @cvmx_wqe_get_qos(%struct.TYPE_21__* %295)
  %297 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %298 = call i32 @cvmx_wqe_get_grp(%struct.TYPE_21__* %297)
  %299 = call i32 @cvmx_pow_work_submit(%struct.TYPE_21__* %286, i32 %290, i32 %294, i32 %296, i32 %298)
  %300 = load %struct.net_device*, %struct.net_device** %5, align 8
  %301 = getelementptr inbounds %struct.net_device, %struct.net_device* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %302, align 4
  %305 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %306 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 8
  %308 = load %struct.net_device*, %struct.net_device** %5, align 8
  %309 = getelementptr inbounds %struct.net_device, %struct.net_device* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = add nsw i32 %311, %307
  store i32 %312, i32* %310, align 4
  %313 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %314 = call i32 @dev_consume_skb_any(%struct.sk_buff* %313)
  store i32 0, i32* %3, align 4
  br label %315

315:                                              ; preds = %285, %42, %21
  %316 = load i32, i32* %3, align 4
  ret i32 %316
}

declare dso_local %struct.octeon_ethernet* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @cvmx_fpa_alloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @printk_ratelimited(i8*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @cvmx_fpa_free(%struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i32 @OCTEON_IS_MODEL(i32) #1

declare dso_local i32 @cvmx_wqe_set_port(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @cvmx_wqe_set_qos(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @cvmx_wqe_set_grp(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @cvmx_ptr_to_phys(i8*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_22__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @cvmx_pow_work_submit(%struct.TYPE_21__*, i32, i32, i32, i32) #1

declare dso_local i32 @cvmx_wqe_get_qos(%struct.TYPE_21__*) #1

declare dso_local i32 @cvmx_wqe_get_grp(%struct.TYPE_21__*) #1

declare dso_local i32 @dev_consume_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
