; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_queuecommand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64 }
%struct.scsi_cmnd = type { i32, i32*, i64, i32, i32 (%struct.scsi_cmnd*)*, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ipr_resource_entry* }
%struct.ipr_resource_entry = type { i64, i32, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ipr_ioa_cfg = type { i64, %struct.ipr_hrr_queue*, %struct.TYPE_7__* }
%struct.ipr_hrr_queue = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.ipr_ioarcb = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.ipr_cmnd = type { i32, i32, %struct.scsi_cmnd*, %struct.ipr_ioarcb }

@DID_OK = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@ipr_scsi_done = common dso_local global i32 0, align 4
@ipr_scsi_eh_done = common dso_local global i32 0, align 4
@IPR_FLAGS_HI_NO_ULEN_CHK = common dso_local global i32 0, align 4
@IPR_FLAGS_LO_DELAY_AFTER_RST = common dso_local global i32 0, align 4
@IPR_FLAGS_HI_NO_LINK_DESC = common dso_local global i32 0, align 4
@IPR_FLAGS_LO_ALIGNED_BFR = common dso_local global i32 0, align 4
@SCMD_TAGGED = common dso_local global i32 0, align 4
@IPR_FLAGS_LO_SIMPLE_TASK = common dso_local global i32 0, align 4
@IPR_FLAGS_LO_UNTAGGED_TASK = common dso_local global i32 0, align 4
@IPR_QUERY_RSRC_STATE = common dso_local global i32 0, align 4
@IPR_RQTYPE_IOACMD = common dso_local global i32 0, align 4
@IPR_RQTYPE_PIPE = common dso_local global i32 0, align 4
@IPR_FLAGS_HI_SYNC_COMPLETE = common dso_local global i32 0, align 4
@IPR_TRACE_START = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.Scsi_Host*, %struct.scsi_cmnd*)* @ipr_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_queuecommand(%struct.Scsi_Host* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca %struct.ipr_ioa_cfg*, align 8
  %7 = alloca %struct.ipr_resource_entry*, align 8
  %8 = alloca %struct.ipr_ioarcb*, align 8
  %9 = alloca %struct.ipr_cmnd*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ipr_hrr_queue*, align 8
  %14 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %5, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %18, %struct.ipr_ioa_cfg** %6, align 8
  %19 = load i32, i32* @DID_OK, align 4
  %20 = shl i32 %19, 16
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %22 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 7
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %26, align 8
  store %struct.ipr_resource_entry* %27, %struct.ipr_resource_entry** %7, align 8
  %28 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %29 = call i64 @ipr_is_gata(%struct.ipr_resource_entry* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %2
  %32 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %33 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %32, i32 0, i32 4
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br i1 %35, label %36, label %59

36:                                               ; preds = %31
  %37 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %38 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %37, i32 0, i32 2
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %11, align 8
  %43 = call i32 @spin_lock_irqsave(i32 %41, i64 %42)
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %45 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %46 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %45, i32 0, i32 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @ata_sas_queuecmd(%struct.scsi_cmnd* %44, i32 %49)
  store i32 %50, i32* %12, align 4
  %51 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %52 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %51, i32 0, i32 2
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32 %55, i64 %56)
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %3, align 4
  br label %425

59:                                               ; preds = %31, %2
  %60 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %61 = call i32 @ipr_get_hrrq_index(%struct.ipr_ioa_cfg* %60)
  store i32 %61, i32* %14, align 4
  %62 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %63 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %62, i32 0, i32 1
  %64 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %63, align 8
  %65 = load i32, i32* %14, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %64, i64 %66
  store %struct.ipr_hrr_queue* %67, %struct.ipr_hrr_queue** %13, align 8
  %68 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %69 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @spin_lock_irqsave(i32 %70, i64 %71)
  %73 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %74 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %59
  %78 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %79 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %77
  %83 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %84 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  %87 = xor i1 %86, true
  br label %88

88:                                               ; preds = %82, %77, %59
  %89 = phi i1 [ false, %77 ], [ false, %59 ], [ %87, %82 ]
  %90 = zext i1 %89 to i32
  %91 = call i64 @unlikely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %88
  %94 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %95 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i64, i64* %10, align 8
  %98 = call i32 @spin_unlock_irqrestore(i32 %96, i64 %97)
  %99 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %99, i32* %3, align 4
  br label %425

100:                                              ; preds = %88
  %101 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %102 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %114, label %105

105:                                              ; preds = %100
  %106 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %107 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %106, i32 0, i32 5
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %114, label %110

110:                                              ; preds = %105
  %111 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %112 = icmp ne %struct.ipr_resource_entry* %111, null
  %113 = xor i1 %112, true
  br label %114

114:                                              ; preds = %110, %105, %100
  %115 = phi i1 [ true, %105 ], [ true, %100 ], [ %113, %110 ]
  %116 = zext i1 %115 to i32
  %117 = call i64 @unlikely(i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %114
  %120 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %121 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* %10, align 8
  %124 = call i32 @spin_unlock_irqrestore(i32 %122, i64 %123)
  br label %400

125:                                              ; preds = %114
  %126 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %127 = call %struct.ipr_cmnd* @__ipr_get_free_ipr_cmnd(%struct.ipr_hrr_queue* %126)
  store %struct.ipr_cmnd* %127, %struct.ipr_cmnd** %9, align 8
  %128 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %129 = icmp eq %struct.ipr_cmnd* %128, null
  br i1 %129, label %130, label %137

130:                                              ; preds = %125
  %131 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %132 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i64, i64* %10, align 8
  %135 = call i32 @spin_unlock_irqrestore(i32 %133, i64 %134)
  %136 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %136, i32* %3, align 4
  br label %425

137:                                              ; preds = %125
  %138 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %139 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i64, i64* %10, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32 %140, i64 %141)
  %143 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %144 = load i32, i32* @ipr_scsi_done, align 4
  %145 = call i32 @ipr_init_ipr_cmnd(%struct.ipr_cmnd* %143, i32 %144)
  %146 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %147 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %146, i32 0, i32 3
  store %struct.ipr_ioarcb* %147, %struct.ipr_ioarcb** %8, align 8
  %148 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %149 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %153 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %152, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %156 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @memcpy(i32 %151, i32* %154, i32 %157)
  %159 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %160 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %161 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %160, i32 0, i32 2
  store %struct.scsi_cmnd* %159, %struct.scsi_cmnd** %161, align 8
  %162 = load i32, i32* @ipr_scsi_eh_done, align 4
  %163 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %164 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  %165 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %166 = call i64 @ipr_is_gscsi(%struct.ipr_resource_entry* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %195

168:                                              ; preds = %137
  %169 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %170 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %168
  %174 = load i32, i32* @IPR_FLAGS_HI_NO_ULEN_CHK, align 4
  %175 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %176 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %174
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %173, %168
  %181 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %182 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %181, i32 0, i32 3
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %180
  %186 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %187 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %186, i32 0, i32 3
  store i64 0, i64* %187, align 8
  %188 = load i32, i32* @IPR_FLAGS_LO_DELAY_AFTER_RST, align 4
  %189 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %190 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 4
  %193 = or i32 %192, %188
  store i32 %193, i32* %191, align 4
  br label %194

194:                                              ; preds = %185, %180
  br label %195

195:                                              ; preds = %194, %137
  %196 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %197 = call i64 @ipr_is_gscsi(%struct.ipr_resource_entry* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %203, label %199

199:                                              ; preds = %195
  %200 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %201 = call i64 @ipr_is_vset_device(%struct.ipr_resource_entry* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %237

203:                                              ; preds = %199, %195
  %204 = load i32, i32* @IPR_FLAGS_HI_NO_LINK_DESC, align 4
  %205 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %206 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = or i32 %208, %204
  store i32 %209, i32* %207, align 4
  %210 = load i32, i32* @IPR_FLAGS_LO_ALIGNED_BFR, align 4
  %211 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %212 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %210
  store i32 %215, i32* %213, align 4
  %216 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %217 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %216, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @SCMD_TAGGED, align 4
  %220 = and i32 %218, %219
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %229

222:                                              ; preds = %203
  %223 = load i32, i32* @IPR_FLAGS_LO_SIMPLE_TASK, align 4
  %224 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %225 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 4
  %228 = or i32 %227, %223
  store i32 %228, i32* %226, align 4
  br label %236

229:                                              ; preds = %203
  %230 = load i32, i32* @IPR_FLAGS_LO_UNTAGGED_TASK, align 4
  %231 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %232 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = or i32 %234, %230
  store i32 %235, i32* %233, align 4
  br label %236

236:                                              ; preds = %229, %222
  br label %237

237:                                              ; preds = %236, %199
  %238 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %239 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %238, i32 0, i32 1
  %240 = load i32*, i32** %239, align 8
  %241 = getelementptr inbounds i32, i32* %240, i64 0
  %242 = load i32, i32* %241, align 4
  %243 = icmp sge i32 %242, 192
  br i1 %243, label %244, label %261

244:                                              ; preds = %237
  %245 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %246 = call i64 @ipr_is_gscsi(%struct.ipr_resource_entry* %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %256

248:                                              ; preds = %244
  %249 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %250 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 0
  %253 = load i32, i32* %252, align 4
  %254 = load i32, i32* @IPR_QUERY_RSRC_STATE, align 4
  %255 = icmp eq i32 %253, %254
  br i1 %255, label %256, label %261

256:                                              ; preds = %248, %244
  %257 = load i32, i32* @IPR_RQTYPE_IOACMD, align 4
  %258 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %259 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i32 0, i32 1
  store i32 %257, i32* %260, align 4
  br label %261

261:                                              ; preds = %256, %248, %237
  %262 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %263 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %262, i32 0, i32 2
  %264 = load i64, i64* %263, align 8
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %287

266:                                              ; preds = %261
  %267 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %268 = call i64 @ipr_is_af_dasd_device(%struct.ipr_resource_entry* %267)
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %287

270:                                              ; preds = %266
  %271 = load i32, i32* @IPR_RQTYPE_PIPE, align 4
  %272 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %273 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 1
  store i32 %271, i32* %274, align 4
  %275 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %276 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %275, i32 0, i32 2
  %277 = load i64, i64* %276, align 8
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %286

279:                                              ; preds = %270
  %280 = load i32, i32* @IPR_FLAGS_HI_NO_ULEN_CHK, align 4
  %281 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %282 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = or i32 %284, %280
  store i32 %285, i32* %283, align 4
  br label %286

286:                                              ; preds = %279, %270
  br label %287

287:                                              ; preds = %286, %266, %261
  %288 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %289 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %287
  %293 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %294 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %295 = call i32 @ipr_build_ioadl64(%struct.ipr_ioa_cfg* %293, %struct.ipr_cmnd* %294)
  store i32 %295, i32* %12, align 4
  br label %300

296:                                              ; preds = %287
  %297 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %6, align 8
  %298 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %299 = call i32 @ipr_build_ioadl(%struct.ipr_ioa_cfg* %297, %struct.ipr_cmnd* %298)
  store i32 %299, i32* %12, align 4
  br label %300

300:                                              ; preds = %296, %292
  %301 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %302 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load i64, i64* %10, align 8
  %305 = call i32 @spin_lock_irqsave(i32 %303, i64 %304)
  %306 = load i32, i32* %12, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %321, label %308

308:                                              ; preds = %300
  %309 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %310 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %309, i32 0, i32 4
  %311 = load i32, i32* %310, align 8
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %319, label %313

313:                                              ; preds = %308
  %314 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %315 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 8
  %317 = icmp ne i32 %316, 0
  %318 = xor i1 %317, true
  br label %319

319:                                              ; preds = %313, %308
  %320 = phi i1 [ false, %308 ], [ %318, %313 ]
  br label %321

321:                                              ; preds = %319, %300
  %322 = phi i1 [ true, %300 ], [ %320, %319 ]
  %323 = zext i1 %322 to i32
  %324 = call i64 @unlikely(i32 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %344

326:                                              ; preds = %321
  %327 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %328 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %327, i32 0, i32 0
  %329 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %330 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %329, i32 0, i32 3
  %331 = call i32 @list_add_tail(i32* %328, i32* %330)
  %332 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %333 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 4
  %335 = load i64, i64* %10, align 8
  %336 = call i32 @spin_unlock_irqrestore(i32 %334, i64 %335)
  %337 = load i32, i32* %12, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %342, label %339

339:                                              ; preds = %326
  %340 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %341 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %340)
  br label %342

342:                                              ; preds = %339, %326
  %343 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %343, i32* %3, align 4
  br label %425

344:                                              ; preds = %321
  %345 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %346 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = call i64 @unlikely(i32 %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %363

350:                                              ; preds = %344
  %351 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %352 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %351, i32 0, i32 0
  %353 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %354 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %353, i32 0, i32 3
  %355 = call i32 @list_add_tail(i32* %352, i32* %354)
  %356 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %357 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %356, i32 0, i32 1
  %358 = load i32, i32* %357, align 4
  %359 = load i64, i64* %10, align 8
  %360 = call i32 @spin_unlock_irqrestore(i32 %358, i64 %359)
  %361 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %362 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %361)
  br label %400

363:                                              ; preds = %344
  %364 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %365 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %368 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %367, i32 0, i32 1
  store i32 %366, i32* %368, align 4
  %369 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %370 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = icmp ne i64 %371, 0
  br i1 %372, label %373, label %382

373:                                              ; preds = %363
  %374 = load i32, i32* @IPR_FLAGS_HI_SYNC_COMPLETE, align 4
  %375 = load %struct.ipr_ioarcb*, %struct.ipr_ioarcb** %8, align 8
  %376 = getelementptr inbounds %struct.ipr_ioarcb, %struct.ipr_ioarcb* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %376, i32 0, i32 0
  %378 = load i32, i32* %377, align 4
  %379 = or i32 %378, %374
  store i32 %379, i32* %377, align 4
  %380 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %381 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %380, i32 0, i32 0
  store i64 0, i64* %381, align 8
  br label %382

382:                                              ; preds = %373, %363
  %383 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %384 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %383, i32 0, i32 0
  %385 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %386 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %385, i32 0, i32 2
  %387 = call i32 @list_add_tail(i32* %384, i32* %386)
  %388 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %389 = load i32, i32* @IPR_TRACE_START, align 4
  %390 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %7, align 8
  %391 = call i32 @IPR_GET_RES_PHYS_LOC(%struct.ipr_resource_entry* %390)
  %392 = call i32 @ipr_trc_hook(%struct.ipr_cmnd* %388, i32 %389, i32 %391)
  %393 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %9, align 8
  %394 = call i32 @ipr_send_command(%struct.ipr_cmnd* %393)
  %395 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %396 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load i64, i64* %10, align 8
  %399 = call i32 @spin_unlock_irqrestore(i32 %397, i64 %398)
  store i32 0, i32* %3, align 4
  br label %425

400:                                              ; preds = %350, %119
  %401 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %402 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %401, i32 0, i32 1
  %403 = load i32, i32* %402, align 4
  %404 = load i64, i64* %10, align 8
  %405 = call i32 @spin_lock_irqsave(i32 %403, i64 %404)
  %406 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %407 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %406, i32 0, i32 5
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %410 = call i32 @memset(i32 %408, i32 0, i32 %409)
  %411 = load i32, i32* @DID_NO_CONNECT, align 4
  %412 = shl i32 %411, 16
  %413 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %414 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %413, i32 0, i32 0
  store i32 %412, i32* %414, align 8
  %415 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %416 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %415, i32 0, i32 4
  %417 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %416, align 8
  %418 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %419 = call i32 %417(%struct.scsi_cmnd* %418)
  %420 = load %struct.ipr_hrr_queue*, %struct.ipr_hrr_queue** %13, align 8
  %421 = getelementptr inbounds %struct.ipr_hrr_queue, %struct.ipr_hrr_queue* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = load i64, i64* %10, align 8
  %424 = call i32 @spin_unlock_irqrestore(i32 %422, i64 %423)
  store i32 0, i32* %3, align 4
  br label %425

425:                                              ; preds = %400, %382, %342, %130, %93, %36
  %426 = load i32, i32* %3, align 4
  ret i32 %426
}

declare dso_local i64 @ipr_is_gata(%struct.ipr_resource_entry*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @ata_sas_queuecmd(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @ipr_get_hrrq_index(%struct.ipr_ioa_cfg*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.ipr_cmnd* @__ipr_get_free_ipr_cmnd(%struct.ipr_hrr_queue*) #1

declare dso_local i32 @ipr_init_ipr_cmnd(%struct.ipr_cmnd*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @ipr_is_gscsi(%struct.ipr_resource_entry*) #1

declare dso_local i64 @ipr_is_vset_device(%struct.ipr_resource_entry*) #1

declare dso_local i64 @ipr_is_af_dasd_device(%struct.ipr_resource_entry*) #1

declare dso_local i32 @ipr_build_ioadl64(%struct.ipr_ioa_cfg*, %struct.ipr_cmnd*) #1

declare dso_local i32 @ipr_build_ioadl(%struct.ipr_ioa_cfg*, %struct.ipr_cmnd*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @ipr_trc_hook(%struct.ipr_cmnd*, i32, i32) #1

declare dso_local i32 @IPR_GET_RES_PHYS_LOC(%struct.ipr_resource_entry*) #1

declare dso_local i32 @ipr_send_command(%struct.ipr_cmnd*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
