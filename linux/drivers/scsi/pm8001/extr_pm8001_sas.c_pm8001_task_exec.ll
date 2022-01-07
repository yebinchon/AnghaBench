; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_task_exec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_task_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { i32, i32, i32, i32, i32, i32, %struct.pm8001_ccb_info*, i32 (%struct.sas_task*)*, %struct.task_status_struct, %struct.domain_device* }
%struct.pm8001_ccb_info = type { i32, i32, %struct.pm8001_device*, %struct.sas_task* }
%struct.pm8001_device = type { i32 }
%struct.task_status_struct = type { i8*, i8* }
%struct.domain_device = type { i64, %struct.pm8001_device*, i32 }
%struct.pm8001_tmf_task = type { i32 }
%struct.pm8001_hba_info = type { i32, i32, %struct.pm8001_ccb_info*, %struct.pm8001_port*, i64 }
%struct.pm8001_port = type { i32 }

@SAS_TASK_UNDELIVERED = common dso_local global i8* null, align 8
@SAS_PHY_DOWN = common dso_local global i8* null, align 8
@SAS_SATA_DEV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"pm8001_task_exec device \0A \00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unknown sas_task proto: 0x%x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"rc is %x\0A\00", align 1
@SAS_TASK_AT_INITIATOR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"pm8001 exec failed[%d]!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_task*, i32, i32, %struct.pm8001_tmf_task*)* @pm8001_task_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_task_exec(%struct.sas_task* %0, i32 %1, i32 %2, %struct.pm8001_tmf_task* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sas_task*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pm8001_tmf_task*, align 8
  %10 = alloca %struct.domain_device*, align 8
  %11 = alloca %struct.pm8001_hba_info*, align 8
  %12 = alloca %struct.pm8001_device*, align 8
  %13 = alloca %struct.pm8001_port*, align 8
  %14 = alloca %struct.sas_task*, align 8
  %15 = alloca %struct.pm8001_ccb_info*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.task_status_struct*, align 8
  %21 = alloca %struct.task_status_struct*, align 8
  %22 = alloca %struct.task_status_struct*, align 8
  %23 = alloca %struct.task_status_struct*, align 8
  store %struct.sas_task* %0, %struct.sas_task** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.pm8001_tmf_task* %3, %struct.pm8001_tmf_task** %9, align 8
  %24 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %25 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %24, i32 0, i32 9
  %26 = load %struct.domain_device*, %struct.domain_device** %25, align 8
  store %struct.domain_device* %26, %struct.domain_device** %10, align 8
  store %struct.pm8001_port* null, %struct.pm8001_port** %13, align 8
  %27 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  store %struct.sas_task* %27, %struct.sas_task** %14, align 8
  store i32 -559038737, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i64 0, i64* %19, align 8
  %28 = load %struct.domain_device*, %struct.domain_device** %10, align 8
  %29 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %53, label %32

32:                                               ; preds = %4
  %33 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %34 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %33, i32 0, i32 8
  store %struct.task_status_struct* %34, %struct.task_status_struct** %20, align 8
  %35 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %36 = load %struct.task_status_struct*, %struct.task_status_struct** %20, align 8
  %37 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i8*, i8** @SAS_PHY_DOWN, align 8
  %39 = load %struct.task_status_struct*, %struct.task_status_struct** %20, align 8
  %40 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.domain_device*, %struct.domain_device** %10, align 8
  %42 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @SAS_SATA_DEV, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %32
  %47 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %48 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %47, i32 0, i32 7
  %49 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %48, align 8
  %50 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %51 = call i32 %49(%struct.sas_task* %50)
  br label %52

52:                                               ; preds = %46, %32
  store i32 0, i32* %5, align 4
  br label %309

53:                                               ; preds = %4
  %54 = load %struct.sas_task*, %struct.sas_task** %6, align 8
  %55 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %54, i32 0, i32 9
  %56 = load %struct.domain_device*, %struct.domain_device** %55, align 8
  %57 = call %struct.pm8001_hba_info* @pm8001_find_ha_by_dev(%struct.domain_device* %56)
  store %struct.pm8001_hba_info* %57, %struct.pm8001_hba_info** %11, align 8
  %58 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  %59 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %73

