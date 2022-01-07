; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_process_mac_split_rx_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_process_mac_split_rx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { %struct.net_device*, i32 }
%struct.net_device = type { i64, i32 }
%struct.rx_ring = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_mac_iocb_rsp = type { i32, i32, i32 }
%struct.sk_buff = type { i64, i64, i64, i32 }
%struct.iphdr = type { i32 }

@rx_status = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"No skb available, drop packet.\0A\00", align 1
@IB_MAC_IOCB_RSP_ERR_MASK = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@QL_SELFTEST = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_M_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"%s Multicast.\0A\00", align 1
@IB_MAC_IOCB_RSP_M_HASH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"Hash\00", align 1
@IB_MAC_IOCB_RSP_M_REG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [11 x i8] c"Registered\00", align 1
@IB_MAC_IOCB_RSP_M_PROM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"Promiscuous\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IB_MAC_IOCB_RSP_P = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"Promiscuous Packet.\0A\00", align 1
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@IB_MAC_CSUM_ERR_MASK = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_T = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"TCP checksum done!\0A\00", align 1
@CHECKSUM_UNNECESSARY = common dso_local global i64 0, align 8
@IB_MAC_IOCB_RSP_U = common dso_local global i32 0, align 4
@IB_MAC_IOCB_RSP_V4 = common dso_local global i32 0, align 4
@IP_MF = common dso_local global i32 0, align 4
@IP_OFFSET = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*, i32)* @ql_process_mac_split_rx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_process_mac_split_rx_intr(%struct.ql_adapter* %0, %struct.rx_ring* %1, %struct.ib_mac_iocb_rsp* %2, i32 %3) #0 {
  %5 = alloca %struct.ql_adapter*, align 8
  %6 = alloca %struct.rx_ring*, align 8
  %7 = alloca %struct.ib_mac_iocb_rsp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.iphdr*, align 8
  store %struct.ql_adapter* %0, %struct.ql_adapter** %5, align 8
  store %struct.rx_ring* %1, %struct.rx_ring** %6, align 8
  store %struct.ib_mac_iocb_rsp* %2, %struct.ib_mac_iocb_rsp** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %13 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %12, i32 0, i32 0
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %9, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  %15 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %16 = call i32 @QL_DUMP_IB_MAC_RSP(%struct.ib_mac_iocb_rsp* %15)
  %17 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %18 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %19 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %20 = call %struct.sk_buff* @ql_build_rx_skb(%struct.ql_adapter* %17, %struct.rx_ring* %18, %struct.ib_mac_iocb_rsp* %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %10, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %4
  %28 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %29 = load i32, i32* @rx_status, align 4
  %30 = load i32, i32* @KERN_DEBUG, align 4
  %31 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %31, i32 0, i32 0
  %33 = load %struct.net_device*, %struct.net_device** %32, align 8
  %34 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %28, i32 %29, i32 %30, %struct.net_device* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %36 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %275

39:                                               ; preds = %4
  %40 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %41 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @IB_MAC_IOCB_RSP_ERR_MASK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %39
  %47 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %48 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %49 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %52 = call i32 @ql_categorize_rx_err(%struct.ql_adapter* %47, i32 %50, %struct.rx_ring* %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %53)
  br label %275

55:                                               ; preds = %39
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.net_device*, %struct.net_device** %9, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ETH_HLEN, align 8
  %63 = add nsw i64 %61, %62
  %64 = icmp sgt i64 %58, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %55
  %66 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %67 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %66)
  %68 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %69 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %275

72:                                               ; preds = %55
  %73 = load i32, i32* @QL_SELFTEST, align 4
  %74 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %75 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %74, i32 0, i32 1
  %76 = call i64 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %81 = call i32 @ql_check_lb_frame(%struct.ql_adapter* %79, %struct.sk_buff* %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %83 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %82)
  br label %275

84:                                               ; preds = %72
  %85 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @prefetch(i64 %87)
  %89 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %90 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @IB_MAC_IOCB_RSP_M_MASK, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %138

95:                                               ; preds = %84
  %96 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %97 = load i32, i32* @rx_status, align 4
  %98 = load i32, i32* @KERN_DEBUG, align 4
  %99 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %100 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %99, i32 0, i32 0
  %101 = load %struct.net_device*, %struct.net_device** %100, align 8
  %102 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %103 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @IB_MAC_IOCB_RSP_M_MASK, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @IB_MAC_IOCB_RSP_M_HASH, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %95
  br label %131

110:                                              ; preds = %95
  %111 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %112 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @IB_MAC_IOCB_RSP_M_MASK, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* @IB_MAC_IOCB_RSP_M_REG, align 4
  %117 = icmp eq i32 %115, %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %110
  br label %129

119:                                              ; preds = %110
  %120 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %121 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @IB_MAC_IOCB_RSP_M_MASK, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* @IB_MAC_IOCB_RSP_M_PROM, align 4
  %126 = icmp eq i32 %124, %125
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  br label %129

129:                                              ; preds = %119, %118
  %130 = phi i8* [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), %118 ], [ %128, %119 ]
  br label %131

131:                                              ; preds = %129, %109
  %132 = phi i8* [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), %109 ], [ %130, %129 ]
  %133 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %96, i32 %97, i32 %98, %struct.net_device* %101, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %132)
  %134 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %135 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %131, %84
  %139 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %140 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @IB_MAC_IOCB_RSP_P, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %138
  %146 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %147 = load i32, i32* @rx_status, align 4
  %148 = load i32, i32* @KERN_DEBUG, align 4
  %149 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %150 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %149, i32 0, i32 0
  %151 = load %struct.net_device*, %struct.net_device** %150, align 8
  %152 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %146, i32 %147, i32 %148, %struct.net_device* %151, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  br label %153

