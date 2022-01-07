; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_am53c974.c_pci_esp_probe_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_am53c974.c_pci_esp_probe_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_host_template = type { i32 }
%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.Scsi_Host = type { i32, i32, i32, i32, i32, i32 }
%struct.esp = type { i32, i32, i32, i64, i32, i32, i64, i32, i32, i32*, i32*, %struct.Scsi_Host* }
%struct.pci_esp_priv = type { %struct.esp* }

@scsi_esp_template = common dso_local global %struct.scsi_host_template zeroinitializer, align 4
@ENODEV = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot enable device\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to set 32bit DMA mask\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to allocate scsi host\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to allocate esp_priv\0A\00", align 1
@pci_esp_ops = common dso_local global i32 0, align 4
@ESP_FLAG_USE_FIFO = common dso_local global i32 0, align 4
@am53c974_fenab = common dso_local global i64 0, align 8
@ESP_CONFIG2_FENAB = common dso_local global i32 0, align 4
@DRV_MODULE_NAME = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"pci memory selection failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"pci I/O map failed\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"failed to allocate command block\0A\00", align 1
@scsi_esp_intr = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"failed to register IRQ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @pci_esp_probe_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_esp_probe_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.scsi_host_template*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.esp*, align 8
  %10 = alloca %struct.pci_esp_priv*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.scsi_host_template* @scsi_esp_template, %struct.scsi_host_template** %6, align 8
  %11 = load i32, i32* @ENODEV, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = call i64 @pci_enable_device(%struct.pci_dev* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load i32, i32* @KERN_INFO, align 4
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 0
  %20 = call i32 @dev_printk(i32 %17, i32* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %241

23:                                               ; preds = %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %24, i32 0, i32 0
  %26 = call i32 @DMA_BIT_MASK(i32 32)
  %27 = call i64 @dma_set_mask(i32* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load i32, i32* @KERN_INFO, align 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = call i32 @dev_printk(i32 %30, i32* %32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %237

34:                                               ; preds = %23
  %35 = load %struct.scsi_host_template*, %struct.scsi_host_template** %6, align 8
  %36 = call %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template* %35, i32 72)
  store %struct.Scsi_Host* %36, %struct.Scsi_Host** %8, align 8
  %37 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %38 = icmp ne %struct.Scsi_Host* %37, null
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @KERN_INFO, align 4
  %41 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %42 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %41, i32 0, i32 0
  %43 = call i32 @dev_printk(i32 %40, i32* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %7, align 4
  br label %237

46:                                               ; preds = %34
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.pci_esp_priv* @kzalloc(i32 8, i32 %47)
  store %struct.pci_esp_priv* %48, %struct.pci_esp_priv** %10, align 8
  %49 = load %struct.pci_esp_priv*, %struct.pci_esp_priv** %10, align 8
  %50 = icmp ne %struct.pci_esp_priv* %49, null
  br i1 %50, label %58, label %51

51:                                               ; preds = %46
  %52 = load i32, i32* @KERN_INFO, align 4
  %53 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %54 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %53, i32 0, i32 0
  %55 = call i32 @dev_printk(i32 %52, i32* %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %7, align 4
  br label %234

58:                                               ; preds = %46
  %59 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %60 = call %struct.esp* @shost_priv(%struct.Scsi_Host* %59)
  store %struct.esp* %60, %struct.esp** %9, align 8
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %62 = load %struct.esp*, %struct.esp** %9, align 8
  %63 = getelementptr inbounds %struct.esp, %struct.esp* %62, i32 0, i32 11
  store %struct.Scsi_Host* %61, %struct.Scsi_Host** %63, align 8
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = load %struct.esp*, %struct.esp** %9, align 8
  %67 = getelementptr inbounds %struct.esp, %struct.esp* %66, i32 0, i32 10
  store i32* %65, i32** %67, align 8
  %68 = load %struct.esp*, %struct.esp** %9, align 8
  %69 = getelementptr inbounds %struct.esp, %struct.esp* %68, i32 0, i32 9
  store i32* @pci_esp_ops, i32** %69, align 8
  %70 = load i32, i32* @ESP_FLAG_USE_FIFO, align 4
  %71 = load %struct.esp*, %struct.esp** %9, align 8
  %72 = getelementptr inbounds %struct.esp, %struct.esp* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i64, i64* @am53c974_fenab, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %58
  %78 = load i32, i32* @ESP_CONFIG2_FENAB, align 4
  %79 = load %struct.esp*, %struct.esp** %9, align 8
  %80 = getelementptr inbounds %struct.esp, %struct.esp* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %77, %58
  %84 = load %struct.esp*, %struct.esp** %9, align 8
  %85 = load %struct.pci_esp_priv*, %struct.pci_esp_priv** %10, align 8
  %86 = getelementptr inbounds %struct.pci_esp_priv, %struct.pci_esp_priv* %85, i32 0, i32 0
  store %struct.esp* %84, %struct.esp** %86, align 8
  %87 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %88 = load i32, i32* @DRV_MODULE_NAME, align 4
  %89 = call i64 @pci_request_regions(%struct.pci_dev* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load i32, i32* @KERN_ERR, align 4
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 0
  %95 = call i32 @dev_printk(i32 %92, i32* %94, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %231

96:                                               ; preds = %83
  %97 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = call i32 @pci_resource_len(%struct.pci_dev* %98, i32 0)
  %100 = call i64 @pci_iomap(%struct.pci_dev* %97, i32 0, i32 %99)
  %101 = load %struct.esp*, %struct.esp** %9, align 8
  %102 = getelementptr inbounds %struct.esp, %struct.esp* %101, i32 0, i32 3
  store i64 %100, i64* %102, align 8
  %103 = load %struct.esp*, %struct.esp** %9, align 8
  %104 = getelementptr inbounds %struct.esp, %struct.esp* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %96
  %108 = load i32, i32* @KERN_ERR, align 4
  %109 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %110 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %109, i32 0, i32 0
  %111 = call i32 @dev_printk(i32 %108, i32* %110, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %7, align 4
  br label %228

114:                                              ; preds = %96
  %115 = load %struct.esp*, %struct.esp** %9, align 8
  %116 = getelementptr inbounds %struct.esp, %struct.esp* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.esp*, %struct.esp** %9, align 8
  %119 = getelementptr inbounds %struct.esp, %struct.esp* %118, i32 0, i32 6
  store i64 %117, i64* %119, align 8
  %120 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %121 = call i32 @pci_set_master(%struct.pci_dev* %120)
  %122 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %123 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %122, i32 0, i32 0
  %124 = load %struct.esp*, %struct.esp** %9, align 8
  %125 = getelementptr inbounds %struct.esp, %struct.esp* %124, i32 0, i32 4
  %126 = load i32, i32* @GFP_KERNEL, align 4
  %127 = call i32 @dma_alloc_coherent(i32* %123, i32 16, i32* %125, i32 %126)
  %128 = load %struct.esp*, %struct.esp** %9, align 8
  %129 = getelementptr inbounds %struct.esp, %struct.esp* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  %130 = load %struct.esp*, %struct.esp** %9, align 8
  %131 = getelementptr inbounds %struct.esp, %struct.esp* %130, i32 0, i32 5
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %141, label %134

134:                                              ; preds = %114
  %135 = load i32, i32* @KERN_ERR, align 4
  %136 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %137 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %136, i32 0, i32 0
  %138 = call i32 @dev_printk(i32 %135, i32* %137, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %139 = load i32, i32* @ENOMEM, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %7, align 4
  br label %222

141:                                              ; preds = %114
  %142 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %143 = load %struct.pci_esp_priv*, %struct.pci_esp_priv** %10, align 8
  %144 = call i32 @pci_set_drvdata(%struct.pci_dev* %142, %struct.pci_esp_priv* %143)
  %145 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %146 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @scsi_esp_intr, align 4
  %149 = load i32, i32* @IRQF_SHARED, align 4
  %150 = load i32, i32* @DRV_MODULE_NAME, align 4
  %151 = load %struct.esp*, %struct.esp** %9, align 8
  %152 = call i32 @request_irq(i32 %147, i32 %148, i32 %149, i32 %150, %struct.esp* %151)
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* %7, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %141
  %156 = load i32, i32* @KERN_ERR, align 4
  %157 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %158 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %157, i32 0, i32 0
  %159 = call i32 @dev_printk(i32 %156, i32* %158, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %210

160:                                              ; preds = %141
  %161 = load %struct.esp*, %struct.esp** %9, align 8
  %162 = getelementptr inbounds %struct.esp, %struct.esp* %161, i32 0, i32 0
  store i32 7, i32* %162, align 8
  %163 = load %struct.esp*, %struct.esp** %9, align 8
  %164 = call i32 @dc390_check_eeprom(%struct.esp* %163)
  %165 = load %struct.esp*, %struct.esp** %9, align 8
  %166 = getelementptr inbounds %struct.esp, %struct.esp* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %169 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  %170 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %171 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %170, i32 0, i32 1
  store i32 8, i32* %171, align 4
  %172 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %173 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %176 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %175, i32 0, i32 5
  store i32 %174, i32* %176, align 4
  %177 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %178 = call i32 @pci_resource_start(%struct.pci_dev* %177, i32 0)
  %179 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %180 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 4
  %181 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %182 = call i32 @pci_resource_len(%struct.pci_dev* %181, i32 0)
  %183 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %184 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %183, i32 0, i32 4
  store i32 %182, i32* %184, align 4
  %185 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %186 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %189 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 4
  %190 = load %struct.esp*, %struct.esp** %9, align 8
  %191 = getelementptr inbounds %struct.esp, %struct.esp* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = shl i32 1, %192
  %194 = load %struct.esp*, %struct.esp** %9, align 8
  %195 = getelementptr inbounds %struct.esp, %struct.esp* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  %196 = load %struct.esp*, %struct.esp** %9, align 8
  %197 = getelementptr inbounds %struct.esp, %struct.esp* %196, i32 0, i32 2
  store i32 40000000, i32* %197, align 8
  %198 = load %struct.esp*, %struct.esp** %9, align 8
  %199 = call i32 @scsi_esp_register(%struct.esp* %198)
  store i32 %199, i32* %7, align 4
  %200 = load i32, i32* %7, align 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %203

202:                                              ; preds = %160
  br label %204

203:                                              ; preds = %160
  store i32 0, i32* %3, align 4
  br label %241

204:                                              ; preds = %202
  %205 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %206 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.esp*, %struct.esp** %9, align 8
  %209 = call i32 @free_irq(i32 %207, %struct.esp* %208)
  br label %210

210:                                              ; preds = %204, %155
  %211 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %212 = call i32 @pci_set_drvdata(%struct.pci_dev* %211, %struct.pci_esp_priv* null)
  %213 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %214 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %213, i32 0, i32 0
  %215 = load %struct.esp*, %struct.esp** %9, align 8
  %216 = getelementptr inbounds %struct.esp, %struct.esp* %215, i32 0, i32 5
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.esp*, %struct.esp** %9, align 8
  %219 = getelementptr inbounds %struct.esp, %struct.esp* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @dma_free_coherent(i32* %214, i32 16, i32 %217, i32 %220)
  br label %222

222:                                              ; preds = %210, %134
  %223 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %224 = load %struct.esp*, %struct.esp** %9, align 8
  %225 = getelementptr inbounds %struct.esp, %struct.esp* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @pci_iounmap(%struct.pci_dev* %223, i64 %226)
  br label %228

228:                                              ; preds = %222, %107
  %229 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %230 = call i32 @pci_release_regions(%struct.pci_dev* %229)
  br label %231

231:                                              ; preds = %228, %91
  %232 = load %struct.pci_esp_priv*, %struct.pci_esp_priv** %10, align 8
  %233 = call i32 @kfree(%struct.pci_esp_priv* %232)
  br label %234

234:                                              ; preds = %231, %51
  %235 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %236 = call i32 @scsi_host_put(%struct.Scsi_Host* %235)
  br label %237

237:                                              ; preds = %234, %39, %29
  %238 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %239 = call i32 @pci_disable_device(%struct.pci_dev* %238)
  %240 = load i32, i32* %7, align 4
  store i32 %240, i32* %3, align 4
  br label %241

241:                                              ; preds = %237, %203, %16
  %242 = load i32, i32* %3, align 4
  ret i32 %242
}

declare dso_local i64 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local i64 @dma_set_mask(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(%struct.scsi_host_template*, i32) #1

declare dso_local %struct.pci_esp_priv* @kzalloc(i32, i32) #1

declare dso_local %struct.esp* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i64 @pci_request_regions(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_iomap(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.pci_esp_priv*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.esp*) #1

declare dso_local i32 @dc390_check_eeprom(%struct.esp*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @scsi_esp_register(%struct.esp*) #1

declare dso_local i32 @free_irq(i32, %struct.esp*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @pci_iounmap(%struct.pci_dev*, i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @kfree(%struct.pci_esp_priv*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
