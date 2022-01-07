; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_rx_normal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_rtl_core.c__rtl92e_rx_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i64*, i32, i32, %struct.sk_buff***, %struct.TYPE_5__, %struct.TYPE_6__*, %struct.TYPE_4__*, %struct.rx_desc** }
%struct.sk_buff = type { i64, %struct.net_device*, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 (%struct.net_device*, i32)* }
%struct.TYPE_4__ = type { i32 (%struct.net_device*, %struct.rtllib_rx_stats*, %struct.rx_desc*, %struct.sk_buff*)* }
%struct.rtllib_rx_stats = type { i64, i64, i64, i32, i32, i32, i32, i32 }
%struct.rx_desc = type { i32, i32, i32, i32 }
%struct.rtllib_hdr_1addr = type { i32, i32 }

@RX_MPDU_QUEUE = common dso_local global i32 0, align 4
@RTLLIB_24GHZ_BAND = common dso_local global i32 0, align 4
@NIC_8192E = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@RTLLIB_FTYPE_MGMT = common dso_local global i64 0, align 8
@LED_CTL_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @_rtl92e_rx_normal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_rx_normal(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca %struct.rtllib_hdr_1addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtllib_rx_stats, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.rx_desc*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call %struct.r8192_priv* @rtllib_priv(%struct.net_device* %16)
  store %struct.r8192_priv* %17, %struct.r8192_priv** %3, align 8
  store %struct.rtllib_hdr_1addr* null, %struct.rtllib_hdr_1addr** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %18 = load i32, i32* @RX_MPDU_QUEUE, align 4
  store i32 %18, i32* %10, align 4
  %19 = bitcast %struct.rtllib_rx_stats* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %19, i8 0, i64 48, i1 false)
  %20 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %11, i32 0, i32 4
  %21 = load i32, i32* @RTLLIB_24GHZ_BAND, align 4
  store i32 %21, i32* %20, align 4
  %22 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %11, i32 0, i32 6
  store i32 -98, i32* %22, align 4
  %23 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %24 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* @NIC_8192E, align 4
  %27 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %11, i32 0, i32 3
  store i32 %26, i32* %27, align 8
  br label %28

28:                                               ; preds = %298, %1
  %29 = load i32, i32* %12, align 4
  %30 = add i32 %29, -1
  store i32 %30, i32* %12, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %318

32:                                               ; preds = %28
  %33 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %34 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %33, i32 0, i32 8
  %35 = load %struct.rx_desc**, %struct.rx_desc*** %34, align 8
  %36 = load i32, i32* %10, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.rx_desc*, %struct.rx_desc** %35, i64 %37
  %39 = load %struct.rx_desc*, %struct.rx_desc** %38, align 8
  %40 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %41 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %39, i64 %46
  store %struct.rx_desc* %47, %struct.rx_desc** %13, align 8
  %48 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %49 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %48, i32 0, i32 4
  %50 = load %struct.sk_buff***, %struct.sk_buff**** %49, align 8
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.sk_buff**, %struct.sk_buff*** %50, i64 %52
  %54 = load %struct.sk_buff**, %struct.sk_buff*** %53, align 8
  %55 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %56 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = load i32, i32* %10, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64, i64* %57, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %54, i64 %61
  %63 = load %struct.sk_buff*, %struct.sk_buff** %62, align 8
  store %struct.sk_buff* %63, %struct.sk_buff** %14, align 8
  %64 = load %struct.rx_desc*, %struct.rx_desc** %13, align 8
  %65 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %32
  br label %318

