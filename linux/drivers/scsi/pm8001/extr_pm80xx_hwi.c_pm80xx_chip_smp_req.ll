; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_chip_smp_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_pm80xx_chip_smp_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, i32, %struct.inbound_queue_table* }
%struct.inbound_queue_table = type { i32 }
%struct.pm8001_ccb_info = type { i32, %struct.sas_task* }
%struct.sas_task = type { %struct.TYPE_4__, %struct.domain_device* }
%struct.TYPE_4__ = type { %struct.scatterlist, %struct.scatterlist }
%struct.scatterlist = type { i32 }
%struct.domain_device = type { %struct.pm8001_device* }
%struct.pm8001_device = type { i32 }
%struct.smp_req = type { i8*, i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i8*, i8* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OPC_INB_SMP_REQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"SMP Frame Length %d\0A\00", align 1
@SMP_DIRECT = common dso_local global i32 0, align 4
@SMP_INDIRECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"SMP REQUEST INDIRECT MODE\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"SMP REQUEST DIRECT MODE\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Byte[%d]:%x (DMA data:%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*, %struct.pm8001_ccb_info*)* @pm80xx_chip_smp_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm80xx_chip_smp_req(%struct.pm8001_hba_info* %0, %struct.pm8001_ccb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pm8001_hba_info*, align 8
  %5 = alloca %struct.pm8001_ccb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sas_task*, align 8
  %9 = alloca %struct.domain_device*, align 8
  %10 = alloca %struct.pm8001_device*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca %struct.scatterlist*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.smp_req, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.inbound_queue_table*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %4, align 8
  store %struct.pm8001_ccb_info* %1, %struct.pm8001_ccb_info** %5, align 8
  %22 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %5, align 8
  %23 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %22, i32 0, i32 1
  %24 = load %struct.sas_task*, %struct.sas_task** %23, align 8
  store %struct.sas_task* %24, %struct.sas_task** %8, align 8
  %25 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %26 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %25, i32 0, i32 1
  %27 = load %struct.domain_device*, %struct.domain_device** %26, align 8
  store %struct.domain_device* %27, %struct.domain_device** %9, align 8
  %28 = load %struct.domain_device*, %struct.domain_device** %9, align 8
  %29 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %28, i32 0, i32 0
  %30 = load %struct.pm8001_device*, %struct.pm8001_device** %29, align 8
  store %struct.pm8001_device* %30, %struct.pm8001_device** %10, align 8
  store i8* null, i8** %18, align 8
  %31 = call i32 @memset(%struct.smp_req* %15, i32 0, i32 56)
  %32 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %33 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store %struct.scatterlist* %34, %struct.scatterlist** %11, align 8
  %35 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %36 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %39 = load i32, i32* @DMA_TO_DEVICE, align 4
  %40 = call i32 @dma_map_sg(i32 %37, %struct.scatterlist* %38, i32 1, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %2
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %320

46:                                               ; preds = %2
  %47 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %48 = call i32 @sg_dma_len(%struct.scatterlist* %47)
  store i32 %48, i32* %13, align 4
  %49 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %50 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store %struct.scatterlist* %51, %struct.scatterlist** %12, align 8
  %52 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %53 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %56 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %57 = call i32 @dma_map_sg(i32 %54, %struct.scatterlist* %55, i32 1, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %46
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %7, align 4
  br label %308

63:                                               ; preds = %46
  %64 = load %struct.scatterlist*, %struct.scatterlist** %12, align 8
  %65 = call i32 @sg_dma_len(%struct.scatterlist* %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %13, align 4
  %67 = and i32 %66, 3
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %63
  %70 = load i32, i32* %14, align 4
  %71 = and i32 %70, 3
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69, %63
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %7, align 4
  br label %297

76:                                               ; preds = %69
  %77 = load i32, i32* @OPC_INB_SMP_REQUEST, align 4
  store i32 %77, i32* %16, align 4
  %78 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %79 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %78, i32 0, i32 2
  %80 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %79, align 8
  %81 = getelementptr inbounds %struct.inbound_queue_table, %struct.inbound_queue_table* %80, i64 0
  store %struct.inbound_queue_table* %81, %struct.inbound_queue_table** %17, align 8
  %82 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %5, align 8
  %83 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @cpu_to_le32(i32 %84)
  %86 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 2
  store i8* %85, i8** %86, align 8
  %87 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %88 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %21, align 4
  %90 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %91 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %92 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %93)
  %95 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %90, i32 %94)
  %96 = load i32, i32* %21, align 4
  %97 = sub nsw i32 %96, 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %76
  %100 = load i32, i32* @SMP_DIRECT, align 4
  %101 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %102 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  br label %107

103:                                              ; preds = %76
  %104 = load i32, i32* @SMP_INDIRECT, align 4
  %105 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %106 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  br label %107

107:                                              ; preds = %103, %99
  %108 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %109 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = call i64 @sg_dma_address(%struct.scatterlist* %110)
  %112 = call i8* @cpu_to_le64(i64 %111)
  store i8* %112, i8** %19, align 8
  %113 = load i8*, i8** %19, align 8
  %114 = call i64 @phys_to_virt(i8* %113)
  %115 = inttoptr i64 %114 to i8*
  store i8* %115, i8** %18, align 8
  %116 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %117 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @SMP_INDIRECT, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %174

121:                                              ; preds = %107
  %122 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %123 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %124 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %122, i32 %123)
  store i32 0, i32* %20, align 4
  br label %125

125:                                              ; preds = %139, %121
  %126 = load i32, i32* %20, align 4
  %127 = icmp slt i32 %126, 4
  br i1 %127, label %128, label %142

128:                                              ; preds = %125
  %129 = load i8*, i8** %18, align 8
  %130 = load i32, i32* %20, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %129, i64 %131
  %133 = load i8, i8* %132, align 1
  %134 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = load i32, i32* %20, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  store i8 %133, i8* %138, align 1
  br label %139

139:                                              ; preds = %128
  %140 = load i32, i32* %20, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %20, align 4
  br label %125

142:                                              ; preds = %125
  %143 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %144 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = call i64 @sg_dma_address(%struct.scatterlist* %145)
  %147 = add nsw i64 %146, 4
  %148 = call i8* @cpu_to_le64(i64 %147)
  %149 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 3
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 3
  store i8* %148, i8** %150, align 8
  %151 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %152 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %152, i32 0, i32 0
  %154 = call i32 @sg_dma_len(%struct.scatterlist* %153)
  %155 = sub nsw i32 %154, 8
  %156 = call i8* @cpu_to_le32(i32 %155)
  %157 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 3
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 2
  store i8* %156, i8** %158, align 8
  %159 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %160 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 1
  %162 = call i64 @sg_dma_address(%struct.scatterlist* %161)
  %163 = call i8* @cpu_to_le64(i64 %162)
  %164 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  store i8* %163, i8** %165, align 8
  %166 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %167 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 1
  %169 = call i32 @sg_dma_len(%struct.scatterlist* %168)
  %170 = sub nsw i32 %169, 4
  %171 = call i8* @cpu_to_le32(i32 %170)
  %172 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i32 0, i32 0
  store i8* %171, i8** %173, align 8
  br label %205

174:                                              ; preds = %107
  %175 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %176 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = call i64 @sg_dma_address(%struct.scatterlist* %177)
  %179 = call i8* @cpu_to_le64(i64 %178)
  %180 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 3
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 3
  store i8* %179, i8** %181, align 8
  %182 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %183 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i32 0, i32 0
  %185 = call i32 @sg_dma_len(%struct.scatterlist* %184)
  %186 = sub nsw i32 %185, 4
  %187 = call i8* @cpu_to_le32(i32 %186)
  %188 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 2
  store i8* %187, i8** %189, align 8
  %190 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %191 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 1
  %193 = call i64 @sg_dma_address(%struct.scatterlist* %192)
  %194 = call i8* @cpu_to_le64(i64 %193)
  %195 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 3
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 1
  store i8* %194, i8** %196, align 8
  %197 = load %struct.sas_task*, %struct.sas_task** %8, align 8
  %198 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 1
  %200 = call i32 @sg_dma_len(%struct.scatterlist* %199)
  %201 = sub nsw i32 %200, 4
  %202 = call i8* @cpu_to_le32(i32 %201)
  %203 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 0
  store i8* %202, i8** %204, align 8
  br label %205

205:                                              ; preds = %174, %142
  %206 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %207 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @SMP_DIRECT, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %277

211:                                              ; preds = %205
  %212 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %213 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %214 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %212, i32 %213)
  store i32 0, i32* %20, align 4
  br label %215

215:                                              ; preds = %273, %211
  %216 = load i32, i32* %20, align 4
  %217 = load i32, i32* %21, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %276

219:                                              ; preds = %215
  %220 = load i32, i32* %20, align 4
  %221 = icmp slt i32 %220, 16
  br i1 %221, label %222, label %247

222:                                              ; preds = %219
  %223 = load i8*, i8** %18, align 8
  %224 = load i32, i32* %20, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8, i8* %223, i64 %225
  %227 = load i8, i8* %226, align 1
  %228 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 0
  %229 = load i8*, i8** %228, align 8
  %230 = load i32, i32* %20, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8, i8* %229, i64 %231
  store i8 %227, i8* %232, align 1
  %233 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %234 = load i32, i32* %20, align 4
  %235 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  %237 = load i32, i32* %20, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8, i8* %236, i64 %238
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = load i8*, i8** %18, align 8
  %243 = load i8, i8* %242, align 1
  %244 = sext i8 %243 to i32
  %245 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %234, i32 %241, i32 %244)
  %246 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %233, i32 %245)
  br label %272

