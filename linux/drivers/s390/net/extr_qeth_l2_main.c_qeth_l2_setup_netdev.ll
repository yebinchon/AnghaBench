; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_setup_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_l2_main.c_qeth_l2_setup_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_card = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32*, i32, i32 }

@qeth_osn_netdev_ops = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4
@qeth_l2_netdev_ops = common dso_local global i32 0, align 4
@IFF_UNICAST_FLT = common dso_local global i32 0, align 4
@NETIF_F_VLAN_CHALLENGED = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@IPA_OUTBOUND_CHECKSUM = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@IPA_OUTBOUND_CHECKSUM_V6 = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@IPA_INBOUND_CHECKSUM = common dso_local global i32 0, align 4
@IPA_INBOUND_CHECKSUM_V6 = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@IPA_OUTBOUND_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@QDIO_MAX_ELEMENTS_PER_BUFFER = common dso_local global i32 0, align 4
@qeth_poll = common dso_local global i32 0, align 4
@QETH_NAPI_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_card*, i32)* @qeth_l2_setup_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_l2_setup_netdev(%struct.qeth_card* %0, i32 %1) #0 {
  %3 = alloca %struct.qeth_card*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qeth_card* %0, %struct.qeth_card** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %7 = call i64 @IS_OSN(%struct.qeth_card* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  %10 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %11 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %10, i32 0, i32 0
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 4
  store i32* @qeth_osn_netdev_ops, i32** %13, align 8
  %14 = load i32, i32* @IFF_NOARP, align 4
  %15 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %16 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %14
  store i32 %20, i32* %18, align 4
  br label %214

21:                                               ; preds = %2
  %22 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %23 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 4, i32* %25, align 8
  %26 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %27 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 4
  store i32* @qeth_l2_netdev_ops, i32** %29, align 8
  %30 = load i32, i32* @IFF_UNICAST_FLT, align 4
  %31 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %32 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = or i32 %35, %30
  store i32 %36, i32* %34, align 8
  %37 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %38 = call i64 @IS_OSM(%struct.qeth_card* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %21
  %41 = load i32, i32* @NETIF_F_VLAN_CHALLENGED, align 4
  %42 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %43 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %41
  store i32 %47, i32* %45, align 4
  br label %68

48:                                               ; preds = %21
  %49 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %50 = call i32 @IS_VM_NIC(%struct.qeth_card* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %54 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %55 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %53
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %52, %48
  %61 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %62 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %63 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %61
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %60, %40
  %69 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %70 = call i64 @IS_OSD(%struct.qeth_card* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %104

72:                                               ; preds = %68
  %73 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %74 = call i32 @IS_VM_NIC(%struct.qeth_card* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %104, label %76

76:                                               ; preds = %72
  %77 = load i32, i32* @NETIF_F_SG, align 4
  %78 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %79 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %77
  store i32 %83, i32* %81, align 4
  %84 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %85 = load i32, i32* @IPA_OUTBOUND_CHECKSUM, align 4
  %86 = call i64 @qeth_is_supported(%struct.qeth_card* %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %103

88:                                               ; preds = %76
  %89 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %90 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %91 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %89
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %97 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %98 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %96
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %88, %76
  br label %104

104:                                              ; preds = %103, %72, %68
  %105 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %106 = load i32, i32* @IPA_OUTBOUND_CHECKSUM_V6, align 4
  %107 = call i64 @qeth_is_supported6(%struct.qeth_card* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %124

109:                                              ; preds = %104
  %110 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %111 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %112 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %110
  store i32 %116, i32* %114, align 8
  %117 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %118 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %119 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %118, i32 0, i32 0
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %117
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %109, %104
  %125 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %126 = load i32, i32* @IPA_INBOUND_CHECKSUM, align 4
  %127 = call i64 @qeth_is_supported(%struct.qeth_card* %125, i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %134, label %129

129:                                              ; preds = %124
  %130 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %131 = load i32, i32* @IPA_INBOUND_CHECKSUM_V6, align 4
  %132 = call i64 @qeth_is_supported6(%struct.qeth_card* %130, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %149

134:                                              ; preds = %129, %124
  %135 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %136 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %137 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %136, i32 0, i32 0
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %135
  store i32 %141, i32* %139, align 8
  %142 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %143 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %144 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %143, i32 0, i32 0
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %142
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %134, %129
  %150 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %151 = load i32, i32* @IPA_OUTBOUND_TSO, align 4
  %152 = call i64 @qeth_is_supported(%struct.qeth_card* %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %169

154:                                              ; preds = %149
  %155 = load i32, i32* @NETIF_F_TSO, align 4
  %156 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %157 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %156, i32 0, i32 0
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %155
  store i32 %161, i32* %159, align 8
  %162 = load i32, i32* @NETIF_F_TSO, align 4
  %163 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %164 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %163, i32 0, i32 0
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %162
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %154, %149
  %170 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %171 = load i32, i32* @IPA_OUTBOUND_TSO, align 4
  %172 = call i64 @qeth_is_supported6(%struct.qeth_card* %170, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %189

174:                                              ; preds = %169
  %175 = load i32, i32* @NETIF_F_TSO6, align 4
  %176 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %177 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %176, i32 0, i32 0
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = or i32 %180, %175
  store i32 %181, i32* %179, align 8
  %182 = load i32, i32* @NETIF_F_TSO6, align 4
  %183 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %184 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %183, i32 0, i32 0
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 4
  %188 = or i32 %187, %182
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %174, %169
  %190 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %191 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %190, i32 0, i32 0
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @NETIF_F_TSO, align 4
  %196 = load i32, i32* @NETIF_F_TSO6, align 4
  %197 = or i32 %195, %196
  %198 = and i32 %194, %197
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %213

200:                                              ; preds = %189
  %201 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %202 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %201, i32 0, i32 0
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  store i32 4, i32* %204, align 8
  %205 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %206 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %205, i32 0, i32 0
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %206, align 8
  %208 = load i32, i32* @PAGE_SIZE, align 4
  %209 = load i32, i32* @QDIO_MAX_ELEMENTS_PER_BUFFER, align 4
  %210 = sub nsw i32 %209, 1
  %211 = mul nsw i32 %208, %210
  %212 = call i32 @netif_set_gso_max_size(%struct.TYPE_5__* %207, i32 %211)
  br label %213

213:                                              ; preds = %200, %189
  br label %214

214:                                              ; preds = %213, %9
  %215 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %216 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %215, i32 0, i32 0
  %217 = load %struct.TYPE_5__*, %struct.TYPE_5__** %216, align 8
  %218 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %219 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %218, i32 0, i32 1
  %220 = load i32, i32* @qeth_poll, align 4
  %221 = load i32, i32* @QETH_NAPI_WEIGHT, align 4
  %222 = call i32 @netif_napi_add(%struct.TYPE_5__* %217, i32* %219, i32 %220, i32 %221)
  %223 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %224 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %223, i32 0, i32 0
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %224, align 8
  %226 = call i32 @register_netdev(%struct.TYPE_5__* %225)
  store i32 %226, i32* %5, align 4
  %227 = load i32, i32* %5, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %237, label %229

229:                                              ; preds = %214
  %230 = load i32, i32* %4, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %237

232:                                              ; preds = %229
  %233 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %234 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %233, i32 0, i32 0
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %234, align 8
  %236 = call i32 @netif_carrier_on(%struct.TYPE_5__* %235)
  br label %237

237:                                              ; preds = %232, %229, %214
  %238 = load i32, i32* %5, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %237
  %241 = load %struct.qeth_card*, %struct.qeth_card** %3, align 8
  %242 = getelementptr inbounds %struct.qeth_card, %struct.qeth_card* %241, i32 0, i32 0
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %243, i32 0, i32 4
  store i32* null, i32** %244, align 8
  br label %245

245:                                              ; preds = %240, %237
  %246 = load i32, i32* %5, align 4
  ret i32 %246
}

declare dso_local i64 @IS_OSN(%struct.qeth_card*) #1

declare dso_local i64 @IS_OSM(%struct.qeth_card*) #1

declare dso_local i32 @IS_VM_NIC(%struct.qeth_card*) #1

declare dso_local i64 @IS_OSD(%struct.qeth_card*) #1

declare dso_local i64 @qeth_is_supported(%struct.qeth_card*, i32) #1

declare dso_local i64 @qeth_is_supported6(%struct.qeth_card*, i32) #1

declare dso_local i32 @netif_set_gso_max_size(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @netif_napi_add(%struct.TYPE_5__*, i32*, i32, i32) #1

declare dso_local i32 @register_netdev(%struct.TYPE_5__*) #1

declare dso_local i32 @netif_carrier_on(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
