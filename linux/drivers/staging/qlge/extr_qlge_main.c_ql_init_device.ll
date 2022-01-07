; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.net_device = type { i32, i32, i32 }
%struct.ql_adapter = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i32, i32, i32, %struct.TYPE_2__*, i32, i32*, i32, i32, i32, i8*, i32, i8*, %struct.pci_dev*, %struct.net_device* }
%struct.TYPE_2__ = type { i32 (%struct.ql_adapter*)* }

@.str = private unnamed_addr constant [27 x i8] c"PCI device enable failed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Set readrq failed.\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"PCI region request failed.\0A\00", align 1
@QL_DMA64 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"No usable DMA configuration.\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Register mapping failed.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"Doorbell register mapping failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Register access failed.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@default_msg = common dso_local global i32 0, align 4
@qlge_mpi_coredump = common dso_local global i64 0, align 8
@qlge_force_coredump = common dso_local global i64 0, align 8
@QL_FRC_COREDUMP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [16 x i8] c"Invalid FLASH.\0A\00", align 1
@NUM_TX_RING_ENTRIES = common dso_local global i32 0, align 4
@NUM_RX_RING_ENTRIES = common dso_local global i32 0, align 4
@DFLT_COALESCE_WAIT = common dso_local global i8* null, align 8
@DFLT_INTER_FRAME_WAIT = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@ql_asic_reset_work = common dso_local global i32 0, align 4
@ql_mpi_reset_work = common dso_local global i32 0, align 4
@ql_mpi_work = common dso_local global i32 0, align 4
@ql_mpi_port_cfg_work = common dso_local global i32 0, align 4
@ql_mpi_idc_work = common dso_local global i32 0, align 4
@ql_mpi_core_to_log = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@DRV_STRING = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Driver name: %s, Version: %s.\0A\00", align 1
@DRV_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.net_device*, i32)* @ql_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_init_device(%struct.pci_dev* %0, %struct.net_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ql_adapter*, align 8
  %9 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.ql_adapter* %11, %struct.ql_adapter** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %13 = bitcast %struct.ql_adapter* %12 to i8*
  %14 = call i32 @memset(i8* %13, i32 0, i32 168)
  %15 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %16 = call i32 @pci_enable_device(%struct.pci_dev* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 1
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %9, align 4
  store i32 %23, i32* %4, align 4
  br label %283

24:                                               ; preds = %3
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %27 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %26, i32 0, i32 26
  store %struct.net_device* %25, %struct.net_device** %27, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %29 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %30 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %29, i32 0, i32 25
  store %struct.pci_dev* %28, %struct.pci_dev** %30, align 8
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = call i32 @pci_set_drvdata(%struct.pci_dev* %31, %struct.net_device* %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %35 = call i32 @pcie_set_readrq(%struct.pci_dev* %34, i32 4096)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %24
  %39 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %40 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %39, i32 0, i32 1
  %41 = call i32 @dev_err(i32* %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %279

42:                                               ; preds = %24
  %43 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %44 = load i32, i32* @DRV_NAME, align 4
  %45 = call i32 @pci_request_regions(%struct.pci_dev* %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %42
  %49 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 1
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %283

53:                                               ; preds = %42
  %54 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %55 = call i32 @pci_set_master(%struct.pci_dev* %54)
  %56 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %57 = call i32 @DMA_BIT_MASK(i32 64)
  %58 = call i32 @pci_set_dma_mask(%struct.pci_dev* %56, i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %68, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* @QL_DMA64, align 4
  %62 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %63 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %62, i32 0, i32 17
  %64 = call i32 @set_bit(i32 %61, i32* %63)
  %65 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %66 = call i32 @DMA_BIT_MASK(i32 64)
  %67 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %65, i32 %66)
  store i32 %67, i32* %9, align 4
  br label %79

68:                                               ; preds = %53
  %69 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %70 = call i32 @DMA_BIT_MASK(i32 32)
  %71 = call i32 @pci_set_dma_mask(%struct.pci_dev* %69, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %68
  %75 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %76 = call i32 @DMA_BIT_MASK(i32 32)
  %77 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %75, i32 %76)
  store i32 %77, i32* %9, align 4
  br label %78

78:                                               ; preds = %74, %68
  br label %79

79:                                               ; preds = %78, %60
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %84 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %83, i32 0, i32 1
  %85 = call i32 @dev_err(i32* %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %276

86:                                               ; preds = %79
  %87 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %88 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %87, i32 0, i32 0
  store i32 1, i32* %88, align 4
  %89 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %90 = call i32 @pci_save_state(%struct.pci_dev* %89)
  %91 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %92 = call i32 @pci_resource_start(%struct.pci_dev* %91, i32 1)
  %93 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %94 = call i32 @pci_resource_len(%struct.pci_dev* %93, i32 1)
  %95 = call i8* @ioremap_nocache(i32 %92, i32 %94)
  %96 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %97 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %96, i32 0, i32 24
  store i8* %95, i8** %97, align 8
  %98 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %99 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %98, i32 0, i32 24
  %100 = load i8*, i8** %99, align 8
  %101 = icmp ne i8* %100, null
  br i1 %101, label %108, label %102

102:                                              ; preds = %86
  %103 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %104 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %103, i32 0, i32 1
  %105 = call i32 @dev_err(i32* %104, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %9, align 4
  br label %276

108:                                              ; preds = %86
  %109 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %110 = call i32 @pci_resource_len(%struct.pci_dev* %109, i32 3)
  %111 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %112 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %111, i32 0, i32 23
  store i32 %110, i32* %112, align 8
  %113 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %114 = call i32 @pci_resource_start(%struct.pci_dev* %113, i32 3)
  %115 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %116 = call i32 @pci_resource_len(%struct.pci_dev* %115, i32 3)
  %117 = call i8* @ioremap_nocache(i32 %114, i32 %116)
  %118 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %119 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %118, i32 0, i32 22
  store i8* %117, i8** %119, align 8
  %120 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %121 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %120, i32 0, i32 22
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %130, label %124

124:                                              ; preds = %108
  %125 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %126 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %125, i32 0, i32 1
  %127 = call i32 @dev_err(i32* %126, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %9, align 4
  br label %276

130:                                              ; preds = %108
  %131 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %132 = call i32 @ql_get_board_info(%struct.ql_adapter* %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %137 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %136, i32 0, i32 1
  %138 = call i32 @dev_err(i32* %137, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %139 = load i32, i32* @EIO, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %9, align 4
  br label %276

141:                                              ; preds = %130
  %142 = load i32, i32* @debug, align 4
  %143 = load i32, i32* @default_msg, align 4
  %144 = call i32 @netif_msg_init(i32 %142, i32 %143)
  %145 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %146 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %145, i32 0, i32 21
  store i32 %144, i32* %146, align 8
  %147 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %148 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %147, i32 0, i32 20
  %149 = call i32 @spin_lock_init(i32* %148)
  %150 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %151 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %150, i32 0, i32 19
  %152 = call i32 @spin_lock_init(i32* %151)
  %153 = load i64, i64* @qlge_mpi_coredump, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %175

155:                                              ; preds = %141
  %156 = call i32* @vmalloc(i32 4)
  %157 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %158 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %157, i32 0, i32 18
  store i32* %156, i32** %158, align 8
  %159 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %160 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %159, i32 0, i32 18
  %161 = load i32*, i32** %160, align 8
  %162 = icmp eq i32* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %155
  %164 = load i32, i32* @ENOMEM, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %9, align 4
  br label %276

166:                                              ; preds = %155
  %167 = load i64, i64* @qlge_force_coredump, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %174

169:                                              ; preds = %166
  %170 = load i32, i32* @QL_FRC_COREDUMP, align 4
  %171 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %172 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %171, i32 0, i32 17
  %173 = call i32 @set_bit(i32 %170, i32* %172)
  br label %174

174:                                              ; preds = %169, %166
  br label %175

175:                                              ; preds = %174, %141
  %176 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %177 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %176, i32 0, i32 16
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32 (%struct.ql_adapter*)*, i32 (%struct.ql_adapter*)** %179, align 8
  %181 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %182 = call i32 %180(%struct.ql_adapter* %181)
  store i32 %182, i32* %9, align 4
  %183 = load i32, i32* %9, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %175
  %186 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %187 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %186, i32 0, i32 1
  %188 = call i32 @dev_err(i32* %187, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0))
  br label %276

189:                                              ; preds = %175
  %190 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %191 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %190, i32 0, i32 15
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.net_device*, %struct.net_device** %6, align 8
  %194 = getelementptr inbounds %struct.net_device, %struct.net_device* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.net_device*, %struct.net_device** %6, align 8
  %197 = getelementptr inbounds %struct.net_device, %struct.net_device* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @memcpy(i32 %192, i32 %195, i32 %198)
  %200 = load i32, i32* @NUM_TX_RING_ENTRIES, align 4
  %201 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %202 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %201, i32 0, i32 14
  store i32 %200, i32* %202, align 4
  %203 = load i32, i32* @NUM_RX_RING_ENTRIES, align 4
  %204 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %205 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %204, i32 0, i32 13
  store i32 %203, i32* %205, align 8
  %206 = load i8*, i8** @DFLT_COALESCE_WAIT, align 8
  %207 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %208 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %207, i32 0, i32 12
  store i8* %206, i8** %208, align 8
  %209 = load i8*, i8** @DFLT_COALESCE_WAIT, align 8
  %210 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %211 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %210, i32 0, i32 11
  store i8* %209, i8** %211, align 8
  %212 = load i8*, i8** @DFLT_INTER_FRAME_WAIT, align 8
  %213 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %214 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %213, i32 0, i32 10
  store i8* %212, i8** %214, align 8
  %215 = load i8*, i8** @DFLT_INTER_FRAME_WAIT, align 8
  %216 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %217 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %216, i32 0, i32 9
  store i8* %215, i8** %217, align 8
  %218 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %219 = load %struct.net_device*, %struct.net_device** %6, align 8
  %220 = getelementptr inbounds %struct.net_device, %struct.net_device* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0), i32 %218, i32 %221)
  %223 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %224 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %223, i32 0, i32 8
  store i32 %222, i32* %224, align 8
  %225 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %226 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %225, i32 0, i32 8
  %227 = load i32, i32* %226, align 8
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %189
  %230 = load i32, i32* @ENOMEM, align 4
  %231 = sub nsw i32 0, %230
  store i32 %231, i32* %9, align 4
  br label %276

232:                                              ; preds = %189
  %233 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %234 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %233, i32 0, i32 7
  %235 = load i32, i32* @ql_asic_reset_work, align 4
  %236 = call i32 @INIT_DELAYED_WORK(i32* %234, i32 %235)
  %237 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %238 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %237, i32 0, i32 6
  %239 = load i32, i32* @ql_mpi_reset_work, align 4
  %240 = call i32 @INIT_DELAYED_WORK(i32* %238, i32 %239)
  %241 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %242 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %241, i32 0, i32 5
  %243 = load i32, i32* @ql_mpi_work, align 4
  %244 = call i32 @INIT_DELAYED_WORK(i32* %242, i32 %243)
  %245 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %246 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %245, i32 0, i32 4
  %247 = load i32, i32* @ql_mpi_port_cfg_work, align 4
  %248 = call i32 @INIT_DELAYED_WORK(i32* %246, i32 %247)
  %249 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %250 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %249, i32 0, i32 3
  %251 = load i32, i32* @ql_mpi_idc_work, align 4
  %252 = call i32 @INIT_DELAYED_WORK(i32* %250, i32 %251)
  %253 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %254 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %253, i32 0, i32 2
  %255 = load i32, i32* @ql_mpi_core_to_log, align 4
  %256 = call i32 @INIT_DELAYED_WORK(i32* %254, i32 %255)
  %257 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %258 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %257, i32 0, i32 1
  %259 = call i32 @init_completion(i32* %258)
  %260 = load %struct.ql_adapter*, %struct.ql_adapter** %8, align 8
  %261 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %260, i32 0, i32 0
  %262 = call i32 @mutex_init(i32* %261)
  %263 = load i32, i32* %7, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %275, label %265

265:                                              ; preds = %232
  %266 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %267 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %266, i32 0, i32 1
  %268 = load i32, i32* @DRV_STRING, align 4
  %269 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %267, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 %268)
  %270 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %271 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %270, i32 0, i32 1
  %272 = load i32, i32* @DRV_NAME, align 4
  %273 = load i32, i32* @DRV_VERSION, align 4
  %274 = call i32 (i32*, i8*, i32, ...) @dev_info(i32* %271, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %272, i32 %273)
  br label %275

275:                                              ; preds = %265, %232
  store i32 0, i32* %4, align 4
  br label %283

276:                                              ; preds = %229, %185, %163, %135, %124, %102, %82
  %277 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %278 = call i32 @ql_release_all(%struct.pci_dev* %277)
  br label %279

279:                                              ; preds = %276, %38
  %280 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %281 = call i32 @pci_disable_device(%struct.pci_dev* %280)
  %282 = load i32, i32* %9, align 4
  store i32 %282, i32* %4, align 4
  br label %283

283:                                              ; preds = %279, %275, %48, %19
  %284 = load i32, i32* %4, align 4
  ret i32 %284
}

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.net_device*) #1

declare dso_local i32 @pcie_set_readrq(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i8* @ioremap_nocache(i32, i32) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @ql_get_board_info(%struct.ql_adapter*) #1

declare dso_local i32 @netif_msg_init(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, ...) #1

declare dso_local i32 @ql_release_all(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
