; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_process_mac_rx_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_process_mac_rx_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { %struct.net_device* }
%struct.net_device = type { i64, i32 }
%struct.rx_ring = type { i32, i32, i32, i32, %struct.napi_struct }
%struct.napi_struct = type { i32 }
%struct.ib_mac_iocb_rsp = type { i32, i32, i32 }
%struct.sk_buff = type { i64, i64, i32, i32, i32 }
%struct.bq_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i8* }
%struct.iphdr = type { i32 }

@ETH_HLEN = common dso_local global i64 0, align 8
@IB_MAC_IOCB_RSP_ERR_MASK = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Segment too small, dropping.\0A\00", align 1
@rx_status = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [77 x i8] c"%d bytes of headers and data in large. Chain page to new skb and pull tail.\0A\00", align 1
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@IB_MAC_CSUM_ERR_MASK = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_T = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"TCP checksum done!\0A\00", align 1
@CHECKSUM_UNNECESSARY = common dso_local global i64 0, align 8
@IB_MAC_IOCB_RSP_U = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_V4 = common dso_local global i32 0, align 4
@IP_MF = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"UDP checksum done!\0A\00", align 1
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*, i64, i32)* @ql_process_mac_rx_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_process_mac_rx_page(%struct.ql_adapter* %0, %struct.rx_ring* %1, %struct.ib_mac_iocb_rsp* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.ql_adapter*, align 8
  %7 = alloca %struct.rx_ring*, align 8
  %8 = alloca %struct.ib_mac_iocb_rsp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.bq_desc*, align 8
  %15 = alloca %struct.napi_struct*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.iphdr*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %6, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %7, align 8
  store %struct.ib_mac_iocb_rsp* %2, %struct.ib_mac_iocb_rsp** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %19 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %18, i32 0, i32 0
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %11, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %22 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %23 = call %struct.bq_desc* @ql_get_curr_lchunk(%struct.ql_adapter* %21, %struct.rx_ring* %22)
  store %struct.bq_desc* %23, %struct.bq_desc** %14, align 8
  %24 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %25 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %24, i32 0, i32 4
  store %struct.napi_struct* %25, %struct.napi_struct** %15, align 8
  %26 = load i64, i64* @ETH_HLEN, align 8
  store i64 %26, i64* %16, align 8
  %27 = load %struct.net_device*, %struct.net_device** %11, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %27, i64 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %12, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %31 = icmp ne %struct.sk_buff* %30, null
  br i1 %31, label %43, label %32

32:                                               ; preds = %5
  %33 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %34 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.bq_desc*, %struct.bq_desc** %14, align 8
  %38 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @put_page(i32 %41)
  br label %275

43:                                               ; preds = %5
  %44 = load %struct.bq_desc*, %struct.bq_desc** %14, align 8
  %45 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %13, align 8
  %49 = load i8*, i8** %13, align 8
  %50 = call i32 @prefetch(i8* %49)
  %51 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %52 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @IB_MAC_IOCB_RSP_ERR_MASK, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %43
  %58 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %59 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %60 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %63 = call i32 @ql_categorize_rx_err(%struct.ql_adapter* %58, i32 %61, %struct.rx_ring* %62)
  br label %266

64:                                               ; preds = %43
  %65 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %66 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %67 = load i8*, i8** %13, align 8
  %68 = call i32 @ql_update_mac_hdr_len(%struct.ql_adapter* %65, %struct.ib_mac_iocb_rsp* %66, i8* %67, i64* %16)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.net_device*, %struct.net_device** %11, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %16, align 8
  %76 = add i64 %74, %75
  %77 = icmp ugt i64 %71, %76
  br i1 %77, label %78, label %89

78:                                               ; preds = %64
  %79 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %80 = load i32, i32* @drv, align 4
  %81 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %82 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %81, i32 0, i32 0
  %83 = load %struct.net_device*, %struct.net_device** %82, align 8
  %84 = call i32 @netif_err(%struct.ql_adapter* %79, i32 %80, %struct.net_device* %83, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %85 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %86 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %266

89:                                               ; preds = %64
  %90 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %91 = load i8*, i8** %13, align 8
  %92 = load i64, i64* %16, align 8
  %93 = call i32 @skb_put_data(%struct.sk_buff* %90, i8* %91, i64 %92)
  %94 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %95 = load i32, i32* @rx_status, align 4
  %96 = load i32, i32* @KERN_DEBUG, align 4
  %97 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %98 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %97, i32 0, i32 0
  %99 = load %struct.net_device*, %struct.net_device** %98, align 8
  %100 = load i64, i64* %9, align 8
  %101 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %94, i32 %95, i32 %96, %struct.net_device* %99, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i64 %100)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %103 = load %struct.bq_desc*, %struct.bq_desc** %14, align 8
  %104 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.bq_desc*, %struct.bq_desc** %14, align 8
  %109 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %16, align 8
  %114 = add i64 %112, %113
  %115 = load i64, i64* %9, align 8
  %116 = load i64, i64* %16, align 8
  %117 = sub i64 %115, %116
  %118 = call i32 @skb_fill_page_desc(%struct.sk_buff* %102, i32 0, i32 %107, i64 %114, i64 %117)
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %16, align 8
  %121 = sub i64 %119, %120
  %122 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, %121
  store i64 %125, i64* %123, align 8
  %126 = load i64, i64* %9, align 8
  %127 = load i64, i64* %16, align 8
  %128 = sub i64 %126, %127
  %129 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = add i64 %132, %128
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %130, align 8
  %135 = load i64, i64* %9, align 8
  %136 = load i64, i64* %16, align 8
  %137 = sub i64 %135, %136
  %138 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = add i64 %141, %137
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %139, align 4
  %144 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %145 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  %148 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %152 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = sext i32 %153 to i64
  %155 = add nsw i64 %154, %150
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %152, align 4
  %157 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %158 = load %struct.net_device*, %struct.net_device** %11, align 8
  %159 = call i32 @eth_type_trans(%struct.sk_buff* %157, %struct.net_device* %158)
  %160 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %163 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %162)
  %164 = load %struct.net_device*, %struct.net_device** %11, align 8
  %165 = getelementptr inbounds %struct.net_device, %struct.net_device* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %238

