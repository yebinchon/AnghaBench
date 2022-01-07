; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_build_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_build_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.ql_adapter = type { i32, i32 }
%struct.rx_ring = type { i32 }
%struct.ib_mac_iocb_rsp = type { i32, i32, i32, i32 }
%struct.bq_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.sk_buff* }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ETH_HLEN = common dso_local global i64 0, align 8
@IB_MAC_IOCB_RSP_HV = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_HS = common dso_local global i32 0, align 4
@rx_status = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Header of %d bytes in small buffer.\0A\00", align 1
@mapaddr = common dso_local global i32 0, align 4
@maplen = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"No Data buffer in this packet.\0A\00", align 1
@IB_MAC_IOCB_RSP_DS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"Headers in small, data of %d bytes in small, combine them.\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%d bytes in a single small buffer.\0A\00", align 1
@IB_MAC_IOCB_RSP_DL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"Header in small, %d bytes in large. Chain large to small!\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Chaining page at offset = %d, for %d bytes  to skb.\0A\00", align 1
@probe = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"No skb available, drop the packet.\0A\00", align 1
@NET_IP_ALIGN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [77 x i8] c"%d bytes of headers and data in large. Chain page to new skb and pull tail.\0A\00", align 1
@.str.8 = private unnamed_addr constant [47 x i8] c"%d bytes of headers & data in chain of large.\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"Adding page %d to skb for %d bytes.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*)* @ql_build_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ql_build_rx_skb(%struct.ql_adapter* %0, %struct.rx_ring* %1, %struct.ib_mac_iocb_rsp* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ql_adapter*, align 8
  %6 = alloca %struct.rx_ring*, align 8
  %7 = alloca %struct.ib_mac_iocb_rsp*, align 8
  %8 = alloca %struct.bq_desc*, align 8
  %9 = alloca %struct.bq_desc*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %5, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %6, align 8
  store %struct.ib_mac_iocb_rsp* %2, %struct.ib_mac_iocb_rsp** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  %16 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %17 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %21 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i64, i64* @ETH_HLEN, align 8
  store i64 %24, i64* %13, align 8
  %25 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %26 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IB_MAC_IOCB_RSP_HV, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %73

31:                                               ; preds = %3
  %32 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %33 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IB_MAC_IOCB_RSP_HS, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %73

38:                                               ; preds = %31
  %39 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %40 = load i32, i32* @rx_status, align 4
  %41 = load i32, i32* @KERN_DEBUG, align 4
  %42 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %39, i32 %40, i32 %41, i32 %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %48 = call %struct.bq_desc* @ql_get_curr_sbuf(%struct.rx_ring* %47)
  store %struct.bq_desc* %48, %struct.bq_desc** %9, align 8
  %49 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %50 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %53 = load i32, i32* @mapaddr, align 4
  %54 = call i32 @dma_unmap_addr(%struct.bq_desc* %52, i32 %53)
  %55 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %56 = load i32, i32* @maplen, align 4
  %57 = call i32 @dma_unmap_len(%struct.bq_desc* %55, i32 %56)
  %58 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %59 = call i32 @pci_unmap_single(i32 %51, i32 %54, i32 %57, i32 %58)
  %60 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %61 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load %struct.sk_buff*, %struct.sk_buff** %62, align 8
  store %struct.sk_buff* %63, %struct.sk_buff** %10, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @ql_realign_skb(%struct.sk_buff* %64, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @skb_put(%struct.sk_buff* %67, i32 %68)
  %70 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %71 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %72, align 8
  br label %73

73:                                               ; preds = %38, %31, %3
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %89

80:                                               ; preds = %73
  %81 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %82 = load i32, i32* @rx_status, align 4
  %83 = load i32, i32* @KERN_DEBUG, align 4
  %84 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %85 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %81, i32 %82, i32 %83, i32 %86, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %88 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %88, %struct.sk_buff** %4, align 8
  br label %448

89:                                               ; preds = %73
  %90 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %91 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @IB_MAC_IOCB_RSP_DS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %181

96:                                               ; preds = %89
  %97 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %98 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @IB_MAC_IOCB_RSP_HS, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %145

103:                                              ; preds = %96
  %104 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %105 = load i32, i32* @rx_status, align 4
  %106 = load i32, i32* @KERN_DEBUG, align 4
  %107 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %108 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %104, i32 %105, i32 %106, i32 %109, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  %112 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %113 = call %struct.bq_desc* @ql_get_curr_sbuf(%struct.rx_ring* %112)
  store %struct.bq_desc* %113, %struct.bq_desc** %9, align 8
  %114 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %115 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %118 = load i32, i32* @mapaddr, align 4
  %119 = call i32 @dma_unmap_addr(%struct.bq_desc* %117, i32 %118)
  %120 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %121 = load i32, i32* @maplen, align 4
  %122 = call i32 @dma_unmap_len(%struct.bq_desc* %120, i32 %121)
  %123 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %124 = call i32 @pci_dma_sync_single_for_cpu(i32 %116, i32 %119, i32 %122, i32 %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %126 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %127 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  %129 = load %struct.sk_buff*, %struct.sk_buff** %128, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @skb_put_data(%struct.sk_buff* %125, i32 %131, i32 %132)
  %134 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %135 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %138 = load i32, i32* @mapaddr, align 4
  %139 = call i32 @dma_unmap_addr(%struct.bq_desc* %137, i32 %138)
  %140 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %141 = load i32, i32* @maplen, align 4
  %142 = call i32 @dma_unmap_len(%struct.bq_desc* %140, i32 %141)
  %143 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %144 = call i32 @pci_dma_sync_single_for_device(i32 %136, i32 %139, i32 %142, i32 %143)
  br label %180

145:                                              ; preds = %96
  %146 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %147 = load i32, i32* @rx_status, align 4
  %148 = load i32, i32* @KERN_DEBUG, align 4
  %149 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %150 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %11, align 4
  %153 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %146, i32 %147, i32 %148, i32 %151, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %152)
  %154 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %155 = call %struct.bq_desc* @ql_get_curr_sbuf(%struct.rx_ring* %154)
  store %struct.bq_desc* %155, %struct.bq_desc** %9, align 8
  %156 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %157 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load %struct.sk_buff*, %struct.sk_buff** %158, align 8
  store %struct.sk_buff* %159, %struct.sk_buff** %10, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %161 = load i32, i32* %11, align 4
  %162 = call i32 @ql_realign_skb(%struct.sk_buff* %160, i32 %161)
  %163 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @skb_put(%struct.sk_buff* %163, i32 %164)
  %166 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %167 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %170 = load i32, i32* @mapaddr, align 4
  %171 = call i32 @dma_unmap_addr(%struct.bq_desc* %169, i32 %170)
  %172 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %173 = load i32, i32* @maplen, align 4
  %174 = call i32 @dma_unmap_len(%struct.bq_desc* %172, i32 %173)
  %175 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %176 = call i32 @pci_unmap_single(i32 %168, i32 %171, i32 %174, i32 %175)
  %177 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %178 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %179, align 8
  br label %180

180:                                              ; preds = %145, %103
  br label %446

181:                                              ; preds = %89
  %182 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %183 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @IB_MAC_IOCB_RSP_DL, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %330

188:                                              ; preds = %181
  %189 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %190 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @IB_MAC_IOCB_RSP_HS, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %248

195:                                              ; preds = %188
  %196 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %197 = load i32, i32* @rx_status, align 4
  %198 = load i32, i32* @KERN_DEBUG, align 4
  %199 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %200 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %11, align 4
  %203 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %196, i32 %197, i32 %198, i32 %201, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %202)
  %204 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %205 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %206 = call %struct.bq_desc* @ql_get_curr_lchunk(%struct.ql_adapter* %204, %struct.rx_ring* %205)
  store %struct.bq_desc* %206, %struct.bq_desc** %8, align 8
  %207 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %208 = load i32, i32* @rx_status, align 4
  %209 = load i32, i32* @KERN_DEBUG, align 4
  %210 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %211 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.bq_desc*, %struct.bq_desc** %8, align 8
  %214 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %11, align 4
  %219 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %207, i32 %208, i32 %209, i32 %212, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %217, i32 %218)
  %220 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %221 = load %struct.bq_desc*, %struct.bq_desc** %8, align 8
  %222 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.bq_desc*, %struct.bq_desc** %8, align 8
  %227 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load i32, i32* %11, align 4
  %232 = call i32 @skb_fill_page_desc(%struct.sk_buff* %220, i32 0, i32 %225, i32 %230, i32 %231)
  %233 = load i32, i32* %11, align 4
  %234 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %235 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, %233
  store i32 %237, i32* %235, align 4
  %238 = load i32, i32* %11, align 4
  %239 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %240 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %241, %238
  store i32 %242, i32* %240, align 4
  %243 = load i32, i32* %11, align 4
  %244 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %245 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, %243
  store i32 %247, i32* %245, align 4
  br label %329

