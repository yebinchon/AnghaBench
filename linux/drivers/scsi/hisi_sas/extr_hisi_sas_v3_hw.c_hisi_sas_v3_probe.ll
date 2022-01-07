; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_hisi_sas_v3_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_hisi_sas_v3_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { %struct.device }
%struct.device = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.Scsi_Host = type { i32, i32, i8*, i8*, i32, i32, i32 }
%struct.hisi_hba = type { i32, i32, %struct.TYPE_8__*, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i32*, i32 }
%struct.TYPE_8__ = type { i32 (%struct.hisi_hba*)* }
%struct.TYPE_7__ = type { %struct.asd_sas_port }
%struct.asd_sas_port = type { i32 }
%struct.TYPE_6__ = type { %struct.asd_sas_phy }
%struct.asd_sas_phy = type { i32 }
%struct.sas_ha_struct = type { i32, %struct.asd_sas_port**, %struct.asd_sas_phy**, i32*, i32, %struct.device*, i32, %struct.hisi_hba*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.Scsi_Host* }

@DRV_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"No usable DMA addressing method\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"cannot map register\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@hisi_sas_stt = common dso_local global i32 0, align 4
@HISI_SAS_MAX_DEVICES = common dso_local global i32 0, align 4
@HISI_SAS_UNRESERVED_IPTT = common dso_local global i8* null, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Registering for DIF/DIX prot_mask=0x%x\0A\00", align 1
@prot_mask = common dso_local global i32 0, align 4
@HISI_SAS_DIX_PROT_MASK = common dso_local global i32 0, align 4
@SHOST_DIX_GUARD_CRC = common dso_local global i32 0, align 4
@hisi_sas_debugfs_enable = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @hisi_sas_v3_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_v3_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.hisi_hba*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.asd_sas_phy**, align 8
  %10 = alloca %struct.asd_sas_port**, align 8
  %11 = alloca %struct.sas_ha_struct*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %8, align 8
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = call i32 @pci_enable_device(%struct.pci_dev* %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %263

23:                                               ; preds = %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call i32 @pci_set_master(%struct.pci_dev* %24)
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = load i32, i32* @DRV_NAME, align 4
  %28 = call i32 @pci_request_regions(%struct.pci_dev* %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %260

32:                                               ; preds = %23
  %33 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %34 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %33, i32 0, i32 0
  %35 = call i32 @DMA_BIT_MASK(i32 64)
  %36 = call i32 @dma_set_mask_and_coherent(%struct.device* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = call i32 @DMA_BIT_MASK(i32 32)
  %43 = call i32 @dma_set_mask_and_coherent(%struct.device* %41, i32 %42)
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %39, %32
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  %48 = load %struct.device*, %struct.device** %8, align 8
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %12, align 4
  br label %257

52:                                               ; preds = %44
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = call %struct.Scsi_Host* @hisi_sas_shost_alloc_pci(%struct.pci_dev* %53)
  store %struct.Scsi_Host* %54, %struct.Scsi_Host** %6, align 8
  %55 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %56 = icmp ne %struct.Scsi_Host* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  br label %257

60:                                               ; preds = %52
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %62 = call %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host* %61)
  store %struct.sas_ha_struct* %62, %struct.sas_ha_struct** %11, align 8
  %63 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %64 = call %struct.hisi_hba* @shost_priv(%struct.Scsi_Host* %63)
  store %struct.hisi_hba* %64, %struct.hisi_hba** %7, align 8
  %65 = load %struct.device*, %struct.device** %8, align 8
  %66 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %67 = call i32 @dev_set_drvdata(%struct.device* %65, %struct.sas_ha_struct* %66)
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = call i32 @pcim_iomap(%struct.pci_dev* %68, i32 5, i32 0)
  %70 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %71 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 8
  %72 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %73 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %60
  %77 = load %struct.device*, %struct.device** %8, align 8
  %78 = call i32 @dev_err(%struct.device* %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %12, align 4
  br label %254

81:                                               ; preds = %60
  %82 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %83 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %14, align 4
  store i32 %84, i32* %13, align 4
  %85 = load %struct.device*, %struct.device** %8, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i8* @devm_kcalloc(%struct.device* %85, i32 %86, i32 8, i32 %87)
  %89 = bitcast i8* %88 to %struct.asd_sas_phy**
  store %struct.asd_sas_phy** %89, %struct.asd_sas_phy*** %9, align 8
  %90 = load %struct.device*, %struct.device** %8, align 8
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i8* @devm_kcalloc(%struct.device* %90, i32 %91, i32 8, i32 %92)
  %94 = bitcast i8* %93 to %struct.asd_sas_port**
  store %struct.asd_sas_port** %94, %struct.asd_sas_port*** %10, align 8
  %95 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %9, align 8
  %96 = icmp ne %struct.asd_sas_phy** %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %81
  %98 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %10, align 8
  %99 = icmp ne %struct.asd_sas_port** %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %97, %81
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %12, align 4
  br label %254

103:                                              ; preds = %97
  %104 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %9, align 8
  %105 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %106 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %105, i32 0, i32 2
  store %struct.asd_sas_phy** %104, %struct.asd_sas_phy*** %106, align 8
  %107 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %10, align 8
  %108 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %109 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %108, i32 0, i32 1
  store %struct.asd_sas_port** %107, %struct.asd_sas_port*** %109, align 8
  %110 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %111 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %112 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %111, i32 0, i32 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store %struct.Scsi_Host* %110, %struct.Scsi_Host** %113, align 8
  %114 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %115 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %116 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %115, i32 0, i32 7
  store %struct.hisi_hba* %114, %struct.hisi_hba** %116, align 8
  %117 = load i32, i32* @hisi_sas_stt, align 4
  %118 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %119 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* @HISI_SAS_MAX_DEVICES, align 4
  %121 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %122 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  %123 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %124 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %123, i32 0, i32 4
  store i32 -1, i32* %124, align 8
  %125 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %126 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  %127 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %128 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %127, i32 0, i32 1
  store i32 16, i32* %128, align 4
  %129 = load i8*, i8** @HISI_SAS_UNRESERVED_IPTT, align 8
  %130 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %131 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %130, i32 0, i32 3
  store i8* %129, i8** %131, align 8
  %132 = load i8*, i8** @HISI_SAS_UNRESERVED_IPTT, align 8
  %133 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %134 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %133, i32 0, i32 2
  store i8* %132, i8** %134, align 8
  %135 = load i32, i32* @DRV_NAME, align 4
  %136 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %137 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %136, i32 0, i32 6
  store i32 %135, i32* %137, align 8
  %138 = load %struct.device*, %struct.device** %8, align 8
  %139 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %140 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %139, i32 0, i32 5
  store %struct.device* %138, %struct.device** %140, align 8
  %141 = load i32, i32* @THIS_MODULE, align 4
  %142 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %143 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %142, i32 0, i32 4
  store i32 %141, i32* %143, align 8
  %144 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %145 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %144, i32 0, i32 6
  %146 = load i32*, i32** %145, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 0
  %148 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %149 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %148, i32 0, i32 3
  store i32* %147, i32** %149, align 8
  %150 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %151 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %154 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  store i32 0, i32* %15, align 4
  br label %155

155:                                              ; preds = %188, %103
  %156 = load i32, i32* %15, align 4
  %157 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %158 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %161, label %191

161:                                              ; preds = %155
  %162 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %163 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %162, i32 0, i32 5
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %163, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %170 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %169, i32 0, i32 2
  %171 = load %struct.asd_sas_phy**, %struct.asd_sas_phy*** %170, align 8
  %172 = load i32, i32* %15, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.asd_sas_phy*, %struct.asd_sas_phy** %171, i64 %173
  store %struct.asd_sas_phy* %168, %struct.asd_sas_phy** %174, align 8
  %175 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %176 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %175, i32 0, i32 4
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %176, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 0
  %182 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %183 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %182, i32 0, i32 1
  %184 = load %struct.asd_sas_port**, %struct.asd_sas_port*** %183, align 8
  %185 = load i32, i32* %15, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.asd_sas_port*, %struct.asd_sas_port** %184, i64 %186
  store %struct.asd_sas_port* %181, %struct.asd_sas_port** %187, align 8
  br label %188

188:                                              ; preds = %161
  %189 = load i32, i32* %15, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %15, align 4
  br label %155

191:                                              ; preds = %155
  %192 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %193 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %218

196:                                              ; preds = %191
  %197 = load %struct.device*, %struct.device** %8, align 8
  %198 = load i32, i32* @prot_mask, align 4
  %199 = call i32 @dev_info(%struct.device* %197, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %198)
  %200 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %201 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @prot_mask, align 4
  %204 = call i32 @scsi_host_set_prot(i32 %202, i32 %203)
  %205 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %206 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @HISI_SAS_DIX_PROT_MASK, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %196
  %212 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %213 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = load i32, i32* @SHOST_DIX_GUARD_CRC, align 4
  %216 = call i32 @scsi_host_set_guard(i32 %214, i32 %215)
  br label %217

217:                                              ; preds = %211, %196
  br label %218

218:                                              ; preds = %217, %191
  %219 = load i64, i64* @hisi_sas_debugfs_enable, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %223 = call i32 @hisi_sas_debugfs_init(%struct.hisi_hba* %222)
  br label %224

224:                                              ; preds = %221, %218
  %225 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %226 = load %struct.device*, %struct.device** %8, align 8
  %227 = call i32 @scsi_add_host(%struct.Scsi_Host* %225, %struct.device* %226)
  store i32 %227, i32* %12, align 4
  %228 = load i32, i32* %12, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  br label %254

231:                                              ; preds = %224
  %232 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %11, align 8
  %233 = call i32 @sas_register_ha(%struct.sas_ha_struct* %232)
  store i32 %233, i32* %12, align 4
  %234 = load i32, i32* %12, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %231
  br label %251

237:                                              ; preds = %231
  %238 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %239 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %238, i32 0, i32 2
  %240 = load %struct.TYPE_8__*, %struct.TYPE_8__** %239, align 8
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = load i32 (%struct.hisi_hba*)*, i32 (%struct.hisi_hba*)** %241, align 8
  %243 = load %struct.hisi_hba*, %struct.hisi_hba** %7, align 8
  %244 = call i32 %242(%struct.hisi_hba* %243)
  store i32 %244, i32* %12, align 4
  %245 = load i32, i32* %12, align 4
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %248

247:                                              ; preds = %237
  br label %251

248:                                              ; preds = %237
  %249 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %250 = call i32 @scsi_scan_host(%struct.Scsi_Host* %249)
  store i32 0, i32* %3, align 4
  br label %265

251:                                              ; preds = %247, %236
  %252 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %253 = call i32 @scsi_remove_host(%struct.Scsi_Host* %252)
  br label %254

254:                                              ; preds = %251, %230, %100, %76
  %255 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %256 = call i32 @scsi_host_put(%struct.Scsi_Host* %255)
  br label %257

257:                                              ; preds = %254, %57, %47
  %258 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %259 = call i32 @pci_release_regions(%struct.pci_dev* %258)
  br label %260

260:                                              ; preds = %257, %31
  %261 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %262 = call i32 @pci_disable_device(%struct.pci_dev* %261)
  br label %263

263:                                              ; preds = %260, %22
  %264 = load i32, i32* %12, align 4
  store i32 %264, i32* %3, align 4
  br label %265

265:                                              ; preds = %263, %248
  %266 = load i32, i32* %3, align 4
  ret i32 %266
}

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @dma_set_mask_and_coherent(%struct.device*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.Scsi_Host* @hisi_sas_shost_alloc_pci(%struct.pci_dev*) #1

declare dso_local %struct.sas_ha_struct* @SHOST_TO_SAS_HA(%struct.Scsi_Host*) #1

declare dso_local %struct.hisi_hba* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.sas_ha_struct*) #1

declare dso_local i32 @pcim_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i8* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @scsi_host_set_prot(i32, i32) #1

declare dso_local i32 @scsi_host_set_guard(i32, i32) #1

declare dso_local i32 @hisi_sas_debugfs_init(%struct.hisi_hba*) #1

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, %struct.device*) #1

declare dso_local i32 @sas_register_ha(%struct.sas_ha_struct*) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_remove_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