153:                                              ; preds = %145, %138
  %154 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %155 = load %struct.net_device*, %struct.net_device** %9, align 8
  %156 = call i32 @eth_type_trans(%struct.sk_buff* %154, %struct.net_device* %155)
  %157 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %158 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %157, i32 0, i32 3
  store i32 %156, i32* %158, align 8
  %159 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %160 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %159)
  %161 = load %struct.net_device*, %struct.net_device** %9, align 8
  %162 = getelementptr inbounds %struct.net_device, %struct.net_device* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %234

167:                                              ; preds = %153
  %168 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %169 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @IB_MAC_CSUM_ERR_MASK, align 4
  %172 = and i32 %170, %171
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %234, label %174

174:                                              ; preds = %167
  %175 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %176 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @IB_MAC_IOCB_RSP_T, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %174
  %182 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %183 = load i32, i32* @rx_status, align 4
  %184 = load i32, i32* @KERN_DEBUG, align 4
  %185 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %186 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %185, i32 0, i32 0
  %187 = load %struct.net_device*, %struct.net_device** %186, align 8
  %188 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %182, i32 %183, i32 %184, %struct.net_device* %187, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %189 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %191 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %190, i32 0, i32 1
  store i64 %189, i64* %191, align 8
  br label %233

192:                                              ; preds = %174
  %193 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %194 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @IB_MAC_IOCB_RSP_U, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %232

199:                                              ; preds = %192
  %200 = load %struct.ib_mac_iocb_rsp*, %struct.ib_mac_iocb_rsp** %7, align 8
  %201 = getelementptr inbounds %struct.ib_mac_iocb_rsp, %struct.ib_mac_iocb_rsp* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @IB_MAC_IOCB_RSP_V4, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %232

206:                                              ; preds = %199
  %207 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %208 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = inttoptr i64 %209 to %struct.iphdr*
  store %struct.iphdr* %210, %struct.iphdr** %11, align 8
  %211 = load %struct.iphdr*, %struct.iphdr** %11, align 8
  %212 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @IP_MF, align 4
  %215 = load i32, i32* @IP_OFFSET, align 4
  %216 = or i32 %214, %215
  %217 = call i32 @htons(i32 %216)
  %218 = and i32 %213, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %231, label %220

220:                                              ; preds = %206
  %221 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %222 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %223 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %222, i32 0, i32 1
  store i64 %221, i64* %223, align 8
  %224 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %225 = load i32, i32* @rx_status, align 4
  %226 = load i32, i32* @KERN_DEBUG, align 4
  %227 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %228 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %227, i32 0, i32 0
  %229 = load %struct.net_device*, %struct.net_device** %228, align 8
  %230 = call i32 (%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) @netif_printk(%struct.ql_adapter* %224, i32 %225, i32 %226, %struct.net_device* %229, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  br label %231

231:                                              ; preds = %220, %206
  br label %232

232:                                              ; preds = %231, %199, %192
  br label %233

233:                                              ; preds = %232, %181
  br label %234

234:                                              ; preds = %233, %167, %153
  %235 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %236 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 4
  %239 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %240 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %243 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %242, i32 0, i32 2
  %244 = load i32, i32* %243, align 4
  %245 = sext i32 %244 to i64
  %246 = add nsw i64 %245, %241
  %247 = trunc i64 %246 to i32
  store i32 %247, i32* %243, align 4
  %248 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %249 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %250 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = call i32 @skb_record_rx_queue(%struct.sk_buff* %248, i32 %251)
  %253 = load i32, i32* %8, align 4
  %254 = icmp ne i32 %253, 65535
  br i1 %254, label %255, label %261

255:                                              ; preds = %234
  %256 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %257 = load i32, i32* @ETH_P_8021Q, align 4
  %258 = call i32 @htons(i32 %257)
  %259 = load i32, i32* %8, align 4
  %260 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %256, i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %255, %234
  %262 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %263 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %262, i32 0, i32 1
  %264 = load i64, i64* %263, align 8
  %265 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %266 = icmp eq i64 %264, %265
  br i1 %266, label %267, label %272

267:                                              ; preds = %261
  %268 = load %struct.rx_ring*, %struct.rx_ring** %6, align 8
  %269 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %268, i32 0, i32 0
  %270 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %271 = call i32 @napi_gro_receive(i32* %269, %struct.sk_buff* %270)
  br label %275

272:                                              ; preds = %261
  %273 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %274 = call i32 @netif_receive_skb(%struct.sk_buff* %273)
  br label %275

275:                                              ; preds = %27, %46, %65, %78, %272, %267
  ret void
}

declare dso_local i32 @QL_DUMP_IB_MAC_RSP(%struct.ib_mac_iocb_rsp*) #1

declare dso_local %struct.sk_buff* @ql_build_rx_skb(%struct.ql_adapter*, %struct.rx_ring*, %struct.ib_mac_iocb_rsp*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_printk(%struct.ql_adapter*, i32, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @ql_categorize_rx_err(%struct.ql_adapter*, i32, %struct.rx_ring*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ql_check_lb_frame(%struct.ql_adapter*, %struct.sk_buff*) #1

declare dso_local i32 @prefetch(i64) #1

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