248:                                              ; preds = %188
  %249 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %250 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %251 = call %struct.bq_desc* @ql_get_curr_lchunk(%struct.ql_adapter* %249, %struct.rx_ring* %250)
  store %struct.bq_desc* %251, %struct.bq_desc** %8, align 8
  %252 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %253 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %11, align 4
  %256 = call %struct.sk_buff* @netdev_alloc_skb(i32 %254, i32 %255)
  store %struct.sk_buff* %256, %struct.sk_buff** %10, align 8
  %257 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %258 = icmp eq %struct.sk_buff* %257, null
  br i1 %258, label %259, label %267

259:                                              ; preds = %248
  %260 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %261 = load i32, i32* @probe, align 4
  %262 = load i32, i32* @KERN_DEBUG, align 4
  %263 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %264 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %260, i32 %261, i32 %262, i32 %265, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %448

267:                                              ; preds = %248
  %268 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %269 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = load %struct.bq_desc*, %struct.bq_desc** %8, align 8
  %272 = load i32, i32* @mapaddr, align 4
  %273 = call i32 @dma_unmap_addr(%struct.bq_desc* %271, i32 %272)
  %274 = load %struct.bq_desc*, %struct.bq_desc** %8, align 8
  %275 = load i32, i32* @maplen, align 4
  %276 = call i32 @dma_unmap_len(%struct.bq_desc* %274, i32 %275)
  %277 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %278 = call i32 @pci_unmap_page(i32 %270, i32 %273, i32 %276, i32 %277)
  %279 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %280 = load i32, i32* @NET_IP_ALIGN, align 4
  %281 = call i32 @skb_reserve(%struct.sk_buff* %279, i32 %280)
  %282 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %283 = load i32, i32* @rx_status, align 4
  %284 = load i32, i32* @KERN_DEBUG, align 4
  %285 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %286 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = load i32, i32* %11, align 4
  %289 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %282, i32 %283, i32 %284, i32 %287, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.7, i64 0, i64 0), i32 %288)
  %290 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %291 = load %struct.bq_desc*, %struct.bq_desc** %8, align 8
  %292 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = load %struct.bq_desc*, %struct.bq_desc** %8, align 8
  %297 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* %11, align 4
  %302 = call i32 @skb_fill_page_desc(%struct.sk_buff* %290, i32 0, i32 %295, i32 %300, i32 %301)
  %303 = load i32, i32* %11, align 4
  %304 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %305 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = add nsw i32 %306, %303
  store i32 %307, i32* %305, align 4
  %308 = load i32, i32* %11, align 4
  %309 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %310 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = add nsw i32 %311, %308
  store i32 %312, i32* %310, align 4
  %313 = load i32, i32* %11, align 4
  %314 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %315 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %316, %313
  store i32 %317, i32* %315, align 4
  %318 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %319 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %320 = load %struct.bq_desc*, %struct.bq_desc** %8, align 8
  %321 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @ql_update_mac_hdr_len(%struct.ql_adapter* %318, %struct.ib_mac_iocb_rsp* %319, i32 %324, i64* %13)
  %326 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %327 = load i64, i64* %13, align 8
  %328 = call i32 @__pskb_pull_tail(%struct.sk_buff* %326, i64 %327)
  br label %329

