; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_alloc_ctrl_dma_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_alloc_ctrl_dma_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { %struct.pci_dev*, i8*, i8*, i8*, i8*, i32, i32, i32, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i32, %struct.fusion_context* }
%struct.pci_dev = type { i32 }
%struct.fusion_context = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to allocate event detail buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to allocate PD list buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Failed to allocate snapdump properties buffer\0A\00", align 1
@HOST_DEVICE_LIST_SZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Failed to allocate targetid list buffer\0A\00", align 1
@MEGASAS_MAX_PD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Failed to allocate controller info buffer\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to allocate LD list buffer\0A\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"Failed to allocate LD targetid list buffer\0A\00", align 1
@reset_devices = common dso_local global i32 0, align 4
@CRASH_DMA_BUF_SIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [39 x i8] c"Failed to allocate system info buffer\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Failed to allocate pd_info buffer\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"Failed to allocate tgt_prop buffer\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Failed to allocate crash dump buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*)* @megasas_alloc_ctrl_dma_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_alloc_ctrl_dma_buffers(%struct.megasas_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.megasas_instance*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.fusion_context*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %3, align 8
  %6 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %7 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %6, i32 0, i32 0
  %8 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  store %struct.pci_dev* %8, %struct.pci_dev** %4, align 8
  %9 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %10 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %9, i32 0, i32 23
  %11 = load %struct.fusion_context*, %struct.fusion_context** %10, align 8
  store %struct.fusion_context* %11, %struct.fusion_context** %5, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %12, i32 0, i32 0
  %14 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %15 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %14, i32 0, i32 22
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @dma_alloc_coherent(i32* %13, i32 4, i32* %15, i32 %16)
  %18 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %19 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %18, i32 0, i32 21
  store i8* %17, i8** %19, align 8
  %20 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %21 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %20, i32 0, i32 21
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %1
  %25 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %26 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %25, i32 0, i32 0
  %27 = load %struct.pci_dev*, %struct.pci_dev** %26, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %254

32:                                               ; preds = %1
  %33 = load %struct.fusion_context*, %struct.fusion_context** %5, align 8
  %34 = icmp ne %struct.fusion_context* %33, null
  br i1 %34, label %35, label %92

35:                                               ; preds = %32
  %36 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = load %struct.fusion_context*, %struct.fusion_context** %5, align 8
  %39 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %38, i32 0, i32 1
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call i8* @dma_alloc_coherent(i32* %37, i32 4, i32* %39, i32 %40)
  %42 = load %struct.fusion_context*, %struct.fusion_context** %5, align 8
  %43 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.fusion_context*, %struct.fusion_context** %5, align 8
  %45 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %54, label %48

48:                                               ; preds = %35
  %49 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = call i32 @dev_err(i32* %50, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %254

54:                                               ; preds = %35
  %55 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %56 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %55, i32 0, i32 0
  %57 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %58 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %57, i32 0, i32 20
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @dma_alloc_coherent(i32* %56, i32 4, i32* %58, i32 %59)
  %61 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %62 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %61, i32 0, i32 19
  store i8* %60, i8** %62, align 8
  %63 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %64 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %63, i32 0, i32 19
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %71, label %67

67:                                               ; preds = %54
  %68 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %69 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %68, i32 0, i32 0
  %70 = call i32 @dev_err(i32* %69, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %67, %54
  %72 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %73 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %72, i32 0, i32 0
  %74 = load i32, i32* @HOST_DEVICE_LIST_SZ, align 4
  %75 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %76 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %75, i32 0, i32 18
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i8* @dma_alloc_coherent(i32* %73, i32 %74, i32* %76, i32 %77)
  %79 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %80 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %79, i32 0, i32 17
  store i8* %78, i8** %80, align 8
  %81 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %82 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %81, i32 0, i32 17
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %71
  %86 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %87 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %86, i32 0, i32 0
  %88 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %254

91:                                               ; preds = %71
  br label %92

92:                                               ; preds = %91, %32
  %93 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %94 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %93, i32 0, i32 0
  %95 = load i32, i32* @MEGASAS_MAX_PD, align 4
  %96 = sext i32 %95 to i64
  %97 = mul i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %100 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %99, i32 0, i32 16
  %101 = load i32, i32* @GFP_KERNEL, align 4
  %102 = call i8* @dma_alloc_coherent(i32* %94, i32 %98, i32* %100, i32 %101)
  %103 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %104 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %103, i32 0, i32 15
  store i8* %102, i8** %104, align 8
  %105 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %106 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %105, i32 0, i32 15
  %107 = load i8*, i8** %106, align 8
  %108 = icmp ne i8* %107, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %92
  %110 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %111 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %110, i32 0, i32 0
  %112 = call i32 @dev_err(i32* %111, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %254

115:                                              ; preds = %92
  %116 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %117 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %116, i32 0, i32 0
  %118 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %119 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %118, i32 0, i32 14
  %120 = load i32, i32* @GFP_KERNEL, align 4
  %121 = call i8* @dma_alloc_coherent(i32* %117, i32 4, i32* %119, i32 %120)
  %122 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %123 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %122, i32 0, i32 13
  store i8* %121, i8** %123, align 8
  %124 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %125 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %124, i32 0, i32 13
  %126 = load i8*, i8** %125, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %134, label %128

128:                                              ; preds = %115
  %129 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %130 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %129, i32 0, i32 0
  %131 = call i32 @dev_err(i32* %130, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %132 = load i32, i32* @ENOMEM, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %2, align 4
  br label %254

134:                                              ; preds = %115
  %135 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %136 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %135, i32 0, i32 0
  %137 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %138 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %137, i32 0, i32 12
  %139 = load i32, i32* @GFP_KERNEL, align 4
  %140 = call i8* @dma_alloc_coherent(i32* %136, i32 4, i32* %138, i32 %139)
  %141 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %142 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %141, i32 0, i32 11
  store i8* %140, i8** %142, align 8
  %143 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %144 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %143, i32 0, i32 11
  %145 = load i8*, i8** %144, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %153, label %147

147:                                              ; preds = %134
  %148 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %149 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %148, i32 0, i32 0
  %150 = call i32 @dev_err(i32* %149, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0))
  %151 = load i32, i32* @ENOMEM, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %2, align 4
  br label %254

153:                                              ; preds = %134
  %154 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %155 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %154, i32 0, i32 0
  %156 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %157 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %156, i32 0, i32 10
  %158 = load i32, i32* @GFP_KERNEL, align 4
  %159 = call i8* @dma_alloc_coherent(i32* %155, i32 4, i32* %157, i32 %158)
  %160 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %161 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %160, i32 0, i32 9
  store i8* %159, i8** %161, align 8
  %162 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %163 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %162, i32 0, i32 9
  %164 = load i8*, i8** %163, align 8
  %165 = icmp ne i8* %164, null
  br i1 %165, label %172, label %166

166:                                              ; preds = %153
  %167 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %168 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %167, i32 0, i32 0
  %169 = call i32 @dev_err(i32* %168, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0))
  %170 = load i32, i32* @ENOMEM, align 4
  %171 = sub nsw i32 0, %170
  store i32 %171, i32* %2, align 4
  br label %254

172:                                              ; preds = %153
  %173 = load i32, i32* @reset_devices, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %253, label %175

175:                                              ; preds = %172
  %176 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %177 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %176, i32 0, i32 0
  %178 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %179 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %178, i32 0, i32 8
  %180 = load i32, i32* @GFP_KERNEL, align 4
  %181 = call i8* @dma_alloc_coherent(i32* %177, i32 4, i32* %179, i32 %180)
  %182 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %183 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %182, i32 0, i32 4
  store i8* %181, i8** %183, align 8
  %184 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %185 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %184, i32 0, i32 0
  %186 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %187 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %186, i32 0, i32 7
  %188 = load i32, i32* @GFP_KERNEL, align 4
  %189 = call i8* @dma_alloc_coherent(i32* %185, i32 4, i32* %187, i32 %188)
  %190 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %191 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %190, i32 0, i32 3
  store i8* %189, i8** %191, align 8
  %192 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %193 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %192, i32 0, i32 0
  %194 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %195 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %194, i32 0, i32 6
  %196 = load i32, i32* @GFP_KERNEL, align 4
  %197 = call i8* @dma_alloc_coherent(i32* %193, i32 4, i32* %195, i32 %196)
  %198 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %199 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %198, i32 0, i32 2
  store i8* %197, i8** %199, align 8
  %200 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %201 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %200, i32 0, i32 0
  %202 = load i32, i32* @CRASH_DMA_BUF_SIZE, align 4
  %203 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %204 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %203, i32 0, i32 5
  %205 = load i32, i32* @GFP_KERNEL, align 4
  %206 = call i8* @dma_alloc_coherent(i32* %201, i32 %202, i32* %204, i32 %205)
  %207 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %208 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %207, i32 0, i32 1
  store i8* %206, i8** %208, align 8
  %209 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %210 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %209, i32 0, i32 4
  %211 = load i8*, i8** %210, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %219, label %213

213:                                              ; preds = %175
  %214 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %215 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %214, i32 0, i32 0
  %216 = load %struct.pci_dev*, %struct.pci_dev** %215, align 8
  %217 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %216, i32 0, i32 0
  %218 = call i32 @dev_err(i32* %217, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i64 0, i64 0))
  br label %219

219:                                              ; preds = %213, %175
  %220 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %221 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %220, i32 0, i32 3
  %222 = load i8*, i8** %221, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %230, label %224

224:                                              ; preds = %219
  %225 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %226 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %225, i32 0, i32 0
  %227 = load %struct.pci_dev*, %struct.pci_dev** %226, align 8
  %228 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %227, i32 0, i32 0
  %229 = call i32 @dev_err(i32* %228, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %230

230:                                              ; preds = %224, %219
  %231 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %232 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %231, i32 0, i32 2
  %233 = load i8*, i8** %232, align 8
  %234 = icmp ne i8* %233, null
  br i1 %234, label %241, label %235

235:                                              ; preds = %230
  %236 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %237 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %236, i32 0, i32 0
  %238 = load %struct.pci_dev*, %struct.pci_dev** %237, align 8
  %239 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %238, i32 0, i32 0
  %240 = call i32 @dev_err(i32* %239, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %241

241:                                              ; preds = %235, %230
  %242 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %243 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %242, i32 0, i32 1
  %244 = load i8*, i8** %243, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %252, label %246

246:                                              ; preds = %241
  %247 = load %struct.megasas_instance*, %struct.megasas_instance** %3, align 8
  %248 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %247, i32 0, i32 0
  %249 = load %struct.pci_dev*, %struct.pci_dev** %248, align 8
  %250 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %249, i32 0, i32 0
  %251 = call i32 @dev_err(i32* %250, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0))
  br label %252

252:                                              ; preds = %246, %241
  br label %253

253:                                              ; preds = %252, %172
  store i32 0, i32* %2, align 4
  br label %254

254:                                              ; preds = %253, %166, %147, %128, %109, %85, %48, %24
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
