; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_setup_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l3_main.c_qeth_l3_setup_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_8__*, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_7__ = type { i64, i32 }

@QETH_LINK_TYPE_LANE_TR = common dso_local global i64 0, align 8
@QETH_LINK_TYPE_HSTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"qeth_l3: ignoring TR device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@qeth_l3_osa_netdev_ops = common dso_local global i32 0, align 4
@UNIQUE_ID_NOT_BY_CARD = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@IPA_OUTBOUND_CHECKSUM_V6 = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@IPA_OUTBOUND_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@qeth_l3_netdev_ops = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@qeth_poll = common dso_local global i32 0, align 4
@QETH_NAPI_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32)* @qeth_l3_setup_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l3_setup_netdev(%struct.qeth_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %9 = call i64 @IS_OSD(%struct.qeth_card* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %13 = call i64 @IS_OSX(%struct.qeth_card* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %162

15:                                               ; preds = %11, %2
  %16 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %17 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @QETH_LINK_TYPE_LANE_TR, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %15
  %23 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %24 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @QETH_LINK_TYPE_HSTR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %22, %15
  %30 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENODEV, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %267

33:                                               ; preds = %22
  %34 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %35 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %34, i32 0, i32 0
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 5
  store i32* @qeth_l3_osa_netdev_ops, i32** %37, align 8
  %38 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %39 = call i32 @qeth_l3_get_unique_id(%struct.qeth_card* %38)
  %40 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %41 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @UNIQUE_ID_NOT_BY_CARD, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %57, label %47

47:                                               ; preds = %33
  %48 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %49 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = and i32 %51, 65535
  %53 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %54 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  store i32 %52, i32* %56, align 8
  br label %57

57:                                               ; preds = %47, %33
  %58 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %59 = call i32 @IS_VM_NIC(%struct.qeth_card* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %91, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @NETIF_F_SG, align 4
  %63 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %64 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %62
  store i32 %68, i32* %66, align 4
  %69 = load i32, i32* @NETIF_F_TSO, align 4
  %70 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %75 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %73
  store i32 %79, i32* %77, align 8
  %80 = load i32, i32* @NETIF_F_TSO, align 4
  %81 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %86 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %85, i32 0, i32 0
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %84
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %61, %57
  %92 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %93 = load i32, i32* @IPA_OUTBOUND_CHECKSUM_V6, align 4
  %94 = call i64 @qeth_is_supported6(%struct.qeth_card* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %91
  %97 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %98 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %99 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %98, i32 0, i32 0
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %97
  store i32 %103, i32* %101, align 8
  %104 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %105 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %106 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %105, i32 0, i32 0
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %104
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %96, %91
  %112 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %113 = load i32, i32* @IPA_OUTBOUND_TSO, align 4
  %114 = call i64 @qeth_is_supported6(%struct.qeth_card* %112, i32 %113)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %131

116:                                              ; preds = %111
  %117 = load i32, i32* @NETIF_F_TSO6, align 4
  %118 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %119 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %117
  store i32 %123, i32* %121, align 8
  %124 = load i32, i32* @NETIF_F_TSO6, align 4
  %125 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %126 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 4
  %130 = or i32 %129, %124
  store i32 %130, i32* %128, align 4
  br label %131

131:                                              ; preds = %116, %111
  %132 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %133 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %132, i32 0, i32 0
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @NETIF_F_TSO6, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %131
  %141 = load i32, i32* @VLAN_HLEN, align 4
  %142 = sext i32 %141 to i64
  %143 = add i64 4, %142
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %6, align 4
  br label %161

145:                                              ; preds = %131
  %146 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %147 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %146, i32 0, i32 0
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @NETIF_F_TSO, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %145
  store i32 4, i32* %6, align 4
  br label %160

155:                                              ; preds = %145
  %156 = load i32, i32* @VLAN_HLEN, align 4
  %157 = sext i32 %156 to i64
  %158 = add i64 4, %157
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %6, align 4
  br label %160

160:                                              ; preds = %155, %154
  br label %161

161:                                              ; preds = %160, %140
  br label %192

162:                                              ; preds = %11
  %163 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %164 = call i64 @IS_IQD(%struct.qeth_card* %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %188

166:                                              ; preds = %162
  %167 = load i32, i32* @IFF_NOARP, align 4
  %168 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %169 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %168, i32 0, i32 0
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %167
  store i32 %173, i32* %171, align 8
  %174 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %175 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %174, i32 0, i32 0
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 5
  store i32* @qeth_l3_netdev_ops, i32** %177, align 8
  %178 = load i32, i32* @ETH_HLEN, align 4
  %179 = sext i32 %178 to i64
  %180 = sub i64 4, %179
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %6, align 4
  %182 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %183 = call i32 @qeth_l3_iqd_read_initial_mac(%struct.qeth_card* %182)
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* %7, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %166
  br label %257

187:                                              ; preds = %166
  br label %191

188:                                              ; preds = %162
  %189 = load i32, i32* @ENODEV, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %3, align 4
  br label %267

191:                                              ; preds = %187
  br label %192

192:                                              ; preds = %191, %161
  %193 = load i32, i32* %6, align 4
  %194 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %195 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %194, i32 0, i32 0
  %196 = load %struct.TYPE_8__*, %struct.TYPE_8__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 4
  store i32 %193, i32* %197, align 8
  %198 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %199 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %202 = or i32 %200, %201
  %203 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %204 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %203, i32 0, i32 0
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %202
  store i32 %208, i32* %206, align 4
  %209 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %210 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %209, i32 0, i32 0
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %210, align 8
  %212 = call i32 @netif_keep_dst(%struct.TYPE_8__* %211)
  %213 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %214 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %213, i32 0, i32 0
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @NETIF_F_TSO, align 4
  %219 = load i32, i32* @NETIF_F_TSO6, align 4
  %220 = or i32 %218, %219
  %221 = and i32 %217, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %192
  %224 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %225 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %224, i32 0, i32 0
  %226 = load %struct.TYPE_8__*, %struct.TYPE_8__** %225, align 8
  %227 = load i32, i32* @PAGE_SIZE, align 4
  %228 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %229 = call i32 @QETH_MAX_BUFFER_ELEMENTS(%struct.qeth_card* %228)
  %230 = sub nsw i32 %229, 1
  %231 = mul nsw i32 %227, %230
  %232 = call i32 @netif_set_gso_max_size(%struct.TYPE_8__* %226, i32 %231)
  br label %233

233:                                              ; preds = %223, %192
  %234 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %235 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %234, i32 0, i32 0
  %236 = load %struct.TYPE_8__*, %struct.TYPE_8__** %235, align 8
  %237 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %238 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %237, i32 0, i32 1
  %239 = load i32, i32* @qeth_poll, align 4
  %240 = load i32, i32* @QETH_NAPI_WEIGHT, align 4
  %241 = call i32 @netif_napi_add(%struct.TYPE_8__* %236, i32* %238, i32 %239, i32 %240)
  %242 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %243 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %242, i32 0, i32 0
  %244 = load %struct.TYPE_8__*, %struct.TYPE_8__** %243, align 8
  %245 = call i32 @register_netdev(%struct.TYPE_8__* %244)
  store i32 %245, i32* %7, align 4
  %246 = load i32, i32* %7, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %256, label %248

248:                                              ; preds = %233
  %249 = load i32, i32* %5, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %253 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %252, i32 0, i32 0
  %254 = load %struct.TYPE_8__*, %struct.TYPE_8__** %253, align 8
  %255 = call i32 @netif_carrier_on(%struct.TYPE_8__* %254)
  br label %256

256:                                              ; preds = %251, %248, %233
  br label %257

257:                                              ; preds = %256, %186
  %258 = load i32, i32* %7, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %257
  %261 = load %struct.qeth_card*, %struct.qeth_card** %4, align 8
  %262 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %261, i32 0, i32 0
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %262, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 5
  store i32* null, i32** %264, align 8
  br label %265

265:                                              ; preds = %260, %257
  %266 = load i32, i32* %7, align 4
  store i32 %266, i32* %3, align 4
  br label %267

267:                                              ; preds = %265, %188, %29
  %268 = load i32, i32* %3, align 4
  ret i32 %268
}

declare dso_local i64 @IS_OSD(%struct.qeth_card*) #1

declare dso_local i64 @IS_OSX(%struct.qeth_card*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @qeth_l3_get_unique_id(%struct.qeth_card*) #1

declare dso_local i32 @IS_VM_NIC(%struct.qeth_card*) #1

declare dso_local i64 @qeth_is_supported6(%struct.qeth_card*, i32) #1

declare dso_local i64 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i32 @qeth_l3_iqd_read_initial_mac(%struct.qeth_card*) #1

declare dso_local i32 @netif_keep_dst(%struct.TYPE_8__*) #1

declare dso_local i32 @netif_set_gso_max_size(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @QETH_MAX_BUFFER_ELEMENTS(%struct.qeth_card*) #1

declare dso_local i32 @netif_napi_add(%struct.TYPE_8__*, i32*, i32, i32) #1

declare dso_local i32 @register_netdev(%struct.TYPE_8__*) #1

declare dso_local i32 @netif_carrier_on(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
