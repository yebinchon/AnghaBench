; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_process_mac_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_process_mac_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { %struct.net_device*, i32, i32 }
%struct.net_device = type { i64, i32 }
%struct.rx_ring = type { i32, i32, i32, i32, i32 }
%struct.ib_mac_iocb_rsp = type { i32, i32, i32 }
%struct.sk_buff = type { i64, i64, i64, i32 }
%struct.bq_desc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sk_buff* }
%struct.iphdr = type { i32 }

@NET_IP_ALIGN = common dso_local global i64 0, align 8
@mapaddr = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_ERR_MASK = common dso_local global i32 0, align 4
@QL_SELFTEST = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@IB_MAC_IOCB_RSP_M_MASK = common dso_local global i32 0, align 4
@rx_status = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s Multicast.\0A\00", align 1
@IB_MAC_IOCB_RSP_M_HASH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Hash\00", align 1
@IB_MAC_IOCB_RSP_M_REG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"Registered\00", align 1
@IB_MAC_IOCB_RSP_M_PROM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Promiscuous\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IB_MAC_IOCB_RSP_P = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"Promiscuous Packet.\0A\00", align 1
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@IB_MAC_CSUM_ERR_MASK = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_T = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"TCP checksum done!\0A\00", align 1
@CHECKSUM_UNNECESSARY = common dso_local global i64 0, align 8
@IB_MAC_IOCB_RSP_U = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_V4 = common dso_local global i32 0, align 4
@IP_MF = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"UDP checksum done!\0A\00", align 1
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*, i64, i32)* @ql_process_mac_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_process_mac_rx_skb(%struct.ql_adapter* %0, %struct.rx_ring* %1, %struct.ib_mac_iocb_rsp* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.ql_adapter*, align 8
  %7 = alloca %struct.rx_ring*, align 8
  %8 = alloca %struct.ib_mac_iocb_rsp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.bq_desc*, align 8
  %15 = alloca %struct.iphdr*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %6, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %7, align 8
  store %struct.ib_mac_iocb_rsp* %2, %struct.ib_mac_iocb_rsp** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %11, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  %19 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %20 = call %struct.bq_desc* @ql_get_curr_sbuf(%struct.rx_ring* %19)
  store %struct.bq_desc* %20, %struct.bq_desc** %14, align 8
  %21 = load %struct.bq_desc*, %struct.bq_desc** %14, align 8
  %22 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  store %struct.sk_buff* %24, %struct.sk_buff** %12, align 8
  %25 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %26 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %25, i32 0, i32 0
  %27 = load %struct.net_device*, %struct.net_device** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @NET_IP_ALIGN, align 8
  %30 = add nsw i64 %28, %29
  %31 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %27, i64 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %13, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %33 = icmp eq %struct.sk_buff* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %5
  %35 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %36 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %303

39:                                               ; preds = %5
  %40 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %41 = load i64, i64* @NET_IP_ALIGN, align 8
  %42 = call i32 @skb_reserve(%struct.sk_buff* %40, i64 %41)
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %44 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.bq_desc*, %struct.bq_desc** %14, align 8
  %47 = load i32, i32* @mapaddr, align 4
  %48 = call i32 @dma_unmap_addr(%struct.bq_desc* %46, i32 %47)
  %49 = load %struct.bq_desc*, %struct.bq_desc** %14, align 8
  %50 = load i32, i32* @maplen, align 4
  %51 = call i32 @dma_unmap_len(%struct.bq_desc* %49, i32 %50)
  %52 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %53 = call i32 @pci_dma_sync_single_for_cpu(i32 %45, i32 %48, i32 %51, i32 %52)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @skb_put_data(%struct.sk_buff* %54, i64 %57, i64 %58)
  %60 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %61 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.bq_desc*, %struct.bq_desc** %14, align 8
  %64 = load i32, i32* @mapaddr, align 4
  %65 = call i32 @dma_unmap_addr(%struct.bq_desc* %63, i32 %64)
  %66 = load %struct.bq_desc*, %struct.bq_desc** %14, align 8
  %67 = load i32, i32* @maplen, align 4
  %68 = call i32 @dma_unmap_len(%struct.bq_desc* %66, i32 %67)
  %69 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %70 = call i32 @pci_dma_sync_single_for_device(i32 %62, i32 %65, i32 %68, i32 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %71, %struct.sk_buff** %12, align 8
  %72 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %73 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @IB_MAC_IOCB_RSP_ERR_MASK, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %39
  %79 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %80 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %81 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %84 = call i32 @ql_categorize_rx_err(%struct.ql_adapter* %79, i32 %82, %struct.rx_ring* %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %86 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %85)
  br label %303

87:                                               ; preds = %39
  %88 = load i32, i32* @QL_SELFTEST, align 4
  %89 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %90 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %89, i32 0, i32 1
  %91 = call i64 @test_bit(i32 %88, i32* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %96 = call i32 @ql_check_lb_frame(%struct.ql_adapter* %94, %struct.sk_buff* %95)
  %97 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %98 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %97)
  br label %303

99:                                               ; preds = %87
  %100 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %101 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.net_device*, %struct.net_device** %11, align 8
  %104 = getelementptr inbounds %struct.net_device, %struct.net_device* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @ETH_HLEN, align 8
  %107 = add nsw i64 %105, %106
  %108 = icmp sgt i64 %102, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %99
  %110 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %111 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %110)
  %112 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %113 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  br label %303

116:                                              ; preds = %99
  %117 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @prefetch(i64 %119)
  %121 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %122 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @IB_MAC_IOCB_RSP_M_MASK, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %166

127:                                              ; preds = %116
  %128 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %129 = load i32, i32* @rx_status, align 4
  %130 = load i32, i32* @KERN_DEBUG, align 4
  %131 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %132 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %131, i32 0, i32 0
  %133 = load %struct.net_device*, %struct.net_device** %132, align 8
  %134 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %135 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @IB_MAC_IOCB_RSP_M_MASK, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* @IB_MAC_IOCB_RSP_M_HASH, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %127
  br label %163

142:                                              ; preds = %127
  %143 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %144 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @IB_MAC_IOCB_RSP_M_MASK, align 4
  %147 = and i32 %145, %146
  %148 = load i32, i32* @IB_MAC_IOCB_RSP_M_REG, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %142
  br label %161

151:                                              ; preds = %142
  %152 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %153 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @IB_MAC_IOCB_RSP_M_MASK, align 4
  %156 = and i32 %154, %155
  %157 = load i32, i32* @IB_MAC_IOCB_RSP_M_PROM, align 4
  %158 = icmp eq i32 %156, %157
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  br label %161

161:                                              ; preds = %151, %150
  %162 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), %150 ], [ %160, %151 ]
  br label %163