247:                                              ; preds = %219
  %248 = load i8*, i8** %18, align 8
  %249 = load i32, i32* %20, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i8, i8* %248, i64 %250
  %252 = load i8, i8* %251, align 1
  %253 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 1
  %254 = load i8*, i8** %253, align 8
  %255 = load i32, i32* %20, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  store i8 %252, i8* %257, align 1
  %258 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %259 = load i32, i32* %20, align 4
  %260 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 1
  %261 = load i8*, i8** %260, align 8
  %262 = load i32, i32* %20, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i8, i8* %261, i64 %263
  %265 = load i8, i8* %264, align 1
  %266 = sext i8 %265 to i32
  %267 = load i8*, i8** %18, align 8
  %268 = load i8, i8* %267, align 1
  %269 = sext i8 %268 to i32
  %270 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %259, i32 %266, i32 %269)
  %271 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %258, i32 %270)
  br label %272

272:                                              ; preds = %247, %222
  br label %273

273:                                              ; preds = %272
  %274 = load i32, i32* %20, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %20, align 4
  br label %215

276:                                              ; preds = %215
  br label %277

277:                                              ; preds = %276, %205
  %278 = load %struct.pm8001_device*, %struct.pm8001_device** %10, align 8
  %279 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = getelementptr inbounds %struct.smp_req, %struct.smp_req* %15, i32 0, i32 2
  %282 = load i8*, i8** %281, align 8
  %283 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %284 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* %21, align 4
  %287 = call i32 @build_smp_cmd(i32 %280, i8* %282, %struct.smp_req* %15, i32 %285, i32 %286)
  %288 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %289 = load %struct.inbound_queue_table*, %struct.inbound_queue_table** %17, align 8
  %290 = load i32, i32* %16, align 4
  %291 = bitcast %struct.smp_req* %15 to i32*
  %292 = call i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info* %288, %struct.inbound_queue_table* %289, i32 %290, i32* %291, i32 0)
  store i32 %292, i32* %7, align 4
  %293 = load i32, i32* %7, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %277
  br label %297