329:                                              ; preds = %267, %195
  br label %445

330:                                              ; preds = %181
  store i32 0, i32* %15, align 4
  %331 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %332 = call %struct.bq_desc* @ql_get_curr_sbuf(%struct.rx_ring* %331)
  store %struct.bq_desc* %332, %struct.bq_desc** %9, align 8
  %333 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %334 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %337 = load i32, i32* @mapaddr, align 4
  %338 = call i32 @dma_unmap_addr(%struct.bq_desc* %336, i32 %337)
  %339 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %340 = load i32, i32* @maplen, align 4
  %341 = call i32 @dma_unmap_len(%struct.bq_desc* %339, i32 %340)
  %342 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %343 = call i32 @pci_unmap_single(i32 %335, i32 %338, i32 %341, i32 %342)
  %344 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %345 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = load i32, i32* @IB_MAC_IOCB_RSP_HS, align 4
  %348 = and i32 %346, %347
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %369, label %350

350:                                              ; preds = %330
  %351 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %352 = load i32, i32* @rx_status, align 4
  %353 = load i32, i32* @KERN_DEBUG, align 4
  %354 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %355 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* %11, align 4
  %358 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %351, i32 %352, i32 %353, i32 %356, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %357)
  %359 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %360 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %360, i32 0, i32 1
  %362 = load %struct.sk_buff*, %struct.sk_buff** %361, align 8
  store %struct.sk_buff* %362, %struct.sk_buff** %10, align 8
  %363 = load %struct.bq_desc*, %struct.bq_desc** %9, align 8
  %364 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %364, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %365, align 8
  %366 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %367 = load i32, i32* @NET_IP_ALIGN, align 4
  %368 = call i32 @skb_reserve(%struct.sk_buff* %366, i32 %367)
  br label %369

369:                                              ; preds = %350, %330
  br label %370