163:                                              ; preds = %161, %141
  %164 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %141 ], [ %162, %161 ]
  %165 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %128, i32 %129, i32 %130, %struct.net_device* %133, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %164)
  br label %166

166:                                              ; preds = %163, %116
  %167 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %168 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @IB_MAC_IOCB_RSP_P, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %181

173:                                              ; preds = %166
  %174 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %175 = load i32, i32* @rx_status, align 4
  %176 = load i32, i32* @KERN_DEBUG, align 4
  %177 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %178 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %177, i32 0, i32 0
  %179 = load %struct.net_device*, %struct.net_device** %178, align 8
  %180 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %174, i32 %175, i32 %176, %struct.net_device* %179, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %181

181:                                              ; preds = %173, %166
  %182 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %183 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 4
  %186 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %187 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %190 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %192, %188
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %190, align 4
  %195 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %196 = load %struct.net_device*, %struct.net_device** %11, align 8
  %197 = call i32 @eth_type_trans(%struct.sk_buff* %195, %struct.net_device* %196)
  %198 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %199 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %198, i32 0, i32 3
  store i32 %197, i32* %199, align 8
  %200 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %201 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %200)
  %202 = load %struct.net_device*, %struct.net_device** %11, align 8
  %203 = getelementptr inbounds %struct.net_device, %struct.net_device* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %275

