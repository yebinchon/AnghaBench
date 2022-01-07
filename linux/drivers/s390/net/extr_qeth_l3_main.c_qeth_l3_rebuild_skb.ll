; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_rebuild_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_rebuild_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_13__, %struct.TYPE_18__* }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32 (%struct.sk_buff*, %struct.TYPE_18__*, i32, i8*, i8*, i32)* }
%struct.sk_buff = type { i32, i32, %struct.net_device*, i64 }
%struct.net_device = type { i32 }
%struct.qeth_hdr = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32, i32, %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i8, i32 }
%struct.af_iucv_trans_hdr = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@ETH_P_AF_IUCV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"FAKELL\00", align 1
@QETH_HDR_PASSTHRU = common dso_local global i32 0, align 4
@QETH_HDR_IPV6 = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@QETH_HDR_CAST_MASK = common dso_local global i32 0, align 4
@rx_multicast = common dso_local global i32 0, align 4
@PACKET_OTHERHOST = common dso_local global i32 0, align 4
@QETH_HDR_EXT_SRC_MAC_ADDR = common dso_local global i32 0, align 4
@QETH_HDR_EXT_VLAN_FRAME = common dso_local global i32 0, align 4
@QETH_HDR_EXT_INCLUDE_VLAN_TAG = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_card*, %struct.sk_buff*, %struct.qeth_hdr*)* @qeth_l3_rebuild_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_l3_rebuild_skb(%struct.qeth_card* %0, %struct.sk_buff* %1, %struct.qeth_hdr* %2) #0 {
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.qeth_hdr*, align 8
  %7 = alloca %struct.af_iucv_trans_hdr*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.qeth_hdr* %2, %struct.qeth_hdr** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.af_iucv_trans_hdr*
  store %struct.af_iucv_trans_hdr* %16, %struct.af_iucv_trans_hdr** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 2
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %8, align 8
  %20 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %21 = call i64 @IS_IQD(%struct.qeth_card* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %3
  %24 = load %struct.af_iucv_trans_hdr*, %struct.af_iucv_trans_hdr** %7, align 8
  %25 = getelementptr inbounds %struct.af_iucv_trans_hdr, %struct.af_iucv_trans_hdr* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ETH_P_AF_IUCV, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = load %struct.net_device*, %struct.net_device** %8, align 8
  %32 = load i64, i64* @ETH_P_AF_IUCV, align 8
  %33 = load %struct.net_device*, %struct.net_device** %8, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @dev_hard_header(%struct.sk_buff* %30, %struct.net_device* %31, i64 %32, i32 %35, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %230

40:                                               ; preds = %23, %3
  %41 = load %struct.qeth_hdr*, %struct.qeth_hdr** %6, align 8
  %42 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @QETH_HDR_PASSTHRU, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %174, label %49

49:                                               ; preds = %40
  %50 = load %struct.qeth_hdr*, %struct.qeth_hdr** %6, align 8
  %51 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @QETH_HDR_IPV6, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %49
  %59 = load i32, i32* @ETH_P_IPV6, align 4
  br label %62

60:                                               ; preds = %49
  %61 = load i32, i32* @ETH_P_IP, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* @ETH_ALEN, align 4
  %65 = zext i32 %64 to i64
  %66 = call i8* @llvm.stacksave()
  store i8* %66, i8** %10, align 8
  %67 = alloca i8, i64 %65, align 16
  store i64 %65, i64* %11, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = call i32 @skb_reset_network_header(%struct.sk_buff* %68)
  %70 = load %struct.qeth_hdr*, %struct.qeth_hdr** %6, align 8
  %71 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @QETH_HDR_CAST_MASK, align 4
  %76 = and i32 %74, %75
  switch i32 %76, label %106 [
    i32 128, label %77
    i32 129, label %96
  ]

77:                                               ; preds = %62
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* @ETH_P_IP, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = call %struct.TYPE_11__* @ip_hdr(%struct.sk_buff* %82)
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ip_eth_mc_map(i32 %85, i8* %67)
  br label %92

87:                                               ; preds = %77
  %88 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %89 = call %struct.TYPE_19__* @ipv6_hdr(%struct.sk_buff* %88)
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 0
  %91 = call i32 @ipv6_eth_mc_map(i32* %90, i8* %67)
  br label %92

92:                                               ; preds = %87, %81
  %93 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %94 = load i32, i32* @rx_multicast, align 4
  %95 = call i32 @QETH_CARD_STAT_INC(%struct.qeth_card* %93, i32 %94)
  br label %123

96:                                               ; preds = %62
  %97 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %98 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %97, i32 0, i32 1
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ether_addr_copy(i8* %67, i32 %101)
  %103 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %104 = load i32, i32* @rx_multicast, align 4
  %105 = call i32 @QETH_CARD_STAT_INC(%struct.qeth_card* %103, i32 %104)
  br label %123

106:                                              ; preds = %62
  %107 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %108 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i32, i32* @PACKET_OTHERHOST, align 4
  %114 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 4
  br label %116

116:                                              ; preds = %112, %106
  %117 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %118 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %117, i32 0, i32 1
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @ether_addr_copy(i8* %67, i32 %121)
  br label %123

123:                                              ; preds = %116, %96, %92
  %124 = load %struct.qeth_hdr*, %struct.qeth_hdr** %6, align 8
  %125 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @QETH_HDR_EXT_SRC_MAC_ADDR, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %155

132:                                              ; preds = %123
  %133 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %134 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %133, i32 0, i32 1
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  %139 = load i32 (%struct.sk_buff*, %struct.TYPE_18__*, i32, i8*, i8*, i32)*, i32 (%struct.sk_buff*, %struct.TYPE_18__*, i32, i8*, i8*, i32)** %138, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %141 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %142 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %141, i32 0, i32 1
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %142, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load %struct.qeth_hdr*, %struct.qeth_hdr** %6, align 8
  %146 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 0
  %151 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %152 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 %139(%struct.sk_buff* %140, %struct.TYPE_18__* %143, i32 %144, i8* %67, i8* %150, i32 %153)
  br label %172

155:                                              ; preds = %123
  %156 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %157 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %156, i32 0, i32 1
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 0
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i32 (%struct.sk_buff*, %struct.TYPE_18__*, i32, i8*, i8*, i32)*, i32 (%struct.sk_buff*, %struct.TYPE_18__*, i32, i8*, i8*, i32)** %161, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %164 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %165 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %164, i32 0, i32 1
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %169 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i32 %162(%struct.sk_buff* %163, %struct.TYPE_18__* %166, i32 %167, i8* %67, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %170)
  br label %172

172:                                              ; preds = %155, %132
  %173 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %173)
  br label %174

174:                                              ; preds = %172, %40
  %175 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %176 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %221, label %180

180:                                              ; preds = %174
  %181 = load %struct.qeth_hdr*, %struct.qeth_hdr** %6, align 8
  %182 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @QETH_HDR_EXT_VLAN_FRAME, align 4
  %187 = load i32, i32* @QETH_HDR_EXT_INCLUDE_VLAN_TAG, align 4
  %188 = or i32 %186, %187
  %189 = and i32 %185, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %221

191:                                              ; preds = %180
  %192 = load %struct.qeth_hdr*, %struct.qeth_hdr** %6, align 8
  %193 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @QETH_HDR_EXT_VLAN_FRAME, align 4
  %198 = and i32 %196, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %191
  %201 = load %struct.qeth_hdr*, %struct.qeth_hdr** %6, align 8
  %202 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  br label %214

206:                                              ; preds = %191
  %207 = load %struct.qeth_hdr*, %struct.qeth_hdr** %6, align 8
  %208 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 2
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  br label %214

214:                                              ; preds = %206, %200
  %215 = phi i32 [ %205, %200 ], [ %213, %206 ]
  store i32 %215, i32* %12, align 4
  %216 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %217 = load i32, i32* @ETH_P_8021Q, align 4
  %218 = call i32 @htons(i32 %217)
  %219 = load i32, i32* %12, align 4
  %220 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %216, i32 %218, i32 %219)
  br label %221

221:                                              ; preds = %214, %180, %174
  %222 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %223 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %224 = load %struct.qeth_hdr*, %struct.qeth_hdr** %6, align 8
  %225 = getelementptr inbounds %struct.qeth_hdr, %struct.qeth_hdr* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @qeth_rx_csum(%struct.qeth_card* %222, %struct.sk_buff* %223, i32 %228)
  br label %230

230:                                              ; preds = %221, %29
  ret void
}

declare dso_local i64 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i32 @dev_hard_header(%struct.sk_buff*, %struct.net_device*, i64, i32, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @ip_eth_mc_map(i32, i8*) #1

declare dso_local %struct.TYPE_11__* @ip_hdr(%struct.sk_buff*) #1

declare dso_local i32 @ipv6_eth_mc_map(i32*, i8*) #1

declare dso_local %struct.TYPE_19__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @QETH_CARD_STAT_INC(%struct.qeth_card*, i32) #1

declare dso_local i32 @ether_addr_copy(i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @qeth_rx_csum(%struct.qeth_card*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
