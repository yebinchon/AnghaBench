; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_pci_mem_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_sli4_pci_mem_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { %struct.TYPE_3__, i8*, i8*, i8*, i8*, i8*, i8*, %struct.pci_dev* }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i32, i32, i32, i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.pci_dev = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@LPFC_SLI_INTF = common dso_local global i32 0, align 4
@lpfc_sli_intf_valid = common dso_local global i32 0, align 4
@LPFC_SLI_INTF_VALID = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"2894 SLI_INTF reg contents invalid sli_intf reg 0x%x\0A\00", align 1
@lpfc_sli_intf_if_type = common dso_local global i32 0, align 4
@PCI_64BIT_BAR0 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"ioremap failed for SLI4 PCI config registers.\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"FATAL - No BAR0 mapping for SLI4, if_type 2\0A\00", align 1
@PCI_64BIT_BAR2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"ioremap failed for SLI4 HBA control registers.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"ioremap failed for SLI4 HBA doorbell registers.\0A\00", align 1
@PCI_64BIT_BAR4 = common dso_local global i32 0, align 4
@LPFC_VF0 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [44 x i8] c"ioremap failed for SLI4 HBA dpp registers.\0A\00", align 1
@lpfc_sli4_eq_clr_intr = common dso_local global i32 0, align 4
@lpfc_sli4_write_eq_db = common dso_local global i32 0, align 4
@lpfc_sli4_write_cq_db = common dso_local global i32 0, align 4
@lpfc_sli4_if6_eq_clr_intr = common dso_local global i32 0, align 4
@lpfc_sli4_if6_write_eq_db = common dso_local global i32 0, align 4
@lpfc_sli4_if6_write_cq_db = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*)* @lpfc_sli4_pci_mem_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_sli4_pci_mem_setup(%struct.lpfc_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  %10 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %11 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %10, i32 0, i32 7
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %4, align 8
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = icmp ne %struct.pci_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %400

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 0
  %21 = call i32 @DMA_BIT_MASK(i32 64)
  %22 = call i32 @dma_set_mask_and_coherent(i32* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %18
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %26, i32 0, i32 0
  %28 = call i32 @DMA_BIT_MASK(i32 32)
  %29 = call i32 @dma_set_mask_and_coherent(i32* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %25, %18
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %2, align 4
  br label %400

35:                                               ; preds = %30
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = load i32, i32* @LPFC_SLI_INTF, align 4
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i64 @pci_read_config_dword(%struct.pci_dev* %36, i32 %37, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %400

47:                                               ; preds = %35
  %48 = load i32, i32* @lpfc_sli_intf_valid, align 4
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %50 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 7
  %52 = call i64 @bf_get(i32 %48, %struct.TYPE_4__* %51)
  %53 = load i64, i64* @LPFC_SLI_INTF_VALID, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %47
  %56 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %57 = load i32, i32* @KERN_ERR, align 4
  %58 = load i32, i32* @LOG_INIT, align 4
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %60 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 7
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %56, i32 %57, i32 %58, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @ENODEV, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %400

67:                                               ; preds = %47
  %68 = load i32, i32* @lpfc_sli_intf_if_type, align 4
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %70 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 7
  %72 = call i64 @bf_get(i32 %68, %struct.TYPE_4__* %71)
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %9, align 4
  %74 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %75 = load i32, i32* @PCI_64BIT_BAR0, align 4
  %76 = call i8* @pci_resource_start(%struct.pci_dev* %74, i32 %75)
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %117

78:                                               ; preds = %67
  %79 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %80 = load i32, i32* @PCI_64BIT_BAR0, align 4
  %81 = call i8* @pci_resource_start(%struct.pci_dev* %79, i32 %80)
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %83 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %82, i32 0, i32 5
  store i8* %81, i8** %83, align 8
  %84 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %85 = load i32, i32* @PCI_64BIT_BAR0, align 4
  %86 = call i64 @pci_resource_len(%struct.pci_dev* %84, i32 %85)
  store i64 %86, i64* %5, align 8
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %88 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %87, i32 0, i32 5
  %89 = load i8*, i8** %88, align 8
  %90 = load i64, i64* %5, align 8
  %91 = call i8* @ioremap(i8* %89, i64 %90)
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %93 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  store i8* %91, i8** %94, align 8
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %107, label %100

100:                                              ; preds = %78
  %101 = load i32, i32* @KERN_ERR, align 4
  %102 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %103 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %102, i32 0, i32 0
  %104 = call i32 @dev_printk(i32 %101, i32* %103, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %105 = load i32, i32* @ENODEV, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %400

107:                                              ; preds = %78
  %108 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %109 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %113 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %112, i32 0, i32 6
  store i8* %111, i8** %113, align 8
  %114 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %115 = load i32, i32* %9, align 4
  %116 = call i32 @lpfc_sli4_bar0_register_memmap(%struct.lpfc_hba* %114, i32 %115)
  br label %158

117:                                              ; preds = %67
  %118 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %119 = call i8* @pci_resource_start(%struct.pci_dev* %118, i32 1)
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %121 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %120, i32 0, i32 5
  store i8* %119, i8** %121, align 8
  %122 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %123 = call i64 @pci_resource_len(%struct.pci_dev* %122, i32 1)
  store i64 %123, i64* %5, align 8
  %124 = load i32, i32* %9, align 4
  %125 = icmp sge i32 %124, 129
  br i1 %125, label %126, label %133

126:                                              ; preds = %117
  %127 = load i32, i32* @KERN_ERR, align 4
  %128 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %128, i32 0, i32 0
  %130 = call i32 @dev_printk(i32 %127, i32* %129, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i32, i32* @ENODEV, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %400

133:                                              ; preds = %117
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %135 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %134, i32 0, i32 5
  %136 = load i8*, i8** %135, align 8
  %137 = load i64, i64* %5, align 8
  %138 = call i8* @ioremap(i8* %136, i64 %137)
  %139 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %140 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  store i8* %138, i8** %141, align 8
  %142 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %143 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %154, label %147

147:                                              ; preds = %133
  %148 = load i32, i32* @KERN_ERR, align 4
  %149 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %150 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %149, i32 0, i32 0
  %151 = call i32 @dev_printk(i32 %148, i32* %150, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %152 = load i32, i32* @ENODEV, align 4
  %153 = sub nsw i32 0, %152
  store i32 %153, i32* %2, align 4
  br label %400

154:                                              ; preds = %133
  %155 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %156 = load i32, i32* %9, align 4
  %157 = call i32 @lpfc_sli4_bar0_register_memmap(%struct.lpfc_hba* %155, i32 %156)
  br label %158

158:                                              ; preds = %154, %107
  %159 = load i32, i32* %9, align 4
  %160 = icmp eq i32 %159, 130
  br i1 %160, label %161, label %208

161:                                              ; preds = %158
  %162 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %163 = load i32, i32* @PCI_64BIT_BAR2, align 4
  %164 = call i8* @pci_resource_start(%struct.pci_dev* %162, i32 %163)
  %165 = icmp ne i8* %164, null
  br i1 %165, label %166, label %204

166:                                              ; preds = %161
  %167 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %168 = load i32, i32* @PCI_64BIT_BAR2, align 4
  %169 = call i8* @pci_resource_start(%struct.pci_dev* %167, i32 %168)
  %170 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %171 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %170, i32 0, i32 4
  store i8* %169, i8** %171, align 8
  %172 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %173 = load i32, i32* @PCI_64BIT_BAR2, align 4
  %174 = call i64 @pci_resource_len(%struct.pci_dev* %172, i32 %173)
  store i64 %174, i64* %6, align 8
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %176 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %175, i32 0, i32 4
  %177 = load i8*, i8** %176, align 8
  %178 = load i64, i64* %6, align 8
  %179 = call i8* @ioremap(i8* %177, i64 %178)
  %180 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %181 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i32 0, i32 1
  store i8* %179, i8** %182, align 8
  %183 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %184 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 1
  %186 = load i8*, i8** %185, align 8
  %187 = icmp ne i8* %186, null
  br i1 %187, label %194, label %188

188:                                              ; preds = %166
  %189 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %190 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %189, i32 0, i32 0
  %191 = call i32 @dev_err(i32* %190, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %192 = load i32, i32* @ENOMEM, align 4
  %193 = sub nsw i32 0, %192
  store i32 %193, i32* %8, align 4
  br label %393

194:                                              ; preds = %166
  %195 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %196 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %196, i32 0, i32 1
  %198 = load i8*, i8** %197, align 8
  %199 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %200 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %199, i32 0, i32 3
  store i8* %198, i8** %200, align 8
  %201 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %202 = load i32, i32* %9, align 4
  %203 = call i32 @lpfc_sli4_bar1_register_memmap(%struct.lpfc_hba* %201, i32 %202)
  br label %207

204:                                              ; preds = %161
  %205 = load i32, i32* @ENOMEM, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %8, align 4
  br label %393

207:                                              ; preds = %194
  br label %208

208:                                              ; preds = %207, %158
  %209 = load i32, i32* %9, align 4
  %210 = icmp eq i32 %209, 128
  br i1 %210, label %211, label %254

211:                                              ; preds = %208
  %212 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %213 = load i32, i32* @PCI_64BIT_BAR2, align 4
  %214 = call i8* @pci_resource_start(%struct.pci_dev* %212, i32 %213)
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %254

216:                                              ; preds = %211
  %217 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %218 = load i32, i32* @PCI_64BIT_BAR2, align 4
  %219 = call i8* @pci_resource_start(%struct.pci_dev* %217, i32 %218)
  %220 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %221 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %220, i32 0, i32 4
  store i8* %219, i8** %221, align 8
  %222 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %223 = load i32, i32* @PCI_64BIT_BAR2, align 4
  %224 = call i64 @pci_resource_len(%struct.pci_dev* %222, i32 %223)
  store i64 %224, i64* %6, align 8
  %225 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %226 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %225, i32 0, i32 4
  %227 = load i8*, i8** %226, align 8
  %228 = load i64, i64* %6, align 8
  %229 = call i8* @ioremap(i8* %227, i64 %228)
  %230 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %231 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %231, i32 0, i32 2
  store i8* %229, i8** %232, align 8
  %233 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %234 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %234, i32 0, i32 2
  %236 = load i8*, i8** %235, align 8
  %237 = icmp ne i8* %236, null
  br i1 %237, label %244, label %238

238:                                              ; preds = %216
  %239 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %240 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %239, i32 0, i32 0
  %241 = call i32 @dev_err(i32* %240, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %242 = load i32, i32* @ENOMEM, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %8, align 4
  br label %393

244:                                              ; preds = %216
  %245 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %246 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %246, i32 0, i32 2
  %248 = load i8*, i8** %247, align 8
  %249 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %250 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %249, i32 0, i32 3
  store i8* %248, i8** %250, align 8
  %251 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %252 = load i32, i32* %9, align 4
  %253 = call i32 @lpfc_sli4_bar1_register_memmap(%struct.lpfc_hba* %251, i32 %252)
  br label %254

254:                                              ; preds = %244, %211, %208
  %255 = load i32, i32* %9, align 4
  %256 = icmp eq i32 %255, 130
  br i1 %256, label %257, label %308

257:                                              ; preds = %254
  %258 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %259 = load i32, i32* @PCI_64BIT_BAR4, align 4
  %260 = call i8* @pci_resource_start(%struct.pci_dev* %258, i32 %259)
  %261 = icmp ne i8* %260, null
  br i1 %261, label %262, label %304

262:                                              ; preds = %257
  %263 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %264 = load i32, i32* @PCI_64BIT_BAR4, align 4
  %265 = call i8* @pci_resource_start(%struct.pci_dev* %263, i32 %264)
  %266 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %267 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %266, i32 0, i32 2
  store i8* %265, i8** %267, align 8
  %268 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %269 = load i32, i32* @PCI_64BIT_BAR4, align 4
  %270 = call i64 @pci_resource_len(%struct.pci_dev* %268, i32 %269)
  store i64 %270, i64* %7, align 8
  %271 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %272 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %271, i32 0, i32 2
  %273 = load i8*, i8** %272, align 8
  %274 = load i64, i64* %7, align 8
  %275 = call i8* @ioremap(i8* %273, i64 %274)
  %276 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %277 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 2
  store i8* %275, i8** %278, align 8
  %279 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %280 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %280, i32 0, i32 2
  %282 = load i8*, i8** %281, align 8
  %283 = icmp ne i8* %282, null
  br i1 %283, label %290, label %284

284:                                              ; preds = %262
  %285 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %286 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %285, i32 0, i32 0
  %287 = call i32 @dev_err(i32* %286, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  %288 = load i32, i32* @ENOMEM, align 4
  %289 = sub nsw i32 0, %288
  store i32 %289, i32* %8, align 4
  br label %387

290:                                              ; preds = %262
  %291 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %292 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %291, i32 0, i32 0
  %293 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %292, i32 0, i32 2
  %294 = load i8*, i8** %293, align 8
  %295 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %296 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %295, i32 0, i32 1
  store i8* %294, i8** %296, align 8
  %297 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %298 = load i32, i32* @LPFC_VF0, align 4
  %299 = call i32 @lpfc_sli4_bar2_register_memmap(%struct.lpfc_hba* %297, i32 %298)
  store i32 %299, i32* %8, align 4
  %300 = load i32, i32* %8, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %303

302:                                              ; preds = %290
  br label %381

303:                                              ; preds = %290
  br label %307

304:                                              ; preds = %257
  %305 = load i32, i32* @ENOMEM, align 4
  %306 = sub nsw i32 0, %305
  store i32 %306, i32* %8, align 4
  br label %381

307:                                              ; preds = %303
  br label %308

308:                                              ; preds = %307, %254
  %309 = load i32, i32* %9, align 4
  %310 = icmp eq i32 %309, 128
  br i1 %310, label %311, label %351

311:                                              ; preds = %308
  %312 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %313 = load i32, i32* @PCI_64BIT_BAR4, align 4
  %314 = call i8* @pci_resource_start(%struct.pci_dev* %312, i32 %313)
  %315 = icmp ne i8* %314, null
  br i1 %315, label %316, label %351

316:                                              ; preds = %311
  %317 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %318 = load i32, i32* @PCI_64BIT_BAR4, align 4
  %319 = call i8* @pci_resource_start(%struct.pci_dev* %317, i32 %318)
  %320 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %321 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %320, i32 0, i32 2
  store i8* %319, i8** %321, align 8
  %322 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %323 = load i32, i32* @PCI_64BIT_BAR4, align 4
  %324 = call i64 @pci_resource_len(%struct.pci_dev* %322, i32 %323)
  store i64 %324, i64* %7, align 8
  %325 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %326 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %325, i32 0, i32 2
  %327 = load i8*, i8** %326, align 8
  %328 = load i64, i64* %7, align 8
  %329 = call i8* @ioremap(i8* %327, i64 %328)
  %330 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %331 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %331, i32 0, i32 6
  store i8* %329, i8** %332, align 8
  %333 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %334 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %334, i32 0, i32 6
  %336 = load i8*, i8** %335, align 8
  %337 = icmp ne i8* %336, null
  br i1 %337, label %344, label %338

338:                                              ; preds = %316
  %339 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %340 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %339, i32 0, i32 0
  %341 = call i32 @dev_err(i32* %340, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  %342 = load i32, i32* @ENOMEM, align 4
  %343 = sub nsw i32 0, %342
  store i32 %343, i32* %8, align 4
  br label %387

344:                                              ; preds = %316
  %345 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %346 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 6
  %348 = load i8*, i8** %347, align 8
  %349 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %350 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %349, i32 0, i32 1
  store i8* %348, i8** %350, align 8
  br label %351

351:                                              ; preds = %344, %311, %308
  %352 = load i32, i32* %9, align 4
  switch i32 %352, label %379 [
    i32 130, label %353
    i32 129, label %353
    i32 128, label %366
  ]

353:                                              ; preds = %351, %351
  %354 = load i32, i32* @lpfc_sli4_eq_clr_intr, align 4
  %355 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %356 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %355, i32 0, i32 0
  %357 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %356, i32 0, i32 5
  store i32 %354, i32* %357, align 8
  %358 = load i32, i32* @lpfc_sli4_write_eq_db, align 4
  %359 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %360 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %360, i32 0, i32 4
  store i32 %358, i32* %361, align 4
  %362 = load i32, i32* @lpfc_sli4_write_cq_db, align 4
  %363 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %364 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %364, i32 0, i32 3
  store i32 %362, i32* %365, align 8
  br label %380

366:                                              ; preds = %351
  %367 = load i32, i32* @lpfc_sli4_if6_eq_clr_intr, align 4
  %368 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %369 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %369, i32 0, i32 5
  store i32 %367, i32* %370, align 8
  %371 = load i32, i32* @lpfc_sli4_if6_write_eq_db, align 4
  %372 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %373 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %373, i32 0, i32 4
  store i32 %371, i32* %374, align 4
  %375 = load i32, i32* @lpfc_sli4_if6_write_cq_db, align 4
  %376 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %377 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %377, i32 0, i32 3
  store i32 %375, i32* %378, align 8
  br label %380

379:                                              ; preds = %351
  br label %380

380:                                              ; preds = %379, %366, %353
  store i32 0, i32* %2, align 4
  br label %400

381:                                              ; preds = %304, %302
  %382 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %383 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %383, i32 0, i32 2
  %385 = load i8*, i8** %384, align 8
  %386 = call i32 @iounmap(i8* %385)
  br label %387

387:                                              ; preds = %381, %338, %284
  %388 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %389 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %389, i32 0, i32 1
  %391 = load i8*, i8** %390, align 8
  %392 = call i32 @iounmap(i8* %391)
  br label %393

393:                                              ; preds = %387, %238, %204, %188
  %394 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %395 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %395, i32 0, i32 0
  %397 = load i8*, i8** %396, align 8
  %398 = call i32 @iounmap(i8* %397)
  %399 = load i32, i32* %8, align 4
  store i32 %399, i32* %2, align 4
  br label %400

400:                                              ; preds = %393, %380, %147, %126, %100, %55, %44, %33, %15
  %401 = load i32, i32* %2, align 4
  ret i32 %401
}

declare dso_local i32 @dma_set_mask_and_coherent(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i64 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i64 @bf_get(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32) #1

declare dso_local i8* @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i64 @pci_resource_len(%struct.pci_dev*, i32) #1

declare dso_local i8* @ioremap(i8*, i64) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local i32 @lpfc_sli4_bar0_register_memmap(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @lpfc_sli4_bar1_register_memmap(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli4_bar2_register_memmap(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @iounmap(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