208:                                              ; preds = %181
  %209 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %210 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @IB_MAC_CSUM_ERR_MASK, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %275, label %215

215:                                              ; preds = %208
  %216 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %217 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* @IB_MAC_IOCB_RSP_T, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %233

222:                                              ; preds = %215
  %223 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %224 = load i32, i32* @rx_status, align 4
  %225 = load i32, i32* @KERN_DEBUG, align 4
  %226 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %227 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %226, i32 0, i32 0
  %228 = load %struct.net_device*, %struct.net_device** %227, align 8
  %229 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %223, i32 %224, i32 %225, %struct.net_device* %228, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0))
  %230 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %231 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %232 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %231, i32 0, i32 1
  store i64 %230, i64* %232, align 8
  br label %274

233:                                              ; preds = %215
  %234 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %235 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load i32, i32* @IB_MAC_IOCB_RSP_U, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %273

240:                                              ; preds = %233
  %241 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %8, align 8
  %242 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @IB_MAC_IOCB_RSP_V4, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %273

247:                                              ; preds = %240
  %248 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %249 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %248, i32 0, i32 2
  %250 = load i64, i64* %249, align 8
  %251 = inttoptr i64 %250 to %struct.iphdr*
  store %struct.iphdr* %251, %struct.iphdr** %15, align 8
  %252 = load %struct.iphdr*, %struct.iphdr** %15, align 8
  %253 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @IP_MF, align 4
  %256 = load i32, i32* @IP_OFFSET, align 4
  %257 = or i32 %255, %256
  %258 = call i32 @htons(i32 %257)
  %259 = and i32 %254, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %272, label %261

261:                                              ; preds = %247
  %262 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %263 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %264 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %263, i32 0, i32 1
  store i64 %262, i64* %264, align 8
  %265 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %266 = load i32, i32* @rx_status, align 4
  %267 = load i32, i32* @KERN_DEBUG, align 4
  %268 = load %struct.ql_adapter*, %struct.ql_adapter** %6, align 8
  %269 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %268, i32 0, i32 0
  %270 = load %struct.net_device*, %struct.net_device** %269, align 8
  %271 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %265, i32 %266, i32 %267, %struct.net_device* %270, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %272

272:                                              ; preds = %261, %247
  br label %273

273:                                              ; preds = %272, %240, %233
  br label %274

274:                                              ; preds = %273, %222
  br label %275

275:                                              ; preds = %274, %208, %181
  %276 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %277 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %278 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @skb_record_rx_queue(%struct.sk_buff* %276, i32 %279)
  %281 = load i32, i32* %10, align 4
  %282 = icmp ne i32 %281, 65535
  br i1 %282, label %283, label %289

283:                                              ; preds = %275
  %284 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %285 = load i32, i32* @ETH_P_8021Q, align 4
  %286 = call i32 @htons(i32 %285)
  %287 = load i32, i32* %10, align 4
  %288 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %284, i32 %286, i32 %287)
  br label %289

289:                                              ; preds = %283, %275
  %290 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %291 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %294 = icmp eq i64 %292, %293
  br i1 %294, label %295, label %300

295:                                              ; preds = %289
  %296 = load %struct.rx_ring*, %struct.rx_ring** %7, align 8
  %297 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %296, i32 0, i32 0
  %298 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %299 = call i32 @napi_gro_receive(i32* %297, %struct.sk_buff* %298)
  br label %303

300:                                              ; preds = %289
  %301 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %302 = call i32 @netif_receive_skb(%struct.sk_buff* %301)
  br label %303

303:                                              ; preds = %34, %78, %93, %109, %300, %295
  ret void
}

declare dso_local %struct.bq_desc* @ql_get_curr_sbuf(%struct.rx_ring*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.bq_desc*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.bq_desc*, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i64, i64) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @ql_categorize_rx_err(%struct.ql_adapter*, i32, %struct.rx_ring*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ql_check_lb_frame(%struct.ql_adapter*, %struct.sk_buff*) #1

declare dso_local i32 @prefetch(i64) #1

declare dso_local i32 @netif_printk(%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
