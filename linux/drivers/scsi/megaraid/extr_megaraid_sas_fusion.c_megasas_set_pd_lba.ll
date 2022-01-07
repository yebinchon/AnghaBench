; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_set_pd_lba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fusion.c_megasas_set_pd_lba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPI2_RAID_SCSI_IO_REQUEST = type { i8*, i32, i32, i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.IO_REQUEST_INFO = type { i32, i32, i32 }
%struct.scsi_cmnd = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.MR_DRV_RAID_MAP_ALL = type { i32 }
%struct.MR_LD_RAID = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@MR_PROT_INFO_TYPE_CONTROLLER = common dso_local global i64 0, align 8
@MEGASAS_SCSI_VARIABLE_LENGTH_CMD = common dso_local global i32 0, align 4
@MEGASAS_SCSI_ADDL_CDB_LEN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i64 0, align 8
@MEGASAS_SCSI_SERVICE_ACTION_READ32 = common dso_local global i32 0, align 4
@MEGASAS_SCSI_SERVICE_ACTION_WRITE32 = common dso_local global i32 0, align 4
@MEGASAS_RD_WR_PROTECT_CHECK_ALL = common dso_local global i32 0, align 4
@MPI2_SCSIIO_EEDPFLAGS_INC_PRI_REFTAG = common dso_local global i32 0, align 4
@MPI2_SCSIIO_EEDPFLAGS_CHECK_REFTAG = common dso_local global i32 0, align 4
@MPI2_SCSIIO_EEDPFLAGS_CHECK_REMOVE_OP = common dso_local global i32 0, align 4
@MPI2_SCSIIO_EEDPFLAGS_CHECK_APPTAG = common dso_local global i32 0, align 4
@MPI25_SCSIIO_EEDPFLAGS_DO_NOT_DISABLE_MODE = common dso_local global i32 0, align 4
@MPI2_SCSIIO_EEDPFLAGS_CHECK_GUARD = common dso_local global i32 0, align 4
@MPI2_SCSIIO_EEDPFLAGS_INSERT_OP = common dso_local global i32 0, align 4
@READ_16 = common dso_local global i32 0, align 4
@READ_10 = common dso_local global i32 0, align 4
@WRITE_10 = common dso_local global i32 0, align 4
@READ_12 = common dso_local global i32 0, align 4
@READ_6 = common dso_local global i32 0, align 4
@WRITE_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPI2_RAID_SCSI_IO_REQUEST*, i32, %struct.IO_REQUEST_INFO*, %struct.scsi_cmnd*, %struct.MR_DRV_RAID_MAP_ALL*, i32)* @megasas_set_pd_lba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @megasas_set_pd_lba(%struct.MPI2_RAID_SCSI_IO_REQUEST* %0, i32 %1, %struct.IO_REQUEST_INFO* %2, %struct.scsi_cmnd* %3, %struct.MR_DRV_RAID_MAP_ALL* %4, i32 %5) #0 {
  %7 = alloca %struct.MPI2_RAID_SCSI_IO_REQUEST*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.IO_REQUEST_INFO*, align 8
  %10 = alloca %struct.scsi_cmnd*, align 8
  %11 = alloca %struct.MR_DRV_RAID_MAP_ALL*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.MR_LD_RAID*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.MPI2_RAID_SCSI_IO_REQUEST* %0, %struct.MPI2_RAID_SCSI_IO_REQUEST** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.IO_REQUEST_INFO* %2, %struct.IO_REQUEST_INFO** %9, align 8
  store %struct.scsi_cmnd* %3, %struct.scsi_cmnd** %10, align 8
  store %struct.MR_DRV_RAID_MAP_ALL* %4, %struct.MR_DRV_RAID_MAP_ALL** %11, align 8
  store i32 %5, i32* %12, align 4
  %23 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %9, align 8
  %24 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %15, align 4
  %26 = load %struct.MPI2_RAID_SCSI_IO_REQUEST*, %struct.MPI2_RAID_SCSI_IO_REQUEST** %7, align 8
  %27 = getelementptr inbounds %struct.MPI2_RAID_SCSI_IO_REQUEST, %struct.MPI2_RAID_SCSI_IO_REQUEST* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %16, align 8
  %30 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %9, align 8
  %31 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %33 = load %struct.IO_REQUEST_INFO*, %struct.IO_REQUEST_INFO** %9, align 8
  %34 = getelementptr inbounds %struct.IO_REQUEST_INFO, %struct.IO_REQUEST_INFO* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %11, align 8
  %37 = call i32 @MR_TargetIdToLdGet(i32 %35, %struct.MR_DRV_RAID_MAP_ALL* %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %11, align 8
  %40 = call %struct.MR_LD_RAID* @MR_LdRaidGet(i32 %38, %struct.MR_DRV_RAID_MAP_ALL* %39)
  store %struct.MR_LD_RAID* %40, %struct.MR_LD_RAID** %13, align 8
  %41 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %13, align 8
  %42 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MR_PROT_INFO_TYPE_CONTROLLER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %186

47:                                               ; preds = %6
  %48 = load i32*, i32** %16, align 8
  %49 = call i32 @memset(i32* %48, i32 0, i32 8)
  %50 = load i32, i32* @MEGASAS_SCSI_VARIABLE_LENGTH_CMD, align 4
  %51 = load i32*, i32** %16, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @MEGASAS_SCSI_ADDL_CDB_LEN, align 4
  %54 = load i32*, i32** %16, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %47
  %62 = load i32, i32* @MEGASAS_SCSI_SERVICE_ACTION_READ32, align 4
  %63 = load i32*, i32** %16, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 9
  store i32 %62, i32* %64, align 4
  br label %69

65:                                               ; preds = %47
  %66 = load i32, i32* @MEGASAS_SCSI_SERVICE_ACTION_WRITE32, align 4
  %67 = load i32*, i32** %16, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 9
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i32, i32* @MEGASAS_RD_WR_PROTECT_CHECK_ALL, align 4
  %71 = load i32*, i32** %16, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 10
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %15, align 4
  %74 = ashr i32 %73, 56
  %75 = and i32 %74, 255
  %76 = load i32*, i32** %16, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 12
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %15, align 4
  %79 = ashr i32 %78, 48
  %80 = and i32 %79, 255
  %81 = load i32*, i32** %16, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 13
  store i32 %80, i32* %82, align 4
  %83 = load i32, i32* %15, align 4
  %84 = ashr i32 %83, 40
  %85 = and i32 %84, 255
  %86 = load i32*, i32** %16, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 14
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %15, align 4
  %89 = ashr i32 %88, 32
  %90 = and i32 %89, 255
  %91 = load i32*, i32** %16, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 15
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %15, align 4
  %94 = ashr i32 %93, 24
  %95 = and i32 %94, 255
  %96 = load i32*, i32** %16, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 16
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %15, align 4
  %99 = ashr i32 %98, 16
  %100 = and i32 %99, 255
  %101 = load i32*, i32** %16, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 17
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %15, align 4
  %104 = ashr i32 %103, 8
  %105 = and i32 %104, 255
  %106 = load i32*, i32** %16, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 18
  store i32 %105, i32* %107, align 4
  %108 = load i32, i32* %15, align 4
  %109 = and i32 %108, 255
  %110 = load i32*, i32** %16, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 19
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %12, align 4
  %113 = call i32 @cpu_to_be32(i32 %112)
  %114 = load %struct.MPI2_RAID_SCSI_IO_REQUEST*, %struct.MPI2_RAID_SCSI_IO_REQUEST** %7, align 8
  %115 = getelementptr inbounds %struct.MPI2_RAID_SCSI_IO_REQUEST, %struct.MPI2_RAID_SCSI_IO_REQUEST* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 1
  store i32 %113, i32* %117, align 4
  %118 = call i32 @cpu_to_be16(i32 65535)
  %119 = load %struct.MPI2_RAID_SCSI_IO_REQUEST*, %struct.MPI2_RAID_SCSI_IO_REQUEST** %7, align 8
  %120 = getelementptr inbounds %struct.MPI2_RAID_SCSI_IO_REQUEST, %struct.MPI2_RAID_SCSI_IO_REQUEST* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  store i32 %118, i32* %122, align 8
  %123 = call i8* @cpu_to_le16(i32 32)
  %124 = load %struct.MPI2_RAID_SCSI_IO_REQUEST*, %struct.MPI2_RAID_SCSI_IO_REQUEST** %7, align 8
  %125 = getelementptr inbounds %struct.MPI2_RAID_SCSI_IO_REQUEST, %struct.MPI2_RAID_SCSI_IO_REQUEST* %124, i32 0, i32 0
  store i8* %123, i8** %125, align 8
  %126 = load i32, i32* %17, align 4
  %127 = ashr i32 %126, 24
  %128 = and i32 %127, 255
  %129 = load i32*, i32** %16, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 28
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* %17, align 4
  %132 = ashr i32 %131, 16
  %133 = and i32 %132, 255
  %134 = load i32*, i32** %16, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 29
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* %17, align 4
  %137 = ashr i32 %136, 8
  %138 = and i32 %137, 255
  %139 = load i32*, i32** %16, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 30
  store i32 %138, i32* %140, align 4
  %141 = load i32, i32* %17, align 4
  %142 = and i32 %141, 255
  %143 = load i32*, i32** %16, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 31
  store i32 %142, i32* %144, align 4
  %145 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %146 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @DMA_FROM_DEVICE, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %165

150:                                              ; preds = %69
  %151 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_INC_PRI_REFTAG, align 4
  %152 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_CHECK_REFTAG, align 4
  %153 = or i32 %151, %152
  %154 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_CHECK_REMOVE_OP, align 4
  %155 = or i32 %153, %154
  %156 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_CHECK_APPTAG, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @MPI25_SCSIIO_EEDPFLAGS_DO_NOT_DISABLE_MODE, align 4
  %159 = or i32 %157, %158
  %160 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_CHECK_GUARD, align 4
  %161 = or i32 %159, %160
  %162 = call i8* @cpu_to_le16(i32 %161)
  %163 = load %struct.MPI2_RAID_SCSI_IO_REQUEST*, %struct.MPI2_RAID_SCSI_IO_REQUEST** %7, align 8
  %164 = getelementptr inbounds %struct.MPI2_RAID_SCSI_IO_REQUEST, %struct.MPI2_RAID_SCSI_IO_REQUEST* %163, i32 0, i32 3
  store i8* %162, i8** %164, align 8
  br label %172

165:                                              ; preds = %69
  %166 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_INC_PRI_REFTAG, align 4
  %167 = load i32, i32* @MPI2_SCSIIO_EEDPFLAGS_INSERT_OP, align 4
  %168 = or i32 %166, %167
  %169 = call i8* @cpu_to_le16(i32 %168)
  %170 = load %struct.MPI2_RAID_SCSI_IO_REQUEST*, %struct.MPI2_RAID_SCSI_IO_REQUEST** %7, align 8
  %171 = getelementptr inbounds %struct.MPI2_RAID_SCSI_IO_REQUEST, %struct.MPI2_RAID_SCSI_IO_REQUEST* %170, i32 0, i32 3
  store i8* %169, i8** %171, align 8
  br label %172

172:                                              ; preds = %165, %150
  %173 = call i32 @cpu_to_le32(i32 268435456)
  %174 = load %struct.MPI2_RAID_SCSI_IO_REQUEST*, %struct.MPI2_RAID_SCSI_IO_REQUEST** %7, align 8
  %175 = getelementptr inbounds %struct.MPI2_RAID_SCSI_IO_REQUEST, %struct.MPI2_RAID_SCSI_IO_REQUEST* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  %178 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %10, align 8
  %179 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %178, i32 0, i32 1
  %180 = load %struct.TYPE_6__*, %struct.TYPE_6__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @cpu_to_le32(i32 %182)
  %184 = load %struct.MPI2_RAID_SCSI_IO_REQUEST*, %struct.MPI2_RAID_SCSI_IO_REQUEST** %7, align 8
  %185 = getelementptr inbounds %struct.MPI2_RAID_SCSI_IO_REQUEST, %struct.MPI2_RAID_SCSI_IO_REQUEST* %184, i32 0, i32 1
  store i32 %183, i32* %185, align 8
  br label %474

186:                                              ; preds = %6
  %187 = load i32, i32* %8, align 4
  %188 = icmp eq i32 %187, 12
  br i1 %188, label %192, label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %8, align 4
  %191 = icmp eq i32 %190, 16
  br i1 %191, label %192, label %267

192:                                              ; preds = %189, %186
  %193 = load i32, i32* %15, align 4
  %194 = icmp ule i32 %193, -1
  br i1 %194, label %195, label %267

195:                                              ; preds = %192
  %196 = load i32, i32* %8, align 4
  %197 = icmp eq i32 %196, 16
  br i1 %197, label %198, label %219

198:                                              ; preds = %195
  %199 = load i32*, i32** %16, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @READ_16, align 4
  %203 = icmp eq i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %198
  %205 = load i32, i32* @READ_10, align 4
  br label %208

206:                                              ; preds = %198
  %207 = load i32, i32* @WRITE_10, align 4
  br label %208

208:                                              ; preds = %206, %204
  %209 = phi i32 [ %205, %204 ], [ %207, %206 ]
  store i32 %209, i32* %18, align 4
  %210 = load i32*, i32** %16, align 8
  %211 = getelementptr inbounds i32, i32* %210, i64 1
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %19, align 4
  %213 = load i32*, i32** %16, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 14
  %215 = load i32, i32* %214, align 4
  store i32 %215, i32* %20, align 4
  %216 = load i32*, i32** %16, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 15
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %21, align 4
  br label %240

219:                                              ; preds = %195
  %220 = load i32*, i32** %16, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @READ_12, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %225, label %227

225:                                              ; preds = %219
  %226 = load i32, i32* @READ_10, align 4
  br label %229

227:                                              ; preds = %219
  %228 = load i32, i32* @WRITE_10, align 4
  br label %229

229:                                              ; preds = %227, %225
  %230 = phi i32 [ %226, %225 ], [ %228, %227 ]
  store i32 %230, i32* %18, align 4
  %231 = load i32*, i32** %16, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  %233 = load i32, i32* %232, align 4
  store i32 %233, i32* %19, align 4
  %234 = load i32*, i32** %16, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 10
  %236 = load i32, i32* %235, align 4
  store i32 %236, i32* %20, align 4
  %237 = load i32*, i32** %16, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 11
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %21, align 4
  br label %240

240:                                              ; preds = %229, %208
  %241 = load i32*, i32** %16, align 8
  %242 = call i32 @memset(i32* %241, i32 0, i32 8)
  %243 = load i32, i32* %18, align 4
  %244 = load i32*, i32** %16, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  store i32 %243, i32* %245, align 4
  %246 = load i32, i32* %19, align 4
  %247 = load i32*, i32** %16, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 1
  store i32 %246, i32* %248, align 4
  %249 = load i32, i32* %20, align 4
  %250 = load i32*, i32** %16, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 6
  store i32 %249, i32* %251, align 4
  %252 = load i32, i32* %21, align 4
  %253 = load i32*, i32** %16, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 9
  store i32 %252, i32* %254, align 4
  %255 = load i32, i32* %17, align 4
  %256 = and i32 %255, 255
  %257 = load i32*, i32** %16, align 8
  %258 = getelementptr inbounds i32, i32* %257, i64 8
  store i32 %256, i32* %258, align 4
  %259 = load i32, i32* %17, align 4
  %260 = ashr i32 %259, 8
  %261 = and i32 %260, 255
  %262 = load i32*, i32** %16, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 7
  store i32 %261, i32* %263, align 4
  %264 = call i8* @cpu_to_le16(i32 10)
  %265 = load %struct.MPI2_RAID_SCSI_IO_REQUEST*, %struct.MPI2_RAID_SCSI_IO_REQUEST** %7, align 8
  %266 = getelementptr inbounds %struct.MPI2_RAID_SCSI_IO_REQUEST, %struct.MPI2_RAID_SCSI_IO_REQUEST* %265, i32 0, i32 0
  store i8* %264, i8** %266, align 8
  store i32 10, i32* %8, align 4
  br label %370

267:                                              ; preds = %192, %189
  %268 = load i32, i32* %8, align 4
  %269 = icmp slt i32 %268, 16
  br i1 %269, label %270, label %369

270:                                              ; preds = %267
  %271 = load i32, i32* %15, align 4
  %272 = icmp ugt i32 %271, -1
  br i1 %272, label %273, label %369

273:                                              ; preds = %270
  %274 = load i32, i32* %8, align 4
  switch i32 %274, label %332 [
    i32 6, label %275
    i32 10, label %290
    i32 12, label %311
  ]

275:                                              ; preds = %273
  %276 = load i32*, i32** %16, align 8
  %277 = getelementptr inbounds i32, i32* %276, i64 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* @READ_6, align 4
  %280 = icmp eq i32 %278, %279
  br i1 %280, label %281, label %283

281:                                              ; preds = %275
  %282 = load i32, i32* @READ_16, align 4
  br label %285

283:                                              ; preds = %275
  %284 = load i32, i32* @WRITE_16, align 4
  br label %285

285:                                              ; preds = %283, %281
  %286 = phi i32 [ %282, %281 ], [ %284, %283 ]
  store i32 %286, i32* %18, align 4
  %287 = load i32*, i32** %16, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 5
  %289 = load i32, i32* %288, align 4
  store i32 %289, i32* %21, align 4
  br label %332

290:                                              ; preds = %273
  %291 = load i32*, i32** %16, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @READ_10, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %298

296:                                              ; preds = %290
  %297 = load i32, i32* @READ_16, align 4
  br label %300

298:                                              ; preds = %290
  %299 = load i32, i32* @WRITE_16, align 4
  br label %300

300:                                              ; preds = %298, %296
  %301 = phi i32 [ %297, %296 ], [ %299, %298 ]
  store i32 %301, i32* %18, align 4
  %302 = load i32*, i32** %16, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 1
  %304 = load i32, i32* %303, align 4
  store i32 %304, i32* %19, align 4
  %305 = load i32*, i32** %16, align 8
  %306 = getelementptr inbounds i32, i32* %305, i64 6
  %307 = load i32, i32* %306, align 4
  store i32 %307, i32* %20, align 4
  %308 = load i32*, i32** %16, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 9
  %310 = load i32, i32* %309, align 4
  store i32 %310, i32* %21, align 4
  br label %332

311:                                              ; preds = %273
  %312 = load i32*, i32** %16, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 0
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @READ_12, align 4
  %316 = icmp eq i32 %314, %315
  br i1 %316, label %317, label %319

317:                                              ; preds = %311
  %318 = load i32, i32* @READ_16, align 4
  br label %321

319:                                              ; preds = %311
  %320 = load i32, i32* @WRITE_16, align 4
  br label %321

321:                                              ; preds = %319, %317
  %322 = phi i32 [ %318, %317 ], [ %320, %319 ]
  store i32 %322, i32* %18, align 4
  %323 = load i32*, i32** %16, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 1
  %325 = load i32, i32* %324, align 4
  store i32 %325, i32* %19, align 4
  %326 = load i32*, i32** %16, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 10
  %328 = load i32, i32* %327, align 4
  store i32 %328, i32* %20, align 4
  %329 = load i32*, i32** %16, align 8
  %330 = getelementptr inbounds i32, i32* %329, i64 11
  %331 = load i32, i32* %330, align 4
  store i32 %331, i32* %21, align 4
  br label %332

332:                                              ; preds = %273, %321, %300, %285
  %333 = load i32*, i32** %16, align 8
  %334 = call i32 @memset(i32* %333, i32 0, i32 8)
  %335 = load i32, i32* %18, align 4
  %336 = load i32*, i32** %16, align 8
  %337 = getelementptr inbounds i32, i32* %336, i64 0
  store i32 %335, i32* %337, align 4
  %338 = load i32, i32* %19, align 4
  %339 = load i32*, i32** %16, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 1
  store i32 %338, i32* %340, align 4
  %341 = load i32, i32* %20, align 4
  %342 = load i32*, i32** %16, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 14
  store i32 %341, i32* %343, align 4
  %344 = load i32, i32* %21, align 4
  %345 = load i32*, i32** %16, align 8
  %346 = getelementptr inbounds i32, i32* %345, i64 15
  store i32 %344, i32* %346, align 4
  %347 = load i32, i32* %17, align 4
  %348 = and i32 %347, 255
  %349 = load i32*, i32** %16, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 13
  store i32 %348, i32* %350, align 4
  %351 = load i32, i32* %17, align 4
  %352 = ashr i32 %351, 8
  %353 = and i32 %352, 255
  %354 = load i32*, i32** %16, align 8
  %355 = getelementptr inbounds i32, i32* %354, i64 12
  store i32 %353, i32* %355, align 4
  %356 = load i32, i32* %17, align 4
  %357 = ashr i32 %356, 16
  %358 = and i32 %357, 255
  %359 = load i32*, i32** %16, align 8
  %360 = getelementptr inbounds i32, i32* %359, i64 11
  store i32 %358, i32* %360, align 4
  %361 = load i32, i32* %17, align 4
  %362 = ashr i32 %361, 24
  %363 = and i32 %362, 255
  %364 = load i32*, i32** %16, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 10
  store i32 %363, i32* %365, align 4
  %366 = call i8* @cpu_to_le16(i32 16)
  %367 = load %struct.MPI2_RAID_SCSI_IO_REQUEST*, %struct.MPI2_RAID_SCSI_IO_REQUEST** %7, align 8
  %368 = getelementptr inbounds %struct.MPI2_RAID_SCSI_IO_REQUEST, %struct.MPI2_RAID_SCSI_IO_REQUEST* %367, i32 0, i32 0
  store i8* %366, i8** %368, align 8
  store i32 16, i32* %8, align 4
  br label %369

369:                                              ; preds = %332, %270, %267
  br label %370

370:                                              ; preds = %369, %240
  %371 = load i32, i32* %8, align 4
  switch i32 %371, label %473 [
    i32 6, label %372
    i32 10, label %393
    i32 12, label %413
    i32 16, label %433
  ]

372:                                              ; preds = %370
  %373 = load i32*, i32** %16, align 8
  %374 = getelementptr inbounds i32, i32* %373, i64 1
  %375 = load i32, i32* %374, align 4
  %376 = and i32 %375, 224
  store i32 %376, i32* %22, align 4
  %377 = load i32, i32* %15, align 4
  %378 = and i32 %377, 255
  %379 = load i32*, i32** %16, align 8
  %380 = getelementptr inbounds i32, i32* %379, i64 3
  store i32 %378, i32* %380, align 4
  %381 = load i32, i32* %15, align 4
  %382 = ashr i32 %381, 8
  %383 = and i32 %382, 255
  %384 = load i32*, i32** %16, align 8
  %385 = getelementptr inbounds i32, i32* %384, i64 2
  store i32 %383, i32* %385, align 4
  %386 = load i32, i32* %22, align 4
  %387 = load i32, i32* %15, align 4
  %388 = ashr i32 %387, 16
  %389 = and i32 %388, 31
  %390 = or i32 %386, %389
  %391 = load i32*, i32** %16, align 8
  %392 = getelementptr inbounds i32, i32* %391, i64 1
  store i32 %390, i32* %392, align 4
  br label %473

393:                                              ; preds = %370
  %394 = load i32, i32* %15, align 4
  %395 = and i32 %394, 255
  %396 = load i32*, i32** %16, align 8
  %397 = getelementptr inbounds i32, i32* %396, i64 5
  store i32 %395, i32* %397, align 4
  %398 = load i32, i32* %15, align 4
  %399 = ashr i32 %398, 8
  %400 = and i32 %399, 255
  %401 = load i32*, i32** %16, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 4
  store i32 %400, i32* %402, align 4
  %403 = load i32, i32* %15, align 4
  %404 = ashr i32 %403, 16
  %405 = and i32 %404, 255
  %406 = load i32*, i32** %16, align 8
  %407 = getelementptr inbounds i32, i32* %406, i64 3
  store i32 %405, i32* %407, align 4
  %408 = load i32, i32* %15, align 4
  %409 = ashr i32 %408, 24
  %410 = and i32 %409, 255
  %411 = load i32*, i32** %16, align 8
  %412 = getelementptr inbounds i32, i32* %411, i64 2
  store i32 %410, i32* %412, align 4
  br label %473

413:                                              ; preds = %370
  %414 = load i32, i32* %15, align 4
  %415 = and i32 %414, 255
  %416 = load i32*, i32** %16, align 8
  %417 = getelementptr inbounds i32, i32* %416, i64 5
  store i32 %415, i32* %417, align 4
  %418 = load i32, i32* %15, align 4
  %419 = ashr i32 %418, 8
  %420 = and i32 %419, 255
  %421 = load i32*, i32** %16, align 8
  %422 = getelementptr inbounds i32, i32* %421, i64 4
  store i32 %420, i32* %422, align 4
  %423 = load i32, i32* %15, align 4
  %424 = ashr i32 %423, 16
  %425 = and i32 %424, 255
  %426 = load i32*, i32** %16, align 8
  %427 = getelementptr inbounds i32, i32* %426, i64 3
  store i32 %425, i32* %427, align 4
  %428 = load i32, i32* %15, align 4
  %429 = ashr i32 %428, 24
  %430 = and i32 %429, 255
  %431 = load i32*, i32** %16, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 2
  store i32 %430, i32* %432, align 4
  br label %473

433:                                              ; preds = %370
  %434 = load i32, i32* %15, align 4
  %435 = and i32 %434, 255
  %436 = load i32*, i32** %16, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 9
  store i32 %435, i32* %437, align 4
  %438 = load i32, i32* %15, align 4
  %439 = ashr i32 %438, 8
  %440 = and i32 %439, 255
  %441 = load i32*, i32** %16, align 8
  %442 = getelementptr inbounds i32, i32* %441, i64 8
  store i32 %440, i32* %442, align 4
  %443 = load i32, i32* %15, align 4
  %444 = ashr i32 %443, 16
  %445 = and i32 %444, 255
  %446 = load i32*, i32** %16, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 7
  store i32 %445, i32* %447, align 4
  %448 = load i32, i32* %15, align 4
  %449 = ashr i32 %448, 24
  %450 = and i32 %449, 255
  %451 = load i32*, i32** %16, align 8
  %452 = getelementptr inbounds i32, i32* %451, i64 6
  store i32 %450, i32* %452, align 4
  %453 = load i32, i32* %15, align 4
  %454 = ashr i32 %453, 32
  %455 = and i32 %454, 255
  %456 = load i32*, i32** %16, align 8
  %457 = getelementptr inbounds i32, i32* %456, i64 5
  store i32 %455, i32* %457, align 4
  %458 = load i32, i32* %15, align 4
  %459 = ashr i32 %458, 40
  %460 = and i32 %459, 255
  %461 = load i32*, i32** %16, align 8
  %462 = getelementptr inbounds i32, i32* %461, i64 4
  store i32 %460, i32* %462, align 4
  %463 = load i32, i32* %15, align 4
  %464 = ashr i32 %463, 48
  %465 = and i32 %464, 255
  %466 = load i32*, i32** %16, align 8
  %467 = getelementptr inbounds i32, i32* %466, i64 3
  store i32 %465, i32* %467, align 4
  %468 = load i32, i32* %15, align 4
  %469 = ashr i32 %468, 56
  %470 = and i32 %469, 255
  %471 = load i32*, i32** %16, align 8
  %472 = getelementptr inbounds i32, i32* %471, i64 2
  store i32 %470, i32* %472, align 4
  br label %473

473:                                              ; preds = %370, %433, %413, %393, %372
  br label %474

474:                                              ; preds = %473, %172
  ret void
}

declare dso_local i32 @MR_TargetIdToLdGet(i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local %struct.MR_LD_RAID* @MR_LdRaidGet(i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