69:                                               ; preds = %32
  %70 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %71 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %70, i32 0, i32 7
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32 (%struct.net_device*, %struct.rtllib_rx_stats*, %struct.rx_desc*, %struct.sk_buff*)*, i32 (%struct.net_device*, %struct.rtllib_rx_stats*, %struct.rx_desc*, %struct.sk_buff*)** %73, align 8
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = load %struct.rx_desc*, %struct.rx_desc** %13, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %78 = call i32 %74(%struct.net_device* %75, %struct.rtllib_rx_stats* %11, %struct.rx_desc* %76, %struct.sk_buff* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %69
  br label %267

81:                                               ; preds = %69
  %82 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %83 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call %struct.sk_buff* @dev_alloc_skb(i32 %84)
  store %struct.sk_buff* %85, %struct.sk_buff** %15, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %87 = icmp ne %struct.sk_buff* %86, null
  %88 = xor i1 %87, true
  %89 = zext i1 %88 to i32
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  br label %267

93:                                               ; preds = %81
  %94 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %95 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to i32*
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %103 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %106 = call i32 @pci_unmap_single(i32 %96, i32 %101, i32 %104, i32 %105)
  %107 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %108 = load %struct.rx_desc*, %struct.rx_desc** %13, align 8
  %109 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @skb_put(%struct.sk_buff* %107, i32 %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %113 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %11, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %11, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %114, %116
  %118 = call i32 @skb_reserve(%struct.sk_buff* %112, i64 %117)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %121 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = sub nsw i64 %122, 4
  %124 = call i32 @skb_trim(%struct.sk_buff* %119, i64 %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = inttoptr i64 %127 to %struct.rtllib_hdr_1addr*
  store %struct.rtllib_hdr_1addr* %128, %struct.rtllib_hdr_1addr** %4, align 8
  %129 = load %struct.rtllib_hdr_1addr*, %struct.rtllib_hdr_1addr** %4, align 8
  %130 = getelementptr inbounds %struct.rtllib_hdr_1addr, %struct.rtllib_hdr_1addr* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @is_multicast_ether_addr(i32 %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %93
  store i32 1, i32* %5, align 4
  br label %135

135:                                              ; preds = %134, %93
  %136 = load %struct.rtllib_hdr_1addr*, %struct.rtllib_hdr_1addr** %4, align 8
  %137 = getelementptr inbounds %struct.rtllib_hdr_1addr, %struct.rtllib_hdr_1addr* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @le16_to_cpu(i32 %138)
  store i64 %139, i64* %7, align 8
  %140 = load i64, i64* %7, align 8
  %141 = call i64 @WLAN_FC_GET_TYPE(i64 %140)
  store i64 %141, i64* %8, align 8
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* @RTLLIB_FTYPE_MGMT, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  store i32 0, i32* %6, align 4
  br label %146

146:                                              ; preds = %145, %135
  %147 = load i32, i32* %6, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %166

149:                                              ; preds = %146
  %150 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %151 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %150, i32 0, i32 6
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %153, align 8
  %155 = icmp ne i32 (%struct.net_device*, i32)* %154, null
  br i1 %155, label %156, label %165

156:                                              ; preds = %149
  %157 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %158 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %157, i32 0, i32 6
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %160, align 8
  %162 = load %struct.net_device*, %struct.net_device** %2, align 8
  %163 = load i32, i32* @LED_CTL_RX, align 4
  %164 = call i32 %161(%struct.net_device* %162, i32 %163)
  br label %165

165:                                              ; preds = %156, %149
  br label %166

166:                                              ; preds = %165, %146
  %167 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %11, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %187

170:                                              ; preds = %166
  %171 = load i64, i64* %8, align 8
  %172 = load i64, i64* @RTLLIB_FTYPE_MGMT, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %180

174:                                              ; preds = %170
  %175 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %176 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  br label %186

180:                                              ; preds = %170
  %181 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %182 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 8
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 8
  br label %186

186:                                              ; preds = %180, %174
  br label %187

187:                                              ; preds = %186, %166
  %188 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %189 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %188, i32 0, i32 2
  %190 = load i64, i64* %189, align 8
  store i64 %190, i64* %9, align 8
  %191 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %192 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %191, i32 0, i32 6
  %193 = load %struct.TYPE_6__*, %struct.TYPE_6__** %192, align 8
  %194 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %195 = call i32 @rtllib_rx(%struct.TYPE_6__* %193, %struct.sk_buff* %194, %struct.rtllib_rx_stats* %11)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %187
  %198 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %199 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %198)
  br label %218

200:                                              ; preds = %187
  %201 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %202 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %203, align 4
  %206 = load i32, i32* %5, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %200
  %209 = load i64, i64* %9, align 8
  %210 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %211 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %210, i32 0, i32 5
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = add nsw i64 %214, %209
  %216 = trunc i64 %215 to i32
  store i32 %216, i32* %212, align 8
  br label %217

217:                                              ; preds = %208, %200
  br label %218

218:                                              ; preds = %217, %197
  %219 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %219, %struct.sk_buff** %14, align 8
  %220 = load %struct.net_device*, %struct.net_device** %2, align 8
  %221 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %222 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %221, i32 0, i32 1
  store %struct.net_device* %220, %struct.net_device** %222, align 8
  %223 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %224 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %225 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %224, i32 0, i32 4
  %226 = load %struct.sk_buff***, %struct.sk_buff**** %225, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.sk_buff**, %struct.sk_buff*** %226, i64 %228
  %230 = load %struct.sk_buff**, %struct.sk_buff*** %229, align 8
  %231 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %232 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %231, i32 0, i32 1
  %233 = load i64*, i64** %232, align 8
  %234 = load i32, i32* %10, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i64, i64* %233, i64 %235
  %237 = load i64, i64* %236, align 8
  %238 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %230, i64 %237
  store %struct.sk_buff* %223, %struct.sk_buff** %238, align 8
  %239 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %240 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %239, i32 0, i32 3
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %243 = call i32 @skb_tail_pointer_rsl(%struct.sk_buff* %242)
  %244 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %245 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %248 = call i32 @pci_map_single(i32 %241, i32 %243, i32 %246, i32 %247)
  %249 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %250 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = inttoptr i64 %251 to i32*
  store i32 %248, i32* %252, align 4
  %253 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %254 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %257 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = inttoptr i64 %258 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = call i64 @pci_dma_mapping_error(i32 %255, i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %266

263:                                              ; preds = %218
  %264 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %265 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %264)
  br label %318

266:                                              ; preds = %218
  br label %267

267:                                              ; preds = %266, %92, %80
  %268 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %269 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = inttoptr i64 %270 to i32*
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.rx_desc*, %struct.rx_desc** %13, align 8
  %274 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %273, i32 0, i32 3
  store i32 %272, i32* %274, align 4
  %275 = load %struct.rx_desc*, %struct.rx_desc** %13, align 8
  %276 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %275, i32 0, i32 0
  store i32 1, i32* %276, align 4
  %277 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %278 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.rx_desc*, %struct.rx_desc** %13, align 8
  %281 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %280, i32 0, i32 2
  store i32 %279, i32* %281, align 4
  %282 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %283 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %282, i32 0, i32 1
  %284 = load i64*, i64** %283, align 8
  %285 = load i32, i32* %10, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i64, i64* %284, i64 %286
  %288 = load i64, i64* %287, align 8
  %289 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %290 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = sub i32 %291, 1
  %293 = zext i32 %292 to i64
  %294 = icmp eq i64 %288, %293
  br i1 %294, label %295, label %298

295:                                              ; preds = %267
  %296 = load %struct.rx_desc*, %struct.rx_desc** %13, align 8
  %297 = getelementptr inbounds %struct.rx_desc, %struct.rx_desc* %296, i32 0, i32 1
  store i32 1, i32* %297, align 4
  br label %298

298:                                              ; preds = %295, %267
  %299 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %300 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %299, i32 0, i32 1
  %301 = load i64*, i64** %300, align 8
  %302 = load i32, i32* %10, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i64, i64* %301, i64 %303
  %305 = load i64, i64* %304, align 8
  %306 = add i64 %305, 1
  %307 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %308 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = zext i32 %309 to i64
  %311 = urem i64 %306, %310
  %312 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %313 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %312, i32 0, i32 1
  %314 = load i64*, i64** %313, align 8
  %315 = load i32, i32* %10, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i64, i64* %314, i64 %316
  store i64 %311, i64* %317, align 8
  br label %28

318:                                              ; preds = %68, %263, %28
  ret void
}

declare dso_local %struct.r8192_priv* @rtllib_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @WLAN_FC_GET_TYPE(i64) #1

declare dso_local i32 @rtllib_rx(%struct.TYPE_6__*, %struct.sk_buff*, %struct.rtllib_rx_stats*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @pci_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_tail_pointer_rsl(%struct.sk_buff*) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