370:                                              ; preds = %430, %369
  %371 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %372 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %373 = call %struct.bq_desc* @ql_get_curr_lchunk(%struct.ql_adapter* %371, %struct.rx_ring* %372)
  store %struct.bq_desc* %373, %struct.bq_desc** %8, align 8
  %374 = load i32, i32* %11, align 4
  %375 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %376 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 4
  %378 = icmp slt i32 %374, %377
  br i1 %378, label %379, label %381

379:                                              ; preds = %370
  %380 = load i32, i32* %11, align 4
  br label %385

381:                                              ; preds = %370
  %382 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %383 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 4
  br label %385

385:                                              ; preds = %381, %379
  %386 = phi i32 [ %380, %379 ], [ %384, %381 ]
  store i32 %386, i32* %14, align 4
  %387 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %388 = load i32, i32* @rx_status, align 4
  %389 = load i32, i32* @KERN_DEBUG, align 4
  %390 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %391 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 4
  %393 = load i32, i32* %15, align 4
  %394 = load i32, i32* %14, align 4
  %395 = call i32 (%struct.ql_adapter*, i32, i32, i32, i8*, ...) @netif_printk(%struct.ql_adapter* %387, i32 %388, i32 %389, i32 %392, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0), i32 %393, i32 %394)
  %396 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %397 = load i32, i32* %15, align 4
  %398 = load %struct.bq_desc*, %struct.bq_desc** %8, align 8
  %399 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %398, i32 0, i32 0
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %400, i32 0, i32 2
  %402 = load i32, i32* %401, align 8
  %403 = load %struct.bq_desc*, %struct.bq_desc** %8, align 8
  %404 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %403, i32 0, i32 0
  %405 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = load i32, i32* %14, align 4
  %409 = call i32 @skb_fill_page_desc(%struct.sk_buff* %396, i32 %397, i32 %402, i32 %407, i32 %408)
  %410 = load i32, i32* %14, align 4
  %411 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %412 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %411, i32 0, i32 0
  %413 = load i32, i32* %412, align 4
  %414 = add nsw i32 %413, %410
  store i32 %414, i32* %412, align 4
  %415 = load i32, i32* %14, align 4
  %416 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %417 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %416, i32 0, i32 1
  %418 = load i32, i32* %417, align 4
  %419 = add nsw i32 %418, %415
  store i32 %419, i32* %417, align 4
  %420 = load i32, i32* %14, align 4
  %421 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %422 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %421, i32 0, i32 2
  %423 = load i32, i32* %422, align 4
  %424 = add nsw i32 %423, %420
  store i32 %424, i32* %422, align 4
  %425 = load i32, i32* %14, align 4
  %426 = load i32, i32* %11, align 4
  %427 = sub nsw i32 %426, %425
  store i32 %427, i32* %11, align 4
  %428 = load i32, i32* %15, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %15, align 4
  br label %430

430:                                              ; preds = %385
  %431 = load i32, i32* %11, align 4
  %432 = icmp sgt i32 %431, 0
  br i1 %432, label %370, label %433

433:                                              ; preds = %430
  %434 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %435 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %436 = load %struct.bq_desc*, %struct.bq_desc** %8, align 8
  %437 = getelementptr inbounds %struct.bq_desc, %struct.bq_desc* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  %441 = call i32 @ql_update_mac_hdr_len(%struct.ql_adapter* %434, %struct.ib_mac_iocb_rsp* %435, i32 %440, i64* %13)
  %442 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %443 = load i64, i64* %13, align 8
  %444 = call i32 @__pskb_pull_tail(%struct.sk_buff* %442, i64 %443)
  br label %445

445:                                              ; preds = %433, %329
  br label %446

446:                                              ; preds = %445, %180
  %447 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %447, %struct.sk_buff** %4, align 8
  br label %448

448:                                              ; preds = %446, %259, %80
  %449 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %449
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @netif_printk(%struct.ql_adapter*, i32, i32, i32, i8*, ...) #1

declare dso_local %struct.bq_desc* @ql_get_curr_sbuf(%struct.rx_ring*) #1

declare dso_local i32 @pci_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_addr(%struct.bq_desc*, i32) #1

declare dso_local i32 @dma_unmap_len(%struct.bq_desc*, i32) #1

declare dso_local i32 @ql_realign_skb(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @pci_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local %struct.bq_desc* @ql_get_curr_lchunk(%struct.ql_adapter*, %struct.rx_ring*) #1

declare dso_local i32 @skb_fill_page_desc(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(i32, i32) #1

declare dso_local i32 @pci_unmap_page(i32, i32, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @ql_update_mac_hdr_len(%struct.ql_adapter*, %struct.ib_mac_iocb_rsp*, i32, i64*) #1

declare dso_local i32 @__pskb_pull_tail(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
