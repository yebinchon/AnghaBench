; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_fill_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_fill_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { %struct.qeth_card* }
%struct.qeth_card = type { i32 }
%struct.qeth_hdr = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.qeth_hdr_layer3 }
%struct.qeth_hdr_layer3 = type { i32, i32, %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_13__, %struct.TYPE_8__ }
%struct.TYPE_13__ = type { i32*, i64* }
%struct.TYPE_8__ = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.vlan_ethhdr = type { i64, i32 }
%struct.dst_entry = type { i32 }
%struct.rtable = type { i32 }
%struct.rt6_info = type { %struct.TYPE_13__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_13__ }

@QETH_HEADER_TYPE_L3_TSO = common dso_local global i32 0, align 4
@QETH_HEADER_TYPE_LAYER3 = common dso_local global i32 0, align 4
@ETH_P_AF_IUCV = common dso_local global i32 0, align 4
@QETH_HDR_IPV6 = common dso_local global i32 0, align 4
@QETH_CAST_UNICAST = common dso_local global i32 0, align 4
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@QETH_HDR_EXT_CSUM_HDR_REQ = common dso_local global i32 0, align 4
@QETH_HDR_EXT_VLAN_FRAME = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@QETH_HDR_EXT_INCLUDE_VLAN_TAG = common dso_local global i32 0, align 4
@QETH_IQD_MCAST_TXQ = common dso_local global i64 0, align 8
@RTN_UNICAST = common dso_local global i32 0, align 4
@QETH_HDR_PASSTHRU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_qdio_out_q*, %struct.qeth_hdr*, %struct.sk_buff*, i32, i32)* @qeth_l3_fill_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l3_fill_header(%struct.qeth_qdio_out_q* %0, %struct.qeth_hdr* %1, %struct.sk_buff* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.qeth_qdio_out_q*, align 8
  %7 = alloca %struct.qeth_hdr*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qeth_hdr_layer3*, align 8
  %12 = alloca %struct.vlan_ethhdr*, align 8
  %13 = alloca %struct.qeth_card*, align 8
  %14 = alloca %struct.dst_entry*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.rtable*, align 8
  %17 = alloca %struct.rt6_info*, align 8
  store %struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_q** %6, align 8
  store %struct.qeth_hdr* %1, %struct.qeth_hdr** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %19 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  store %struct.qeth_hdr_layer3* %20, %struct.qeth_hdr_layer3** %11, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = call %struct.vlan_ethhdr* @vlan_eth_hdr(%struct.sk_buff* %21)
  store %struct.vlan_ethhdr* %22, %struct.vlan_ethhdr** %12, align 8
  %23 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %6, align 8
  %24 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %23, i32 0, i32 0
  %25 = load %struct.qeth_card*, %struct.qeth_card** %24, align 8
  store %struct.qeth_card* %25, %struct.qeth_card** %13, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %28 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = call i64 @skb_is_gso(%struct.sk_buff* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %5
  %35 = load i32, i32* @QETH_HEADER_TYPE_L3_TSO, align 4
  %36 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %37 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %38, i32 0, i32 5
  store i32 %35, i32* %39, align 8
  br label %102

40:                                               ; preds = %5
  %41 = load i32, i32* @QETH_HEADER_TYPE_LAYER3, align 4
  %42 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %43 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %44, i32 0, i32 5
  store i32 %41, i32* %45, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @ETH_P_AF_IUCV, align 4
  %50 = call i64 @htons(i32 %49)
  %51 = icmp eq i64 %48, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %40
  %53 = load i32, i32* @QETH_HDR_IPV6, align 4
  %54 = load i32, i32* @QETH_CAST_UNICAST, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.qeth_hdr_layer3*, %struct.qeth_hdr_layer3** %11, align 8
  %57 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = call i64 @htons(i32 65152)
  %59 = load %struct.qeth_hdr_layer3*, %struct.qeth_hdr_layer3** %11, align 8
  %60 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  store i64 %58, i64* %64, align 8
  %65 = load %struct.qeth_hdr_layer3*, %struct.qeth_hdr_layer3** %11, align 8
  %66 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %72 = call %struct.TYPE_11__* @iucv_trans_hdr(%struct.sk_buff* %71)
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @memcpy(i32* %70, i32 %74, i32 8)
  br label %265

76:                                               ; preds = %40
  %77 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %76
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %85 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %86, i32 0, i32 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @qeth_tx_csum(%struct.sk_buff* %83, i32* %87, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 4
  br i1 %91, label %92, label %100

92:                                               ; preds = %82
  %93 = load i32, i32* @QETH_HDR_EXT_CSUM_HDR_REQ, align 4
  %94 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %95 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %93
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %92, %82
  br label %101

101:                                              ; preds = %100, %76
  br label %102

102:                                              ; preds = %101, %34
  %103 = load i32, i32* %9, align 4
  %104 = icmp eq i32 %103, 4
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %107 = call i64 @IS_IQD(%struct.qeth_card* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %105, %102
  %110 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %111 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %127

113:                                              ; preds = %109
  %114 = load i32, i32* @QETH_HDR_EXT_VLAN_FRAME, align 4
  %115 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %116 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %117, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %114
  store i32 %120, i32* %118, align 4
  %121 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %122 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %121)
  %123 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %124 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %125, i32 0, i32 3
  store i32 %122, i32* %126, align 8
  br label %127

127:                                              ; preds = %113, %109
  br label %152

128:                                              ; preds = %105
  %129 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %12, align 8
  %130 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* @ETH_P_8021Q, align 4
  %133 = call i64 @htons(i32 %132)
  %134 = icmp eq i64 %131, %133
  br i1 %134, label %135, label %151

135:                                              ; preds = %128
  %136 = load i32, i32* @QETH_HDR_EXT_INCLUDE_VLAN_TAG, align 4
  %137 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %138 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = or i32 %141, %136
  store i32 %142, i32* %140, align 4
  %143 = load %struct.vlan_ethhdr*, %struct.vlan_ethhdr** %12, align 8
  %144 = getelementptr inbounds %struct.vlan_ethhdr, %struct.vlan_ethhdr* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @ntohs(i32 %145)
  %147 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %148 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %149, i32 0, i32 3
  store i32 %146, i32* %150, align 8
  br label %151

151:                                              ; preds = %135, %128
  br label %152

152:                                              ; preds = %151, %127
  %153 = call i32 (...) @rcu_read_lock()
  %154 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %155 = load i32, i32* %9, align 4
  %156 = call %struct.dst_entry* @qeth_dst_check_rcu(%struct.sk_buff* %154, i32 %155)
  store %struct.dst_entry* %156, %struct.dst_entry** %14, align 8
  %157 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %158 = call i64 @IS_IQD(%struct.qeth_card* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %152
  %161 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %162 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %161)
  %163 = load i64, i64* @QETH_IQD_MCAST_TXQ, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %167

165:                                              ; preds = %160
  %166 = load i32, i32* @RTN_UNICAST, align 4
  store i32 %166, i32* %15, align 4
  br label %172

167:                                              ; preds = %160, %152
  %168 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %169 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %170 = load i32, i32* %9, align 4
  %171 = call i32 @qeth_l3_get_cast_type_rcu(%struct.sk_buff* %168, %struct.dst_entry* %169, i32 %170)
  store i32 %171, i32* %15, align 4
  br label %172

172:                                              ; preds = %167, %165
  %173 = load i32, i32* %15, align 4
  %174 = call i32 @qeth_l3_cast_type_to_flag(i32 %173)
  %175 = load %struct.qeth_hdr_layer3*, %struct.qeth_hdr_layer3** %11, align 8
  %176 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %174
  store i32 %178, i32* %176, align 4
  %179 = load i32, i32* %9, align 4
  %180 = icmp eq i32 %179, 4
  br i1 %180, label %181, label %206

181:                                              ; preds = %172
  %182 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %183 = bitcast %struct.dst_entry* %182 to %struct.rtable*
  store %struct.rtable* %183, %struct.rtable** %16, align 8
  %184 = load %struct.rtable*, %struct.rtable** %16, align 8
  %185 = icmp ne %struct.rtable* %184, null
  br i1 %185, label %186, label %193

186:                                              ; preds = %181
  %187 = load %struct.rtable*, %struct.rtable** %16, align 8
  %188 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %189 = call %struct.TYPE_14__* @ip_hdr(%struct.sk_buff* %188)
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @rt_nexthop(%struct.rtable* %187, i32 %191)
  br label %198

193:                                              ; preds = %181
  %194 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %195 = call %struct.TYPE_14__* @ip_hdr(%struct.sk_buff* %194)
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  br label %198

198:                                              ; preds = %193, %186
  %199 = phi i32 [ %192, %186 ], [ %197, %193 ]
  %200 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %201 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  store i32 %199, i32* %205, align 8
  br label %263

206:                                              ; preds = %172
  %207 = load i32, i32* %9, align 4
  %208 = icmp eq i32 %207, 6
  br i1 %208, label %209, label %256

209:                                              ; preds = %206
  %210 = load %struct.dst_entry*, %struct.dst_entry** %14, align 8
  %211 = bitcast %struct.dst_entry* %210 to %struct.rt6_info*
  store %struct.rt6_info* %211, %struct.rt6_info** %17, align 8
  %212 = load %struct.rt6_info*, %struct.rt6_info** %17, align 8
  %213 = icmp ne %struct.rt6_info* %212, null
  br i1 %213, label %214, label %227

214:                                              ; preds = %209
  %215 = load %struct.rt6_info*, %struct.rt6_info** %17, align 8
  %216 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %215, i32 0, i32 0
  %217 = call i32 @ipv6_addr_any(%struct.TYPE_13__* %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %227, label %219

219:                                              ; preds = %214
  %220 = load %struct.qeth_hdr_layer3*, %struct.qeth_hdr_layer3** %11, align 8
  %221 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %221, i32 0, i32 0
  %223 = load %struct.rt6_info*, %struct.rt6_info** %17, align 8
  %224 = getelementptr inbounds %struct.rt6_info, %struct.rt6_info* %223, i32 0, i32 0
  %225 = bitcast %struct.TYPE_13__* %222 to i8*
  %226 = bitcast %struct.TYPE_13__* %224 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %225, i8* align 8 %226, i64 16, i1 false)
  br label %236

227:                                              ; preds = %214, %209
  %228 = load %struct.qeth_hdr_layer3*, %struct.qeth_hdr_layer3** %11, align 8
  %229 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %228, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 0
  %231 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %232 = call %struct.TYPE_12__* @ipv6_hdr(%struct.sk_buff* %231)
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 0
  %234 = bitcast %struct.TYPE_13__* %230 to i8*
  %235 = bitcast %struct.TYPE_13__* %233 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %234, i8* align 8 %235, i64 16, i1 false)
  br label %236

236:                                              ; preds = %227, %219
  %237 = load i32, i32* @QETH_HDR_IPV6, align 4
  %238 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %239 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %237
  store i32 %243, i32* %241, align 4
  %244 = load %struct.qeth_card*, %struct.qeth_card** %13, align 8
  %245 = call i64 @IS_IQD(%struct.qeth_card* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %255, label %247

247:                                              ; preds = %236
  %248 = load i32, i32* @QETH_HDR_PASSTHRU, align 4
  %249 = load %struct.qeth_hdr*, %struct.qeth_hdr** %7, align 8
  %250 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %253, %248
  store i32 %254, i32* %252, align 4
  br label %255

255:                                              ; preds = %247, %236
  br label %262

256:                                              ; preds = %206
  %257 = load i32, i32* @QETH_HDR_PASSTHRU, align 4
  %258 = load %struct.qeth_hdr_layer3*, %struct.qeth_hdr_layer3** %11, align 8
  %259 = getelementptr inbounds %struct.qeth_hdr_layer3, %struct.qeth_hdr_layer3* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 4
  br label %262

262:                                              ; preds = %256, %255
  br label %263

263:                                              ; preds = %262, %198
  %264 = call i32 (...) @rcu_read_unlock()
  br label %265

265:                                              ; preds = %263, %52
  ret void
}

declare dso_local %struct.vlan_ethhdr* @vlan_eth_hdr(%struct.sk_buff*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @iucv_trans_hdr(%struct.sk_buff*) #1

declare dso_local i32 @qeth_tx_csum(%struct.sk_buff*, i32*, i32) #1

declare dso_local i64 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.dst_entry* @qeth_dst_check_rcu(%struct.sk_buff*, i32) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @qeth_l3_get_cast_type_rcu(%struct.sk_buff*, %struct.dst_entry*, i32) #1

declare dso_local i32 @qeth_l3_cast_type_to_flag(i32) #1

declare dso_local i32 @rt_nexthop(%struct.rtable*, i32) #1

declare dso_local %struct.TYPE_14__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_addr_any(%struct.TYPE_13__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_12__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