296:                                              ; preds = %277
  store i32 0, i32* %3, align 4
  br label %320

297:                                              ; preds = %295, %73
  %298 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %299 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %5, align 8
  %302 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %301, i32 0, i32 1
  %303 = load %struct.sas_task*, %struct.sas_task** %302, align 8
  %304 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 1
  %306 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %307 = call i32 @dma_unmap_sg(i32 %300, %struct.scatterlist* %305, i32 1, i32 %306)
  br label %308

308:                                              ; preds = %297, %60
  %309 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %4, align 8
  %310 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %5, align 8
  %313 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %312, i32 0, i32 1
  %314 = load %struct.sas_task*, %struct.sas_task** %313, align 8
  %315 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %315, i32 0, i32 0
  %317 = load i32, i32* @DMA_TO_DEVICE, align 4
  %318 = call i32 @dma_unmap_sg(i32 %311, %struct.scatterlist* %316, i32 1, i32 %317)
  %319 = load i32, i32* %7, align 4
  store i32 %319, i32* %3, align 4
  br label %320

320:                                              ; preds = %308, %296, %43
  %321 = load i32, i32* %3, align 4
  ret i32 %321
}

declare dso_local i32 @memset(%struct.smp_req*, i32, i32) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @PM8001_IO_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i8* @cpu_to_le64(i64) #1

declare dso_local i64 @sg_dma_address(%struct.scatterlist*) #1

declare dso_local i64 @phys_to_virt(i8*) #1

declare dso_local i32 @build_smp_cmd(i32, i8*, %struct.smp_req*, i32, i32) #1

declare dso_local i32 @pm8001_mpi_build_cmd(%struct.pm8001_hba_info*, %struct.inbound_queue_table*, i32, i32*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
