; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721.c_tsi721_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32* }
%struct.pci_device_id = type { i32 }
%struct.tsi721_device = type { i8*, i8*, %struct.TYPE_2__*, %struct.pci_dev* }
%struct.TYPE_2__ = type { i64, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Failed to enable PCI device\00", align 1
@BAR_0 = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@IORESOURCE_MEM_64 = common dso_local global i32 0, align 4
@TSI721_REG_SPACE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"Missing or misconfigured CSR BAR0\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@BAR_1 = common dso_local global i32 0, align 4
@TSI721_DB_WIN_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"Missing or misconfigured Doorbell BAR1\00", align 1
@BAR_2 = common dso_local global i32 0, align 4
@IORESOURCE_PREFETCH = common dso_local global i32 0, align 4
@INIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Prefetchable OBW BAR2 will not be used\00", align 1
@BAR_4 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"Prefetchable OBW BAR4 will not be used\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Unable to obtain PCI resources\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Unable to map device registers space\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Unable to map outbound doorbells space\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Unable to set DMA mask\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Unable to set consistent DMA mask\00", align 1
@PCI_EXP_DEVCTL = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_RELAX_EN = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_NOSNOOP_EN = common dso_local global i32 0, align 4
@pcie_mrrs = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL_READRQ = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [31 x i8] c"Invalid MRRS override value %d\00", align 1
@PCI_EXP_DEVCTL2 = common dso_local global i32 0, align 4
@PCI_EXP_DEVCTL2_COMP_TIMEOUT = common dso_local global i32 0, align 4
@TSI721_PCIECFG_EPCTL = common dso_local global i32 0, align 4
@TSI721_PCIECFG_MSIXTBL = common dso_local global i32 0, align 4
@TSI721_MSIXTBL_OFFSET = common dso_local global i32 0, align 4
@TSI721_PCIECFG_MSIXPBA = common dso_local global i32 0, align 4
@TSI721_MSIXPBA_OFFSET = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [27 x i8] c"BDMA initialization failed\00", align 1
@PCI_STD_RESOURCE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @tsi721_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.tsi721_device*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.tsi721_device* @kzalloc(i32 32, i32 %8)
  store %struct.tsi721_device* %9, %struct.tsi721_device** %6, align 8
  %10 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %11 = icmp ne %struct.tsi721_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %7, align 4
  br label %374

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = call i32 @pci_enable_device(%struct.pci_dev* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %22 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %21, i32 0, i32 0
  %23 = call i32 @tsi_err(i32* %22, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %371

24:                                               ; preds = %15
  %25 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %26 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %27 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %26, i32 0, i32 3
  store %struct.pci_dev* %25, %struct.pci_dev** %27, align 8
  %28 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %29 = load i32, i32* @BAR_0, align 4
  %30 = call i32 @pci_resource_flags(%struct.pci_dev* %28, i32 %29)
  %31 = load i32, i32* @IORESOURCE_MEM, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %24
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = load i32, i32* @BAR_0, align 4
  %37 = call i32 @pci_resource_flags(%struct.pci_dev* %35, i32 %36)
  %38 = load i32, i32* @IORESOURCE_MEM_64, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %34
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load i32, i32* @BAR_0, align 4
  %44 = call i64 @pci_resource_len(%struct.pci_dev* %42, i32 %43)
  %45 = load i64, i64* @TSI721_REG_SPACE_SIZE, align 8
  %46 = icmp slt i64 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41, %34, %24
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = call i32 @tsi_err(i32* %49, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %368

53:                                               ; preds = %41
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = load i32, i32* @BAR_1, align 4
  %56 = call i32 @pci_resource_flags(%struct.pci_dev* %54, i32 %55)
  %57 = load i32, i32* @IORESOURCE_MEM, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %53
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = load i32, i32* @BAR_1, align 4
  %63 = call i32 @pci_resource_flags(%struct.pci_dev* %61, i32 %62)
  %64 = load i32, i32* @IORESOURCE_MEM_64, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %60
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = load i32, i32* @BAR_1, align 4
  %70 = call i64 @pci_resource_len(%struct.pci_dev* %68, i32 %69)
  %71 = load i64, i64* @TSI721_DB_WIN_SIZE, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %67, %60, %53
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %74, i32 0, i32 0
  %76 = call i32 @tsi_err(i32* %75, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %7, align 4
  br label %368

79:                                               ; preds = %67
  %80 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %81 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i64 0, i64* %84, align 8
  %85 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %86 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  store i64 0, i64* %89, align 8
  %90 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %91 = load i32, i32* @BAR_2, align 4
  %92 = call i32 @pci_resource_flags(%struct.pci_dev* %90, i32 %91)
  %93 = load i32, i32* @IORESOURCE_MEM_64, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %126

96:                                               ; preds = %79
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = load i32, i32* @BAR_2, align 4
  %99 = call i32 @pci_resource_flags(%struct.pci_dev* %97, i32 %98)
  %100 = load i32, i32* @IORESOURCE_PREFETCH, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load i32, i32* @INIT, align 4
  %105 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %106 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %105, i32 0, i32 0
  %107 = call i32 (i32, i32*, i8*, ...) @tsi_debug(i32 %104, i32* %106, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %125

108:                                              ; preds = %96
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = load i32, i32* @BAR_2, align 4
  %111 = call i8* @pci_resource_start(%struct.pci_dev* %109, i32 %110)
  %112 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %113 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %112, i32 0, i32 2
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 0
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i8* %111, i8** %116, align 8
  %117 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %118 = load i32, i32* @BAR_2, align 4
  %119 = call i64 @pci_resource_len(%struct.pci_dev* %117, i32 %118)
  %120 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %121 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %120, i32 0, i32 2
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  store i64 %119, i64* %124, align 8
  br label %125

125:                                              ; preds = %108, %103
  br label %126

126:                                              ; preds = %125, %79
  %127 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %128 = load i32, i32* @BAR_4, align 4
  %129 = call i32 @pci_resource_flags(%struct.pci_dev* %127, i32 %128)
  %130 = load i32, i32* @IORESOURCE_MEM_64, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %163

133:                                              ; preds = %126
  %134 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %135 = load i32, i32* @BAR_4, align 4
  %136 = call i32 @pci_resource_flags(%struct.pci_dev* %134, i32 %135)
  %137 = load i32, i32* @IORESOURCE_PREFETCH, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %133
  %141 = load i32, i32* @INIT, align 4
  %142 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %143 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %142, i32 0, i32 0
  %144 = call i32 (i32, i32*, i8*, ...) @tsi_debug(i32 %141, i32* %143, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %162

145:                                              ; preds = %133
  %146 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %147 = load i32, i32* @BAR_4, align 4
  %148 = call i8* @pci_resource_start(%struct.pci_dev* %146, i32 %147)
  %149 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %150 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %149, i32 0, i32 2
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 1
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 1
  store i8* %148, i8** %153, align 8
  %154 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %155 = load i32, i32* @BAR_4, align 4
  %156 = call i64 @pci_resource_len(%struct.pci_dev* %154, i32 %155)
  %157 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %158 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %157, i32 0, i32 2
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 1
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  store i64 %156, i64* %161, align 8
  br label %162

162:                                              ; preds = %145, %140
  br label %163

163:                                              ; preds = %162, %126
  %164 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %165 = load i32, i32* @DRV_NAME, align 4
  %166 = call i32 @pci_request_regions(%struct.pci_dev* %164, i32 %165)
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* %7, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %163
  %170 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %171 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %170, i32 0, i32 0
  %172 = call i32 @tsi_err(i32* %171, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0))
  br label %368

173:                                              ; preds = %163
  %174 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %175 = call i32 @pci_set_master(%struct.pci_dev* %174)
  %176 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %177 = load i32, i32* @BAR_0, align 4
  %178 = call i8* @pci_ioremap_bar(%struct.pci_dev* %176, i32 %177)
  %179 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %180 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %179, i32 0, i32 1
  store i8* %178, i8** %180, align 8
  %181 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %182 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %181, i32 0, i32 1
  %183 = load i8*, i8** %182, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %191, label %185

185:                                              ; preds = %173
  %186 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %187 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %186, i32 0, i32 0
  %188 = call i32 @tsi_err(i32* %187, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  %189 = load i32, i32* @ENOMEM, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %7, align 4
  br label %363

191:                                              ; preds = %173
  %192 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %193 = load i32, i32* @BAR_1, align 4
  %194 = call i8* @pci_ioremap_bar(%struct.pci_dev* %192, i32 %193)
  %195 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %196 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %195, i32 0, i32 0
  store i8* %194, i8** %196, align 8
  %197 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %198 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %197, i32 0, i32 0
  %199 = load i8*, i8** %198, align 8
  %200 = icmp ne i8* %199, null
  br i1 %200, label %207, label %201

201:                                              ; preds = %191
  %202 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %203 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %202, i32 0, i32 0
  %204 = call i32 @tsi_err(i32* %203, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %7, align 4
  br label %342

207:                                              ; preds = %191
  %208 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %209 = call i32 @DMA_BIT_MASK(i32 64)
  %210 = call i32 @pci_set_dma_mask(%struct.pci_dev* %208, i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %232

212:                                              ; preds = %207
  %213 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %214 = call i32 @DMA_BIT_MASK(i32 32)
  %215 = call i32 @pci_set_dma_mask(%struct.pci_dev* %213, i32 %214)
  store i32 %215, i32* %7, align 4
  %216 = load i32, i32* %7, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %212
  %219 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %220 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %219, i32 0, i32 0
  %221 = call i32 @tsi_err(i32* %220, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %342

222:                                              ; preds = %212
  %223 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %224 = call i32 @DMA_BIT_MASK(i32 32)
  %225 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %223, i32 %224)
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %222
  %228 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %229 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %228, i32 0, i32 0
  %230 = call i32 (i32*, i8*, ...) @tsi_info(i32* %229, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %231

231:                                              ; preds = %227, %222
  br label %243

232:                                              ; preds = %207
  %233 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %234 = call i32 @DMA_BIT_MASK(i32 64)
  %235 = call i32 @pci_set_consistent_dma_mask(%struct.pci_dev* %233, i32 %234)
  store i32 %235, i32* %7, align 4
  %236 = load i32, i32* %7, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %232
  %239 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %240 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %239, i32 0, i32 0
  %241 = call i32 (i32*, i8*, ...) @tsi_info(i32* %240, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %242

242:                                              ; preds = %238, %232
  br label %243

243:                                              ; preds = %242, %231
  %244 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %245 = call i32 @pci_is_pcie(%struct.pci_dev* %244)
  %246 = icmp ne i32 %245, 0
  %247 = xor i1 %246, true
  %248 = zext i1 %247 to i32
  %249 = call i32 @BUG_ON(i32 %248)
  %250 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %251 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %252 = load i32, i32* @PCI_EXP_DEVCTL_RELAX_EN, align 4
  %253 = load i32, i32* @PCI_EXP_DEVCTL_NOSNOOP_EN, align 4
  %254 = or i32 %252, %253
  %255 = call i32 @pcie_capability_clear_and_set_word(%struct.pci_dev* %250, i32 %251, i32 %254, i32 0)
  %256 = load i32, i32* @pcie_mrrs, align 4
  %257 = icmp sge i32 %256, 0
  br i1 %257, label %258, label %274

258:                                              ; preds = %243
  %259 = load i32, i32* @pcie_mrrs, align 4
  %260 = icmp sle i32 %259, 5
  br i1 %260, label %261, label %268

261:                                              ; preds = %258
  %262 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %263 = load i32, i32* @PCI_EXP_DEVCTL, align 4
  %264 = load i32, i32* @PCI_EXP_DEVCTL_READRQ, align 4
  %265 = load i32, i32* @pcie_mrrs, align 4
  %266 = shl i32 %265, 12
  %267 = call i32 @pcie_capability_clear_and_set_word(%struct.pci_dev* %262, i32 %263, i32 %264, i32 %266)
  br label %273

268:                                              ; preds = %258
  %269 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %270 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %269, i32 0, i32 0
  %271 = load i32, i32* @pcie_mrrs, align 4
  %272 = call i32 (i32*, i8*, ...) @tsi_info(i32* %270, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), i32 %271)
  br label %273

273:                                              ; preds = %268, %261
  br label %274

274:                                              ; preds = %273, %243
  %275 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %276 = load i32, i32* @PCI_EXP_DEVCTL2, align 4
  %277 = load i32, i32* @PCI_EXP_DEVCTL2_COMP_TIMEOUT, align 4
  %278 = call i32 @pcie_capability_clear_and_set_word(%struct.pci_dev* %275, i32 %276, i32 %277, i32 2)
  %279 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %280 = load i32, i32* @TSI721_PCIECFG_EPCTL, align 4
  %281 = call i32 @pci_write_config_dword(%struct.pci_dev* %279, i32 %280, i32 1)
  %282 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %283 = load i32, i32* @TSI721_PCIECFG_MSIXTBL, align 4
  %284 = load i32, i32* @TSI721_MSIXTBL_OFFSET, align 4
  %285 = call i32 @pci_write_config_dword(%struct.pci_dev* %282, i32 %283, i32 %284)
  %286 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %287 = load i32, i32* @TSI721_PCIECFG_MSIXPBA, align 4
  %288 = load i32, i32* @TSI721_MSIXPBA_OFFSET, align 4
  %289 = call i32 @pci_write_config_dword(%struct.pci_dev* %286, i32 %287, i32 %288)
  %290 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %291 = load i32, i32* @TSI721_PCIECFG_EPCTL, align 4
  %292 = call i32 @pci_write_config_dword(%struct.pci_dev* %290, i32 %291, i32 0)
  %293 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %294 = call i32 @tsi721_disable_ints(%struct.tsi721_device* %293)
  %295 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %296 = call i32 @tsi721_init_pc2sr_mapping(%struct.tsi721_device* %295)
  %297 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %298 = call i32 @tsi721_init_sr2pc_mapping(%struct.tsi721_device* %297)
  %299 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %300 = call i64 @tsi721_bdma_maint_init(%struct.tsi721_device* %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %308

302:                                              ; preds = %274
  %303 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %304 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %303, i32 0, i32 0
  %305 = call i32 @tsi_err(i32* %304, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0))
  %306 = load i32, i32* @ENOMEM, align 4
  %307 = sub nsw i32 0, %306
  store i32 %307, i32* %7, align 4
  br label %342

308:                                              ; preds = %274
  %309 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %310 = call i32 @tsi721_doorbell_init(%struct.tsi721_device* %309)
  store i32 %310, i32* %7, align 4
  %311 = load i32, i32* %7, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %308
  br label %339

314:                                              ; preds = %308
  %315 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %316 = call i32 @tsi721_port_write_init(%struct.tsi721_device* %315)
  %317 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %318 = call i32 @tsi721_messages_init(%struct.tsi721_device* %317)
  store i32 %318, i32* %7, align 4
  %319 = load i32, i32* %7, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %322

321:                                              ; preds = %314
  br label %334

322:                                              ; preds = %314
  %323 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %324 = call i32 @tsi721_setup_mport(%struct.tsi721_device* %323)
  store i32 %324, i32* %7, align 4
  %325 = load i32, i32* %7, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %322
  br label %334

328:                                              ; preds = %322
  %329 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %330 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %331 = call i32 @pci_set_drvdata(%struct.pci_dev* %329, %struct.tsi721_device* %330)
  %332 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %333 = call i32 @tsi721_interrupts_init(%struct.tsi721_device* %332)
  store i32 0, i32* %3, align 4
  br label %376

334:                                              ; preds = %327, %321
  %335 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %336 = call i32 @tsi721_port_write_free(%struct.tsi721_device* %335)
  %337 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %338 = call i32 @tsi721_doorbell_free(%struct.tsi721_device* %337)
  br label %339

339:                                              ; preds = %334, %313
  %340 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %341 = call i32 @tsi721_bdma_maint_free(%struct.tsi721_device* %340)
  br label %342

342:                                              ; preds = %339, %302, %218, %201
  %343 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %344 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %343, i32 0, i32 1
  %345 = load i8*, i8** %344, align 8
  %346 = icmp ne i8* %345, null
  br i1 %346, label %347, label %352

347:                                              ; preds = %342
  %348 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %349 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %348, i32 0, i32 1
  %350 = load i8*, i8** %349, align 8
  %351 = call i32 @iounmap(i8* %350)
  br label %352

352:                                              ; preds = %347, %342
  %353 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %354 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %353, i32 0, i32 0
  %355 = load i8*, i8** %354, align 8
  %356 = icmp ne i8* %355, null
  br i1 %356, label %357, label %362

357:                                              ; preds = %352
  %358 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %359 = getelementptr inbounds %struct.tsi721_device, %struct.tsi721_device* %358, i32 0, i32 0
  %360 = load i8*, i8** %359, align 8
  %361 = call i32 @iounmap(i8* %360)
  br label %362

362:                                              ; preds = %357, %352
  br label %363

363:                                              ; preds = %362, %185
  %364 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %365 = call i32 @pci_release_regions(%struct.pci_dev* %364)
  %366 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %367 = call i32 @pci_clear_master(%struct.pci_dev* %366)
  br label %368

368:                                              ; preds = %363, %169, %73, %47
  %369 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %370 = call i32 @pci_disable_device(%struct.pci_dev* %369)
  br label %371

371:                                              ; preds = %368, %20
  %372 = load %struct.tsi721_device*, %struct.tsi721_device** %6, align 8
  %373 = call i32 @kfree(%struct.tsi721_device* %372)
  br label %374

374:                                              ; preds = %371, %12
  %375 = load i32, i32* %7, align 4
  store i32 %375, i32* %3, align 4
  br label %376

376:                                              ; preds = %374, %328
  %377 = load i32, i32* %3, align 4
  ret i32 %377
}

declare dso_local %struct.tsi721_device* @kzalloc(i32, i32) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @tsi_err(i32*, i8*) #1

declare dso_local i32 @pci_resource_flags(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @tsi_debug(i32, i32*, i8*, ...) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i8* @pci_ioremap_bar(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @pci_set_consistent_dma_mask(%struct.pci_dev*, i32) #1

declare dso_local i32 @tsi_info(i32*, i8*, ...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pci_is_pcie(%struct.pci_dev*) #1

declare dso_local i32 @pcie_capability_clear_and_set_word(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @tsi721_disable_ints(%struct.tsi721_device*) #1

declare dso_local i32 @tsi721_init_pc2sr_mapping(%struct.tsi721_device*) #1

declare dso_local i32 @tsi721_init_sr2pc_mapping(%struct.tsi721_device*) #1

declare dso_local i64 @tsi721_bdma_maint_init(%struct.tsi721_device*) #1

declare dso_local i32 @tsi721_doorbell_init(%struct.tsi721_device*) #1

declare dso_local i32 @tsi721_port_write_init(%struct.tsi721_device*) #1

declare dso_local i32 @tsi721_messages_init(%struct.tsi721_device*) #1

declare dso_local i32 @tsi721_setup_mport(%struct.tsi721_device*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.tsi721_device*) #1

declare dso_local i32 @tsi721_interrupts_init(%struct.tsi721_device*) #1

declare dso_local i32 @tsi721_port_write_free(%struct.tsi721_device*) #1

declare dso_local i32 @tsi721_doorbell_free(%struct.tsi721_device*) #1

declare dso_local i32 @tsi721_bdma_maint_free(%struct.tsi721_device*) #1

declare dso_local i32 @iounmap(i8*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_clear_master(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.tsi721_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