170:                                              ; preds = %89
  %171 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %172 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @IB_MAC_CSUM_ERR_MASK, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %238, label %177

177:                                              ; preds = %170
  %178 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %179 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @IB_MAC_IOCB_RSP_T, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %195

184:                                              ; preds = %177
  %185 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %186 = load i32, i32* @rx_status, align 4
  %187 = load i32, i32* @KERN_DEBUG, align 4
  %188 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %189 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %188, i32 0, i32 0
  %190 = load %struct.net_device*, %struct.net_device** %189, align 8
  %191 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %185, i32 %186, i32 %187, %struct.net_device* %190, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %192 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %193 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %194 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %193, i32 0, i32 1
  store i64 %192, i64* %194, align 8
  br label %237

195:                                              ; preds = %177
  %196 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %197 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* @IB_MAC_IOCB_RSP_U, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %236

202:                                              ; preds = %195
  %203 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %204 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @IB_MAC_IOCB_RSP_V4, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %236

209:                                              ; preds = %202
  %210 = load i8*, i8** %13, align 8
  %211 = bitcast i8* %210 to i32*
  %212 = load i64, i64* %16, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  %214 = bitcast i32* %213 to %struct.iphdr*
  store %struct.iphdr* %214, %struct.iphdr** %17, align 8
  %215 = load %struct.iphdr*, %struct.iphdr** %17, align 8
  %216 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @IP_MF, align 4
  %219 = load i32, i32* @IP_OFFSET, align 4
  %220 = or i32 %218, %219
  %221 = call i32 @htons(i32 %220)
  %222 = and i32 %217, %221
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %235, label %224

224:                                              ; preds = %209
  %225 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %226 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %227 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %226, i32 0, i32 1
  store i64 %225, i64* %227, align 8
  %228 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %229 = load i32, i32* @rx_status, align 4
  %230 = load i32, i32* @KERN_DEBUG, align 4
  %231 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %232 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %231, i32 0, i32 0
  %233 = load %struct.net_device*, %struct.net_device** %232, align 8
  %234 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %228, i32 %229, i32 %230, %struct.net_device* %233, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %235

235:                                              ; preds = %224, %209
  br label %236

236:                                              ; preds = %235, %202, %195
  br label %237

237:                                              ; preds = %236, %184
  br label %238

238:                                              ; preds = %237, %170, %89
  %239 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %240 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %241 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @skb_record_rx_queue(%struct.sk_buff* %239, i32 %242)
  %244 = load i32, i32* %10, align 4
  %245 = icmp ne i32 %244, 65535
  br i1 %245, label %246, label %252

246:                                              ; preds = %238
  %247 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %248 = load i32, i32* @ETH_P_8021Q, align 4
  %249 = call i32 @htons(i32 %248)
  %250 = load i32, i32* %10, align 4
  %251 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %247, i32 %249, i32 %250)
  br label %252

252:                                              ; preds = %246, %238
  %253 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %254 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %257 = icmp eq i64 %255, %256
  br i1 %257, label %258, label %262

258:                                              ; preds = %252
  %259 = load %struct.napi_struct*, %struct.napi_struct** %15, align 8
  %260 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %261 = call i32 @napi_gro_receive(%struct.napi_struct* %259, %struct.sk_buff* %260)
  br label %265

262:                                              ; preds = %252
  %263 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %264 = call i32 @netif_receive_skb(%struct.sk_buff* %263)
  br label %265

265:                                              ; preds = %262, %258
  br label %275

266:                                              ; preds = %78, %57
  %267 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %268 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %267)
  %269 = load %struct.bq_desc*, %struct.bq_desc** %14, align 8
  %270 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 @put_page(i32 %273)
  br label %275

275:                                              ; preds = %266, %265, %32
  ret void
}

declare dso_local %struct.bq_desc* @ql_get_curr_lchunk(%struct.ql_adapter*, %struct.rx_ring*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i64) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @prefetch(i8*) #1

declare dso_local i32 @ql_categorize_rx_err(%struct.ql_adapter*, i32, %struct.rx_ring*) #1

declare dso_local i32 @ql_update_mac_hdr_len(%struct.ql_adapter*, %struct.ib_mac_iocb_rsp*, i8*, i64*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i64) #1

declare dso_local i32 @netif_printk(%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32, i64, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @napi_gro_receive(%struct.napi_struct*, %struct.sk_buff*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
