; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_complete_cmd_fusion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_complete_cmd_fusion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.megasas_instance = type { i32, i32*, i64, %struct.megasas_cmd**, i32, i32, i32, %struct.TYPE_9__*, i32, %struct.fusion_context* }
%struct.megasas_cmd = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.fusion_context = type { i32*, i32, %union.MPI2_REPLY_DESCRIPTORS_UNION**, %struct.LD_LOAD_BALANCE_INFO*, %struct.megasas_cmd_fusion** }
%union.MPI2_REPLY_DESCRIPTORS_UNION = type { i32 }
%struct.LD_LOAD_BALANCE_INFO = type { i32* }
%struct.megasas_cmd_fusion = type { i32*, i64, i64, i32, %struct.scsi_cmnd*, i32, i64 }
%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32* }
%struct.megasas_irq_context = type { i32, i32, i32 }
%struct.MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR = type { i32, i32 }
%struct.MPI2_RAID_SCSI_IO_REQUEST = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%union.desc_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.MR_TASK_MANAGE_REQUEST = type { i32 }
%struct.MPI2_SCSI_TASK_MANAGE_REQUEST = type { i32, i32 }

@MEGASAS_HW_CRITICAL_ERROR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@MPI2_RPY_DESCRIPT_FLAGS_TYPE_MASK = common dso_local global i32 0, align 4
@MPI2_RPY_DESCRIPT_FLAGS_UNUSED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"TM completion:type: 0x%x TaskMID: 0x%x\0A\00", align 1
@MEGASAS_LOAD_BALANCE_FLAG = common dso_local global i32 0, align 4
@MR_DEVHANDLE_INVALID = common dso_local global i32 0, align 4
@READ_WRITE_LDIO = common dso_local global i32 0, align 4
@DRV_DCMD_POLLED_MODE = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@ULLONG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.megasas_instance*, i64, %struct.megasas_irq_context*)* @complete_cmd_fusion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @complete_cmd_fusion(%struct.megasas_instance* %0, i64 %1, %struct.megasas_irq_context* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.megasas_instance*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.megasas_irq_context*, align 8
  %8 = alloca %union.MPI2_REPLY_DESCRIPTORS_UNION*, align 8
  %9 = alloca %struct.MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR*, align 8
  %10 = alloca %struct.MPI2_RAID_SCSI_IO_REQUEST*, align 8
  %11 = alloca %struct.fusion_context*, align 8
  %12 = alloca %struct.megasas_cmd*, align 8
  %13 = alloca %struct.megasas_cmd_fusion*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca %union.desc_value, align 8
  %23 = alloca %struct.LD_LOAD_BALANCE_INFO*, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.scsi_cmnd*, align 8
  %26 = alloca %struct.MR_TASK_MANAGE_REQUEST*, align 8
  %27 = alloca %struct.MPI2_SCSI_TASK_MANAGE_REQUEST*, align 8
  store %struct.megasas_instance* %0, %struct.megasas_instance** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.megasas_irq_context* %2, %struct.megasas_irq_context** %7, align 8
  store i32 0, i32* %24, align 4
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %25, align 8
  %28 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %29 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %28, i32 0, i32 9
  %30 = load %struct.fusion_context*, %struct.fusion_context** %29, align 8
  store %struct.fusion_context* %30, %struct.fusion_context** %11, align 8
  %31 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %32 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %31, i32 0, i32 8
  %33 = call i64 @atomic_read(i32* %32)
  %34 = load i64, i64* @MEGASAS_HW_CRITICAL_ERROR, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %3
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %37, i32* %4, align 4
  br label %454

38:                                               ; preds = %3
  %39 = load %struct.fusion_context*, %struct.fusion_context** %11, align 8
  %40 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %39, i32 0, i32 2
  %41 = load %union.MPI2_REPLY_DESCRIPTORS_UNION**, %union.MPI2_REPLY_DESCRIPTORS_UNION*** %40, align 8
  %42 = load i64, i64* %6, align 8
  %43 = getelementptr inbounds %union.MPI2_REPLY_DESCRIPTORS_UNION*, %union.MPI2_REPLY_DESCRIPTORS_UNION** %41, i64 %42
  %44 = load %union.MPI2_REPLY_DESCRIPTORS_UNION*, %union.MPI2_REPLY_DESCRIPTORS_UNION** %43, align 8
  %45 = load %struct.fusion_context*, %struct.fusion_context** %11, align 8
  %46 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %6, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %union.MPI2_REPLY_DESCRIPTORS_UNION, %union.MPI2_REPLY_DESCRIPTORS_UNION* %44, i64 %51
  store %union.MPI2_REPLY_DESCRIPTORS_UNION* %52, %union.MPI2_REPLY_DESCRIPTORS_UNION** %8, align 8
  %53 = load %union.MPI2_REPLY_DESCRIPTORS_UNION*, %union.MPI2_REPLY_DESCRIPTORS_UNION** %8, align 8
  %54 = bitcast %union.MPI2_REPLY_DESCRIPTORS_UNION* %53 to %struct.MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR*
  store %struct.MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR* %54, %struct.MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR** %9, align 8
  %55 = load %union.MPI2_REPLY_DESCRIPTORS_UNION*, %union.MPI2_REPLY_DESCRIPTORS_UNION** %8, align 8
  %56 = bitcast %union.MPI2_REPLY_DESCRIPTORS_UNION* %55 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = bitcast %union.desc_value* %22 to i32*
  store i32 %57, i32* %58, align 8
  %59 = load %struct.MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR*, %struct.MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR** %9, align 8
  %60 = getelementptr inbounds %struct.MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR, %struct.MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MPI2_RPY_DESCRIPT_FLAGS_TYPE_MASK, align 4
  %63 = and i32 %61, %62
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = load i32, i32* @MPI2_RPY_DESCRIPT_FLAGS_UNUSED, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %38
  %68 = load i32, i32* @IRQ_NONE, align 4
  store i32 %68, i32* %4, align 4
  br label %454

69:                                               ; preds = %38
  store i32 0, i32* %15, align 4
  br label %70

70:                                               ; preds = %402, %69
  %71 = bitcast %union.desc_value* %22 to %struct.TYPE_6__*
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @UINT_MAX, align 4
  %75 = call i64 @cpu_to_le32(i32 %74)
  %76 = icmp ne i64 %73, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %70
  %78 = bitcast %union.desc_value* %22 to %struct.TYPE_6__*
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @UINT_MAX, align 4
  %82 = call i64 @cpu_to_le32(i32 %81)
  %83 = icmp ne i64 %80, %82
  br label %84

84:                                               ; preds = %77, %70
  %85 = phi i1 [ false, %70 ], [ %83, %77 ]
  br i1 %85, label %86, label %403

86:                                               ; preds = %84
  %87 = load %struct.MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR*, %struct.MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR** %9, align 8
  %88 = getelementptr inbounds %struct.MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR, %struct.MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @le16_to_cpu(i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load %struct.fusion_context*, %struct.fusion_context** %11, align 8
  %92 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %91, i32 0, i32 4
  %93 = load %struct.megasas_cmd_fusion**, %struct.megasas_cmd_fusion*** %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = sub nsw i32 %94, 1
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %93, i64 %96
  %98 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %97, align 8
  store %struct.megasas_cmd_fusion* %98, %struct.megasas_cmd_fusion** %13, align 8
  %99 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %13, align 8
  %100 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = inttoptr i64 %101 to %struct.MPI2_RAID_SCSI_IO_REQUEST*
  store %struct.MPI2_RAID_SCSI_IO_REQUEST* %102, %struct.MPI2_RAID_SCSI_IO_REQUEST** %10, align 8
  %103 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %13, align 8
  %104 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %103, i32 0, i32 4
  %105 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %104, align 8
  store %struct.scsi_cmnd* %105, %struct.scsi_cmnd** %25, align 8
  %106 = load %struct.MPI2_RAID_SCSI_IO_REQUEST*, %struct.MPI2_RAID_SCSI_IO_REQUEST** %10, align 8
  %107 = getelementptr inbounds %struct.MPI2_RAID_SCSI_IO_REQUEST, %struct.MPI2_RAID_SCSI_IO_REQUEST* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  store i32 %110, i32* %18, align 4
  %111 = load %struct.MPI2_RAID_SCSI_IO_REQUEST*, %struct.MPI2_RAID_SCSI_IO_REQUEST** %10, align 8
  %112 = getelementptr inbounds %struct.MPI2_RAID_SCSI_IO_REQUEST, %struct.MPI2_RAID_SCSI_IO_REQUEST* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %19, align 4
  %116 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %13, align 8
  %117 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  store i32* %118, i32** %17, align 8
  %119 = load %struct.MPI2_RAID_SCSI_IO_REQUEST*, %struct.MPI2_RAID_SCSI_IO_REQUEST** %10, align 8
  %120 = getelementptr inbounds %struct.MPI2_RAID_SCSI_IO_REQUEST, %struct.MPI2_RAID_SCSI_IO_REQUEST* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  store i64 %121, i64* %21, align 8
  %122 = load %struct.MPI2_RAID_SCSI_IO_REQUEST*, %struct.MPI2_RAID_SCSI_IO_REQUEST** %10, align 8
  %123 = getelementptr inbounds %struct.MPI2_RAID_SCSI_IO_REQUEST, %struct.MPI2_RAID_SCSI_IO_REQUEST* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  switch i32 %124, label %269 [
    i32 128, label %125
    i32 129, label %147
    i32 131, label %188
    i32 130, label %238
  ]

125:                                              ; preds = %86
  %126 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %13, align 8
  %127 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %126, i32 0, i32 6
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to %struct.MR_TASK_MANAGE_REQUEST*
  store %struct.MR_TASK_MANAGE_REQUEST* %129, %struct.MR_TASK_MANAGE_REQUEST** %26, align 8
  %130 = load %struct.MR_TASK_MANAGE_REQUEST*, %struct.MR_TASK_MANAGE_REQUEST** %26, align 8
  %131 = getelementptr inbounds %struct.MR_TASK_MANAGE_REQUEST, %struct.MR_TASK_MANAGE_REQUEST* %130, i32 0, i32 0
  %132 = bitcast i32* %131 to %struct.MPI2_SCSI_TASK_MANAGE_REQUEST*
  store %struct.MPI2_SCSI_TASK_MANAGE_REQUEST* %132, %struct.MPI2_SCSI_TASK_MANAGE_REQUEST** %27, align 8
  %133 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %134 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %133, i32 0, i32 7
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load %struct.MPI2_SCSI_TASK_MANAGE_REQUEST*, %struct.MPI2_SCSI_TASK_MANAGE_REQUEST** %27, align 8
  %138 = getelementptr inbounds %struct.MPI2_SCSI_TASK_MANAGE_REQUEST, %struct.MPI2_SCSI_TASK_MANAGE_REQUEST* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.MPI2_SCSI_TASK_MANAGE_REQUEST*, %struct.MPI2_SCSI_TASK_MANAGE_REQUEST** %27, align 8
  %141 = getelementptr inbounds %struct.MPI2_SCSI_TASK_MANAGE_REQUEST, %struct.MPI2_SCSI_TASK_MANAGE_REQUEST* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @dev_dbg(i32* %136, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %139, i32 %142)
  %144 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %13, align 8
  %145 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %144, i32 0, i32 5
  %146 = call i32 @complete(i32* %145)
  br label %269

147:                                              ; preds = %86
  %148 = load %struct.fusion_context*, %struct.fusion_context** %11, align 8
  %149 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %148, i32 0, i32 3
  %150 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %149, align 8
  %151 = icmp ne %struct.LD_LOAD_BALANCE_INFO* %150, null
  br i1 %151, label %152, label %187

152:                                              ; preds = %147
  %153 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %13, align 8
  %154 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %153, i32 0, i32 4
  %155 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %154, align 8
  %156 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @MEGASAS_LOAD_BALANCE_FLAG, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %187

162:                                              ; preds = %152
  %163 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %25, align 8
  %164 = call i64 @MEGASAS_DEV_INDEX(%struct.scsi_cmnd* %163)
  store i64 %164, i64* %20, align 8
  %165 = load %struct.fusion_context*, %struct.fusion_context** %11, align 8
  %166 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %165, i32 0, i32 3
  %167 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %166, align 8
  %168 = load i64, i64* %20, align 8
  %169 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %167, i64 %168
  store %struct.LD_LOAD_BALANCE_INFO* %169, %struct.LD_LOAD_BALANCE_INFO** %23, align 8
  %170 = load %struct.LD_LOAD_BALANCE_INFO*, %struct.LD_LOAD_BALANCE_INFO** %23, align 8
  %171 = getelementptr inbounds %struct.LD_LOAD_BALANCE_INFO, %struct.LD_LOAD_BALANCE_INFO* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %13, align 8
  %174 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  %177 = call i32 @atomic_dec(i32* %176)
  %178 = load i32, i32* @MEGASAS_LOAD_BALANCE_FLAG, align 4
  %179 = xor i32 %178, -1
  %180 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %13, align 8
  %181 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %180, i32 0, i32 4
  %182 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %181, align 8
  %183 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = and i32 %185, %179
  store i32 %186, i32* %184, align 8
  br label %187

187:                                              ; preds = %162, %152, %147
  br label %188

188:                                              ; preds = %86, %187
  %189 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %190 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %189, i32 0, i32 6
  %191 = call i32 @atomic_dec(i32* %190)
  %192 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %13, align 8
  %193 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @MR_DEVHANDLE_INVALID, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %197, label %233

197:                                              ; preds = %188
  %198 = load %struct.fusion_context*, %struct.fusion_context** %11, align 8
  %199 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %25, align 8
  %200 = load i32, i32* %18, align 4
  %201 = load i32, i32* %19, align 4
  %202 = load i64, i64* %21, align 8
  %203 = call i32 @le32_to_cpu(i64 %202)
  %204 = load i32*, i32** %17, align 8
  %205 = call i32 @map_cmd_status(%struct.fusion_context* %198, %struct.scsi_cmnd* %199, i32 %200, i32 %201, i32 %203, i32* %204)
  %206 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %207 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %206, i32 0, i32 5
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %219

210:                                              ; preds = %197
  %211 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %25, align 8
  %212 = call i32 @megasas_cmd_type(%struct.scsi_cmnd* %211)
  %213 = load i32, i32* @READ_WRITE_LDIO, align 4
  %214 = icmp eq i32 %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %210
  %216 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %217 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %216, i32 0, i32 4
  %218 = call i32 @atomic_dec(i32* %217)
  br label %219

219:                                              ; preds = %215, %210, %197
  %220 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %25, align 8
  %221 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 1
  store i32* null, i32** %222, align 8
  %223 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %224 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %13, align 8
  %225 = call i32 @megasas_return_cmd_fusion(%struct.megasas_instance* %223, %struct.megasas_cmd_fusion* %224)
  %226 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %25, align 8
  %227 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %226)
  %228 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %25, align 8
  %229 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %228, i32 0, i32 0
  %230 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %229, align 8
  %231 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %25, align 8
  %232 = call i32 %230(%struct.scsi_cmnd* %231)
  br label %237

233:                                              ; preds = %188
  %234 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %235 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %13, align 8
  %236 = call i32 @megasas_complete_r1_command(%struct.megasas_instance* %234, %struct.megasas_cmd_fusion* %235)
  br label %237

237:                                              ; preds = %233, %219
  br label %269

238:                                              ; preds = %86
  %239 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %240 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %239, i32 0, i32 3
  %241 = load %struct.megasas_cmd**, %struct.megasas_cmd*** %240, align 8
  %242 = load %struct.megasas_cmd_fusion*, %struct.megasas_cmd_fusion** %13, align 8
  %243 = getelementptr inbounds %struct.megasas_cmd_fusion, %struct.megasas_cmd_fusion* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = getelementptr inbounds %struct.megasas_cmd*, %struct.megasas_cmd** %241, i64 %244
  %246 = load %struct.megasas_cmd*, %struct.megasas_cmd** %245, align 8
  store %struct.megasas_cmd* %246, %struct.megasas_cmd** %12, align 8
  %247 = load %struct.megasas_cmd*, %struct.megasas_cmd** %12, align 8
  %248 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @DRV_DCMD_POLLED_MODE, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %263

253:                                              ; preds = %238
  %254 = load i32, i32* @DRV_DCMD_POLLED_MODE, align 4
  %255 = xor i32 %254, -1
  %256 = load %struct.megasas_cmd*, %struct.megasas_cmd** %12, align 8
  %257 = getelementptr inbounds %struct.megasas_cmd, %struct.megasas_cmd* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = and i32 %258, %255
  store i32 %259, i32* %257, align 4
  %260 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %261 = load %struct.megasas_cmd*, %struct.megasas_cmd** %12, align 8
  %262 = call i32 @megasas_return_cmd(%struct.megasas_instance* %260, %struct.megasas_cmd* %261)
  br label %268

263:                                              ; preds = %238
  %264 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %265 = load %struct.megasas_cmd*, %struct.megasas_cmd** %12, align 8
  %266 = load i32, i32* @DID_OK, align 4
  %267 = call i32 @megasas_complete_cmd(%struct.megasas_instance* %264, %struct.megasas_cmd* %265, i32 %266)
  br label %268

268:                                              ; preds = %263, %253
  br label %269

269:                                              ; preds = %86, %268, %237, %125
  %270 = load %struct.fusion_context*, %struct.fusion_context** %11, align 8
  %271 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = load i64, i64* %6, align 8
  %274 = getelementptr inbounds i32, i32* %272, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %274, align 4
  %277 = load %struct.fusion_context*, %struct.fusion_context** %11, align 8
  %278 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %277, i32 0, i32 0
  %279 = load i32*, i32** %278, align 8
  %280 = load i64, i64* %6, align 8
  %281 = getelementptr inbounds i32, i32* %279, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.fusion_context*, %struct.fusion_context** %11, align 8
  %284 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = icmp sge i32 %282, %285
  br i1 %286, label %287, label %293

287:                                              ; preds = %269
  %288 = load %struct.fusion_context*, %struct.fusion_context** %11, align 8
  %289 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %288, i32 0, i32 0
  %290 = load i32*, i32** %289, align 8
  %291 = load i64, i64* %6, align 8
  %292 = getelementptr inbounds i32, i32* %290, i64 %291
  store i32 0, i32* %292, align 4
  br label %293

293:                                              ; preds = %287, %269
  %294 = load i32, i32* @ULLONG_MAX, align 4
  %295 = call i32 @cpu_to_le64(i32 %294)
  %296 = load %union.MPI2_REPLY_DESCRIPTORS_UNION*, %union.MPI2_REPLY_DESCRIPTORS_UNION** %8, align 8
  %297 = bitcast %union.MPI2_REPLY_DESCRIPTORS_UNION* %296 to i32*
  store i32 %295, i32* %297, align 4
  %298 = load i32, i32* %15, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %15, align 4
  %300 = load i32, i32* %24, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %24, align 4
  %302 = load %struct.fusion_context*, %struct.fusion_context** %11, align 8
  %303 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %302, i32 0, i32 0
  %304 = load i32*, i32** %303, align 8
  %305 = load i64, i64* %6, align 8
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  %307 = load i32, i32* %306, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %316, label %309

309:                                              ; preds = %293
  %310 = load %struct.fusion_context*, %struct.fusion_context** %11, align 8
  %311 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %310, i32 0, i32 2
  %312 = load %union.MPI2_REPLY_DESCRIPTORS_UNION**, %union.MPI2_REPLY_DESCRIPTORS_UNION*** %311, align 8
  %313 = load i64, i64* %6, align 8
  %314 = getelementptr inbounds %union.MPI2_REPLY_DESCRIPTORS_UNION*, %union.MPI2_REPLY_DESCRIPTORS_UNION** %312, i64 %313
  %315 = load %union.MPI2_REPLY_DESCRIPTORS_UNION*, %union.MPI2_REPLY_DESCRIPTORS_UNION** %314, align 8
  store %union.MPI2_REPLY_DESCRIPTORS_UNION* %315, %union.MPI2_REPLY_DESCRIPTORS_UNION** %8, align 8
  br label %319

316:                                              ; preds = %293
  %317 = load %union.MPI2_REPLY_DESCRIPTORS_UNION*, %union.MPI2_REPLY_DESCRIPTORS_UNION** %8, align 8
  %318 = getelementptr inbounds %union.MPI2_REPLY_DESCRIPTORS_UNION, %union.MPI2_REPLY_DESCRIPTORS_UNION* %317, i32 1
  store %union.MPI2_REPLY_DESCRIPTORS_UNION* %318, %union.MPI2_REPLY_DESCRIPTORS_UNION** %8, align 8
  br label %319

319:                                              ; preds = %316, %309
  %320 = load %union.MPI2_REPLY_DESCRIPTORS_UNION*, %union.MPI2_REPLY_DESCRIPTORS_UNION** %8, align 8
  %321 = bitcast %union.MPI2_REPLY_DESCRIPTORS_UNION* %320 to %struct.MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR*
  store %struct.MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR* %321, %struct.MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR** %9, align 8
  %322 = load %union.MPI2_REPLY_DESCRIPTORS_UNION*, %union.MPI2_REPLY_DESCRIPTORS_UNION** %8, align 8
  %323 = bitcast %union.MPI2_REPLY_DESCRIPTORS_UNION* %322 to i32*
  %324 = load i32, i32* %323, align 4
  %325 = bitcast %union.desc_value* %22 to i32*
  store i32 %324, i32* %325, align 8
  %326 = load %struct.MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR*, %struct.MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR** %9, align 8
  %327 = getelementptr inbounds %struct.MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR, %struct.MPI2_SCSI_IO_SUCCESS_REPLY_DESCRIPTOR* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @MPI2_RPY_DESCRIPT_FLAGS_TYPE_MASK, align 4
  %330 = and i32 %328, %329
  store i32 %330, i32* %16, align 4
  %331 = load i32, i32* %16, align 4
  %332 = load i32, i32* @MPI2_RPY_DESCRIPT_FLAGS_UNUSED, align 4
  %333 = icmp eq i32 %331, %332
  br i1 %333, label %334, label %335

334:                                              ; preds = %319
  br label %403

335:                                              ; preds = %319
  %336 = load i32, i32* %24, align 4
  %337 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %338 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = icmp sge i32 %336, %339
  br i1 %340, label %341, label %402

341:                                              ; preds = %335
  %342 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %343 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %342, i32 0, i32 2
  %344 = load i64, i64* %343, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %366

346:                                              ; preds = %341
  %347 = load i64, i64* %6, align 8
  %348 = and i64 %347, 7
  %349 = shl i64 %348, 24
  %350 = load %struct.fusion_context*, %struct.fusion_context** %11, align 8
  %351 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %350, i32 0, i32 0
  %352 = load i32*, i32** %351, align 8
  %353 = load i64, i64* %6, align 8
  %354 = getelementptr inbounds i32, i32* %352, i64 %353
  %355 = load i32, i32* %354, align 4
  %356 = sext i32 %355 to i64
  %357 = or i64 %349, %356
  %358 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %359 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %358, i32 0, i32 1
  %360 = load i32*, i32** %359, align 8
  %361 = load i64, i64* %6, align 8
  %362 = udiv i64 %361, 8
  %363 = getelementptr inbounds i32, i32* %360, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @writel(i64 %357, i32 %364)
  br label %383

366:                                              ; preds = %341
  %367 = load i64, i64* %6, align 8
  %368 = shl i64 %367, 24
  %369 = load %struct.fusion_context*, %struct.fusion_context** %11, align 8
  %370 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %369, i32 0, i32 0
  %371 = load i32*, i32** %370, align 8
  %372 = load i64, i64* %6, align 8
  %373 = getelementptr inbounds i32, i32* %371, i64 %372
  %374 = load i32, i32* %373, align 4
  %375 = sext i32 %374 to i64
  %376 = or i64 %368, %375
  %377 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %378 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %377, i32 0, i32 1
  %379 = load i32*, i32** %378, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 0
  %381 = load i32, i32* %380, align 4
  %382 = call i32 @writel(i64 %376, i32 %381)
  br label %383

383:                                              ; preds = %366, %346
  store i32 0, i32* %24, align 4
  %384 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %7, align 8
  %385 = icmp ne %struct.megasas_irq_context* %384, null
  br i1 %385, label %386, label %401

386:                                              ; preds = %383
  %387 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %7, align 8
  %388 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %399, label %391

391:                                              ; preds = %386
  %392 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %7, align 8
  %393 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %392, i32 0, i32 0
  store i32 1, i32* %393, align 4
  %394 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %7, align 8
  %395 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %394, i32 0, i32 1
  store i32 1, i32* %395, align 4
  %396 = load %struct.megasas_irq_context*, %struct.megasas_irq_context** %7, align 8
  %397 = getelementptr inbounds %struct.megasas_irq_context, %struct.megasas_irq_context* %396, i32 0, i32 2
  %398 = call i32 @irq_poll_sched(i32* %397)
  br label %399

399:                                              ; preds = %391, %386
  %400 = load i32, i32* %15, align 4
  store i32 %400, i32* %4, align 4
  br label %454

401:                                              ; preds = %383
  br label %402

402:                                              ; preds = %401, %335
  br label %70

403:                                              ; preds = %334, %84
  %404 = load i32, i32* %15, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %452

406:                                              ; preds = %403
  %407 = call i32 (...) @wmb()
  %408 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %409 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %408, i32 0, i32 2
  %410 = load i64, i64* %409, align 8
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %432

412:                                              ; preds = %406
  %413 = load i64, i64* %6, align 8
  %414 = and i64 %413, 7
  %415 = shl i64 %414, 24
  %416 = load %struct.fusion_context*, %struct.fusion_context** %11, align 8
  %417 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %416, i32 0, i32 0
  %418 = load i32*, i32** %417, align 8
  %419 = load i64, i64* %6, align 8
  %420 = getelementptr inbounds i32, i32* %418, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = sext i32 %421 to i64
  %423 = or i64 %415, %422
  %424 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %425 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %424, i32 0, i32 1
  %426 = load i32*, i32** %425, align 8
  %427 = load i64, i64* %6, align 8
  %428 = udiv i64 %427, 8
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = call i32 @writel(i64 %423, i32 %430)
  br label %449

432:                                              ; preds = %406
  %433 = load i64, i64* %6, align 8
  %434 = shl i64 %433, 24
  %435 = load %struct.fusion_context*, %struct.fusion_context** %11, align 8
  %436 = getelementptr inbounds %struct.fusion_context, %struct.fusion_context* %435, i32 0, i32 0
  %437 = load i32*, i32** %436, align 8
  %438 = load i64, i64* %6, align 8
  %439 = getelementptr inbounds i32, i32* %437, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = sext i32 %440 to i64
  %442 = or i64 %434, %441
  %443 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %444 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %443, i32 0, i32 1
  %445 = load i32*, i32** %444, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 0
  %447 = load i32, i32* %446, align 4
  %448 = call i32 @writel(i64 %442, i32 %447)
  br label %449

449:                                              ; preds = %432, %412
  %450 = load %struct.megasas_instance*, %struct.megasas_instance** %5, align 8
  %451 = call i32 @megasas_check_and_restore_queue_depth(%struct.megasas_instance* %450)
  br label %452

452:                                              ; preds = %449, %403
  %453 = load i32, i32* %15, align 4
  store i32 %453, i32* %4, align 4
  br label %454

454:                                              ; preds = %452, %399, %67, %36
  %455 = load i32, i32* %4, align 4
  ret i32 %455
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i64 @MEGASAS_DEV_INDEX(%struct.scsi_cmnd*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @map_cmd_status(%struct.fusion_context*, %struct.scsi_cmnd*, i32, i32, i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @megasas_cmd_type(%struct.scsi_cmnd*) #1

declare dso_local i32 @megasas_return_cmd_fusion(%struct.megasas_instance*, %struct.megasas_cmd_fusion*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @megasas_complete_r1_command(%struct.megasas_instance*, %struct.megasas_cmd_fusion*) #1

declare dso_local i32 @megasas_return_cmd(%struct.megasas_instance*, %struct.megasas_cmd*) #1

declare dso_local i32 @megasas_complete_cmd(%struct.megasas_instance*, %struct.megasas_cmd*, i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

declare dso_local i32 @writel(i64, i32) #1

declare dso_local i32 @irq_poll_sched(i32*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @megasas_check_and_restore_queue_depth(%struct.megasas_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