62:                                               ; preds = %53
  %63 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %64 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %63, i32 0, i32 8
  store %struct.task_status_struct* %64, %struct.task_status_struct** %21, align 8
  %65 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %66 = load %struct.task_status_struct*, %struct.task_status_struct** %21, align 8
  %67 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %69 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %68, i32 0, i32 7
  %70 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %69, align 8
  %71 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %72 = call i32 %70(%struct.sas_task* %71)
  store i32 0, i32* %5, align 4
  br label %309

73:                                               ; preds = %53
  %74 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  %75 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %76 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %74, i32 %75)
  %77 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  %78 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %77, i32 0, i32 0
  %79 = load i64, i64* %19, align 8
  %80 = call i32 @spin_lock_irqsave(i32* %78, i64 %79)
  br label %81

81:                                               ; preds = %73
  %82 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %83 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %82, i32 0, i32 9
  %84 = load %struct.domain_device*, %struct.domain_device** %83, align 8
  store %struct.domain_device* %84, %struct.domain_device** %10, align 8
  %85 = load %struct.domain_device*, %struct.domain_device** %10, align 8
  %86 = getelementptr inbounds %struct.domain_device, %struct.domain_device* %85, i32 0, i32 1
  %87 = load %struct.pm8001_device*, %struct.pm8001_device** %86, align 8
  store %struct.pm8001_device* %87, %struct.pm8001_device** %12, align 8
  %88 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  %89 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %88, i32 0, i32 3
  %90 = load %struct.pm8001_port*, %struct.pm8001_port** %89, align 8
  %91 = load %struct.domain_device*, %struct.domain_device** %10, align 8
  %92 = call i64 @sas_find_local_port_id(%struct.domain_device* %91)
  %93 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %90, i64 %92
  store %struct.pm8001_port* %93, %struct.pm8001_port** %13, align 8
  %94 = load %struct.pm8001_device*, %struct.pm8001_device** %12, align 8
  %95 = call i64 @DEV_IS_GONE(%struct.pm8001_device* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %81
  %98 = load %struct.pm8001_port*, %struct.pm8001_port** %13, align 8
  %99 = getelementptr inbounds %struct.pm8001_port, %struct.pm8001_port* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %144, label %102

102:                                              ; preds = %97, %81
  %103 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %104 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @sas_protocol_ata(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %102
  %109 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %110 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %109, i32 0, i32 8
  store %struct.task_status_struct* %110, %struct.task_status_struct** %22, align 8
  %111 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %112 = load %struct.task_status_struct*, %struct.task_status_struct** %22, align 8
  %113 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %112, i32 0, i32 1
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** @SAS_PHY_DOWN, align 8
  %115 = load %struct.task_status_struct*, %struct.task_status_struct** %22, align 8
  %116 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  %118 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %117, i32 0, i32 0
  %119 = load i64, i64* %19, align 8
  %120 = call i32 @spin_unlock_irqrestore(i32* %118, i64 %119)
  %121 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %122 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %121, i32 0, i32 7
  %123 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %122, align 8
  %124 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %125 = call i32 %123(%struct.sas_task* %124)
  %126 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  %127 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %126, i32 0, i32 0
  %128 = load i64, i64* %19, align 8
  %129 = call i32 @spin_lock_irqsave(i32* %127, i64 %128)
  br label %267

130:                                              ; preds = %102
  %131 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %132 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %131, i32 0, i32 8
  store %struct.task_status_struct* %132, %struct.task_status_struct** %23, align 8
  %133 = load i8*, i8** @SAS_TASK_UNDELIVERED, align 8
  %134 = load %struct.task_status_struct*, %struct.task_status_struct** %23, align 8
  %135 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  %136 = load i8*, i8** @SAS_PHY_DOWN, align 8
  %137 = load %struct.task_status_struct*, %struct.task_status_struct** %23, align 8
  %138 = getelementptr inbounds %struct.task_status_struct, %struct.task_status_struct* %137, i32 0, i32 0
  store i8* %136, i8** %138, align 8
  %139 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %140 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %139, i32 0, i32 7
  %141 = load i32 (%struct.sas_task*)*, i32 (%struct.sas_task*)** %140, align 8
  %142 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %143 = call i32 %141(%struct.sas_task* %142)
  br label %267

144:                                              ; preds = %97
  %145 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  %146 = call i32 @pm8001_tag_alloc(%struct.pm8001_hba_info* %145, i32* %16)
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %17, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %144
  br label %272

150:                                              ; preds = %144
  %151 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  %152 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %151, i32 0, i32 2
  %153 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %152, align 8
  %154 = load i32, i32* %16, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %153, i64 %155
  store %struct.pm8001_ccb_info* %156, %struct.pm8001_ccb_info** %15, align 8
  %157 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %158 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i64 @sas_protocol_ata(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %188, label %162

162:                                              ; preds = %150
  %163 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %164 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %187

167:                                              ; preds = %162
  %168 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  %169 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %172 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %175 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %178 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @dma_map_sg(i32 %170, i32 %173, i32 %176, i32 %179)
  store i32 %180, i32* %18, align 4
  %181 = load i32, i32* %18, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %186, label %183

183:                                              ; preds = %167
  %184 = load i32, i32* @ENOMEM, align 4
  %185 = sub nsw i32 0, %184
  store i32 %185, i32* %17, align 4
  br label %268

186:                                              ; preds = %167
  br label %187

187:                                              ; preds = %186, %162
  br label %192

188:                                              ; preds = %150
  %189 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %190 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %18, align 4
  br label %192

192:                                              ; preds = %188, %187
  %193 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %15, align 8
  %194 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %195 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %194, i32 0, i32 6
  store %struct.pm8001_ccb_info* %193, %struct.pm8001_ccb_info** %195, align 8
  %196 = load i32, i32* %18, align 4
  %197 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %15, align 8
  %198 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = load i32, i32* %16, align 4
  %200 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %15, align 8
  %201 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %200, i32 0, i32 1
  store i32 %199, i32* %201, align 4
  %202 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %203 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %15, align 8
  %204 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %203, i32 0, i32 3
  store %struct.sas_task* %202, %struct.sas_task** %204, align 8
  %205 = load %struct.pm8001_device*, %struct.pm8001_device** %12, align 8
  %206 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %15, align 8
  %207 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %206, i32 0, i32 2
  store %struct.pm8001_device* %205, %struct.pm8001_device** %207, align 8
  %208 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %209 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  switch i32 %210, label %232 [
    i32 130, label %211
    i32 129, label %215
    i32 131, label %228
    i32 128, label %228
  ]

211:                                              ; preds = %192
  %212 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  %213 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %15, align 8
  %214 = call i32 @pm8001_task_prep_smp(%struct.pm8001_hba_info* %212, %struct.pm8001_ccb_info* %213)
  store i32 %214, i32* %17, align 4
  br label %243

215:                                              ; preds = %192
  %216 = load i32, i32* %8, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %215
  %219 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  %220 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %15, align 8
  %221 = load %struct.pm8001_tmf_task*, %struct.pm8001_tmf_task** %9, align 8
  %222 = call i32 @pm8001_task_prep_ssp_tm(%struct.pm8001_hba_info* %219, %struct.pm8001_ccb_info* %220, %struct.pm8001_tmf_task* %221)
  store i32 %222, i32* %17, align 4
  br label %227

223:                                              ; preds = %215
  %224 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  %225 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %15, align 8
  %226 = call i32 @pm8001_task_prep_ssp(%struct.pm8001_hba_info* %224, %struct.pm8001_ccb_info* %225)
  store i32 %226, i32* %17, align 4
  br label %227

227:                                              ; preds = %223, %218
  br label %243

228:                                              ; preds = %192, %192
  %229 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  %230 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %15, align 8
  %231 = call i32 @pm8001_task_prep_ata(%struct.pm8001_hba_info* %229, %struct.pm8001_ccb_info* %230)
  store i32 %231, i32* %17, align 4
  br label %243

232:                                              ; preds = %192
  %233 = load i32, i32* @KERN_ERR, align 4
  %234 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  %235 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %238 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = call i32 @dev_printk(i32 %233, i32 %236, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %239)
  %241 = load i32, i32* @EINVAL, align 4
  %242 = sub nsw i32 0, %241
  store i32 %242, i32* %17, align 4
  br label %243

243:                                              ; preds = %232, %228, %227, %211
  %244 = load i32, i32* %17, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %243
  %247 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  %248 = load i32, i32* %17, align 4
  %249 = call i32 (i8*, ...) @pm8001_printk(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %248)
  %250 = call i32 @PM8001_IO_DBG(%struct.pm8001_hba_info* %247, i32 %249)
  br label %268

251:                                              ; preds = %243
  %252 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %253 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %252, i32 0, i32 4
  %254 = call i32 @spin_lock(i32* %253)
  %255 = load i32, i32* @SAS_TASK_AT_INITIATOR, align 4
  %256 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %257 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 4
  %259 = or i32 %258, %255
  store i32 %259, i32* %257, align 4
  %260 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %261 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %260, i32 0, i32 4
  %262 = call i32 @spin_unlock(i32* %261)
  %263 = load %struct.pm8001_device*, %struct.pm8001_device** %12, align 8
  %264 = getelementptr inbounds %struct.pm8001_device, %struct.pm8001_device* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %264, align 4
  br label %267

267:                                              ; preds = %108, %130, %251
  store i32 0, i32* %17, align 4
  br label %303

268:                                              ; preds = %246, %183
  %269 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  %270 = load i32, i32* %16, align 4
  %271 = call i32 @pm8001_tag_free(%struct.pm8001_hba_info* %269, i32 %270)
  br label %272

272:                                              ; preds = %268, %149
  %273 = load i32, i32* @KERN_ERR, align 4
  %274 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  %275 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %17, align 4
  %278 = call i32 @dev_printk(i32 %273, i32 %276, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %277)
  %279 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %280 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = call i64 @sas_protocol_ata(i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %302, label %284

284:                                              ; preds = %272
  %285 = load i32, i32* %18, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %301

287:                                              ; preds = %284
  %288 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  %289 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %288, i32 0, i32 1
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %292 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 4
  %294 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %295 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.sas_task*, %struct.sas_task** %14, align 8
  %298 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %297, i32 0, i32 2
  %299 = load i32, i32* %298, align 8
  %300 = call i32 @dma_unmap_sg(i32 %290, i32 %293, i32 %296, i32 %299)
  br label %301

301:                                              ; preds = %287, %284
  br label %302

302:                                              ; preds = %301, %272
  br label %303

303:                                              ; preds = %302, %267
  %304 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %11, align 8
  %305 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %304, i32 0, i32 0
  %306 = load i64, i64* %19, align 8
  %307 = call i32 @spin_unlock_irqrestore(i32* %305, i64 %306)
  %308 = load i32, i32* %17, align 4
  store i32 %308, i32* %5, align 4
  br label %309

309:                                              ; preds = %303, %62, %52
  %310 = load i32, i32* %5, align 4
  ret i32 %310
}

declare dso_local %struct.pm8001_hba_info* @pm8001_find_ha_by_dev(%struct.domain_device*) #1

declare dso_local i32 @PM8001_IO_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @sas_find_local_port_id(%struct.domain_device*) #1

declare dso_local i64 @DEV_IS_GONE(%struct.pm8001_device*) #1

declare dso_local i64 @sas_protocol_ata(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pm8001_tag_alloc(%struct.pm8001_hba_info*, i32*) #1

declare dso_local i32 @dma_map_sg(i32, i32, i32, i32) #1

declare dso_local i32 @pm8001_task_prep_smp(%struct.pm8001_hba_info*, %struct.pm8001_ccb_info*) #1

declare dso_local i32 @pm8001_task_prep_ssp_tm(%struct.pm8001_hba_info*, %struct.pm8001_ccb_info*, %struct.pm8001_tmf_task*) #1

declare dso_local i32 @pm8001_task_prep_ssp(%struct.pm8001_hba_info*, %struct.pm8001_ccb_info*) #1

declare dso_local i32 @pm8001_task_prep_ata(%struct.pm8001_hba_info*, %struct.pm8001_ccb_info*) #1

declare dso_local i32 @dev_printk(i32, i32, i8*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pm8001_tag_free(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
