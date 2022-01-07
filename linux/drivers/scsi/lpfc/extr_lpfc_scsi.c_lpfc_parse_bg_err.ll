; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_parse_bg_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_parse_bg_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32 }
%struct.lpfc_io_buf = type { %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32, i32*, i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.lpfc_iocbq = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sli3_bg_fields }
%struct.sli3_bg_fields = type { i64, i64 }

@DID_ERROR = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@LOG_BG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [89 x i8] c"9072 BLKGRD: Invalid BG Profile in cmd 0x%x lba 0x%llx blk cnt 0x%x bgstat=x%x bghm=x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [92 x i8] c"9073 BLKGRD: Invalid BG PDIF Block in cmd 0x%x lba 0x%llx blk cnt 0x%x bgstat=x%x bghm=x%x\0A\00", align 1
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [86 x i8] c"9055 BLKGRD: Guard Tag error in cmd 0x%x lba 0x%llx blk cnt 0x%x bgstat=x%x bghm=x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [84 x i8] c"9056 BLKGRD: Ref Tag error in cmd 0x%x lba 0x%llx blk cnt 0x%x bgstat=x%x bghm=x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"9061 BLKGRD: App Tag error in cmd 0x%x lba 0x%llx blk cnt 0x%x bgstat=x%x bghm=x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [84 x i8] c"9057 BLKGRD: Unknown error in cmd 0x%x lba 0x%llx blk cnt 0x%x bgstat=x%x bghm=x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_io_buf*, %struct.lpfc_iocbq*)* @lpfc_parse_bg_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_parse_bg_err(%struct.lpfc_hba* %0, %struct.lpfc_io_buf* %1, %struct.lpfc_iocbq* %2) #0 {
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_io_buf*, align 8
  %6 = alloca %struct.lpfc_iocbq*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca %struct.sli3_bg_fields*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_io_buf* %1, %struct.lpfc_io_buf** %5, align 8
  store %struct.lpfc_iocbq* %2, %struct.lpfc_iocbq** %6, align 8
  %13 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %14 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %13, i32 0, i32 0
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %14, align 8
  store %struct.scsi_cmnd* %15, %struct.scsi_cmnd** %7, align 8
  %16 = load %struct.lpfc_iocbq*, %struct.lpfc_iocbq** %6, align 8
  %17 = getelementptr inbounds %struct.lpfc_iocbq, %struct.lpfc_iocbq* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.sli3_bg_fields* %19, %struct.sli3_bg_fields** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.sli3_bg_fields*, %struct.sli3_bg_fields** %8, align 8
  %21 = getelementptr inbounds %struct.sli3_bg_fields, %struct.sli3_bg_fields* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load %struct.sli3_bg_fields*, %struct.sli3_bg_fields** %8, align 8
  %24 = getelementptr inbounds %struct.sli3_bg_fields, %struct.sli3_bg_fields* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %26 = load i64, i64* %11, align 8
  %27 = call i64 @lpfc_bgs_get_invalid_prof(i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %53

29:                                               ; preds = %3
  %30 = load i32, i32* @DID_ERROR, align 4
  %31 = shl i32 %30, 16
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %35 = load i32, i32* @KERN_WARNING, align 4
  %36 = load i32, i32* @LOG_FCP, align 4
  %37 = load i32, i32* @LOG_BG, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %40 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %45 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %44)
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %47 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @blk_rq_sectors(i32 %48)
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* %10, align 8
  %52 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %34, i32 %35, i32 %38, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i32 %43, i64 %45, i32 %49, i64 %50, i64 %51)
  store i32 -1, i32* %9, align 4
  br label %286

53:                                               ; preds = %3
  %54 = load i64, i64* %11, align 8
  %55 = call i64 @lpfc_bgs_get_uninit_dif_block(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %53
  %58 = load i32, i32* @DID_ERROR, align 4
  %59 = shl i32 %58, 16
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %63 = load i32, i32* @KERN_WARNING, align 4
  %64 = load i32, i32* @LOG_FCP, align 4
  %65 = load i32, i32* @LOG_BG, align 4
  %66 = or i32 %64, %65
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %68 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %73 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %72)
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %75 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @blk_rq_sectors(i32 %76)
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %62, i32 %63, i32 %66, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i32 %71, i64 %73, i32 %77, i64 %78, i64 %79)
  store i32 -1, i32* %9, align 4
  br label %286

81:                                               ; preds = %53
  %82 = load i64, i64* %11, align 8
  %83 = call i64 @lpfc_bgs_get_guard_err(i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %123

85:                                               ; preds = %81
  store i32 1, i32* %9, align 4
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %87 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %90 = call i32 @scsi_build_sense_buffer(i32 1, i32* %88, i32 %89, i32 16, i32 1)
  %91 = load i32, i32* @DRIVER_SENSE, align 4
  %92 = shl i32 %91, 24
  %93 = load i32, i32* @DID_ABORT, align 4
  %94 = shl i32 %93, 16
  %95 = or i32 %92, %94
  %96 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %99 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %101 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %105 = load i32, i32* @KERN_WARNING, align 4
  %106 = load i32, i32* @LOG_FCP, align 4
  %107 = load i32, i32* @LOG_BG, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %110 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %109, i32 0, i32 3
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %115 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %114)
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %117 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @blk_rq_sectors(i32 %118)
  %120 = load i64, i64* %11, align 8
  %121 = load i64, i64* %10, align 8
  %122 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %104, i32 %105, i32 %108, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.2, i64 0, i64 0), i32 %113, i64 %115, i32 %119, i64 %120, i64 %121)
  br label %123

123:                                              ; preds = %85, %81
  %124 = load i64, i64* %11, align 8
  %125 = call i64 @lpfc_bgs_get_reftag_err(i64 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %165

127:                                              ; preds = %123
  store i32 1, i32* %9, align 4
  %128 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %129 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %132 = call i32 @scsi_build_sense_buffer(i32 1, i32* %130, i32 %131, i32 16, i32 3)
  %133 = load i32, i32* @DRIVER_SENSE, align 4
  %134 = shl i32 %133, 24
  %135 = load i32, i32* @DID_ABORT, align 4
  %136 = shl i32 %135, 16
  %137 = or i32 %134, %136
  %138 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %141 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %140, i32 0, i32 0
  store i32 %139, i32* %141, align 8
  %142 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %143 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 4
  %146 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %147 = load i32, i32* @KERN_WARNING, align 4
  %148 = load i32, i32* @LOG_FCP, align 4
  %149 = load i32, i32* @LOG_BG, align 4
  %150 = or i32 %148, %149
  %151 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %152 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %151, i32 0, i32 3
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %157 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %156)
  %158 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %159 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @blk_rq_sectors(i32 %160)
  %162 = load i64, i64* %11, align 8
  %163 = load i64, i64* %10, align 8
  %164 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %146, i32 %147, i32 %150, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 %155, i64 %157, i32 %161, i64 %162, i64 %163)
  br label %165

165:                                              ; preds = %127, %123
  %166 = load i64, i64* %11, align 8
  %167 = call i64 @lpfc_bgs_get_apptag_err(i64 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %207

169:                                              ; preds = %165
  store i32 1, i32* %9, align 4
  %170 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %171 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %174 = call i32 @scsi_build_sense_buffer(i32 1, i32* %172, i32 %173, i32 16, i32 2)
  %175 = load i32, i32* @DRIVER_SENSE, align 4
  %176 = shl i32 %175, 24
  %177 = load i32, i32* @DID_ABORT, align 4
  %178 = shl i32 %177, 16
  %179 = or i32 %176, %178
  %180 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %181 = or i32 %179, %180
  %182 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %183 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %185 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %185, align 4
  %188 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %189 = load i32, i32* @KERN_WARNING, align 4
  %190 = load i32, i32* @LOG_FCP, align 4
  %191 = load i32, i32* @LOG_BG, align 4
  %192 = or i32 %190, %191
  %193 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %194 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %193, i32 0, i32 3
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %199 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %198)
  %200 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %201 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @blk_rq_sectors(i32 %202)
  %204 = load i64, i64* %11, align 8
  %205 = load i64, i64* %10, align 8
  %206 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %188, i32 %189, i32 %192, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 %197, i64 %199, i32 %203, i64 %204, i64 %205)
  br label %207

207:                                              ; preds = %169, %165
  %208 = load i64, i64* %11, align 8
  %209 = call i64 @lpfc_bgs_get_hi_water_mark_present(i64 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %259

211:                                              ; preds = %207
  %212 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %213 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 7
  store i32 12, i32* %215, align 4
  %216 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %217 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 8
  store i32 0, i32* %219, align 4
  %220 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %221 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 9
  store i32 10, i32* %223, align 4
  %224 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %225 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 10
  store i32 128, i32* %227, align 4
  %228 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %229 = call i32 @scsi_get_prot_op(%struct.scsi_cmnd* %228)
  switch i32 %229, label %247 [
    i32 133, label %230
    i32 128, label %230
    i32 131, label %238
    i32 130, label %238
    i32 132, label %238
    i32 129, label %238
  ]

230:                                              ; preds = %211, %211
  %231 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %232 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %231, i32 0, i32 4
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* %10, align 8
  %237 = sdiv i64 %236, %235
  store i64 %237, i64* %10, align 8
  br label %247

238:                                              ; preds = %211, %211, %211, %211
  %239 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %240 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %239, i32 0, i32 4
  %241 = load %struct.TYPE_6__*, %struct.TYPE_6__** %240, align 8
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = add i64 %243, 4
  %245 = load i64, i64* %10, align 8
  %246 = udiv i64 %245, %244
  store i64 %246, i64* %10, align 8
  br label %247

247:                                              ; preds = %211, %238, %230
  %248 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %249 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %248)
  store i64 %249, i64* %12, align 8
  %250 = load i64, i64* %10, align 8
  %251 = load i64, i64* %12, align 8
  %252 = add nsw i64 %251, %250
  store i64 %252, i64* %12, align 8
  %253 = load i64, i64* %12, align 8
  %254 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %255 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %254, i32 0, i32 1
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 12
  %258 = call i32 @put_unaligned_be64(i64 %253, i32* %257)
  br label %259

259:                                              ; preds = %247, %207
  %260 = load i32, i32* %9, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %285, label %262

262:                                              ; preds = %259
  %263 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %264 = load i32, i32* @KERN_WARNING, align 4
  %265 = load i32, i32* @LOG_FCP, align 4
  %266 = load i32, i32* @LOG_BG, align 4
  %267 = or i32 %265, %266
  %268 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %269 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %268, i32 0, i32 3
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 0
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %274 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %273)
  %275 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %276 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = call i32 @blk_rq_sectors(i32 %277)
  %279 = load i64, i64* %11, align 8
  %280 = load i64, i64* %10, align 8
  %281 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %263, i32 %264, i32 %267, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.5, i64 0, i64 0), i32 %272, i64 %274, i32 %278, i64 %279, i64 %280)
  %282 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %283 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %284 = call i32 @lpfc_calc_bg_err(%struct.lpfc_hba* %282, %struct.lpfc_io_buf* %283)
  br label %285

285:                                              ; preds = %262, %259
  br label %286

286:                                              ; preds = %285, %57, %29
  %287 = load i32, i32* %9, align 4
  ret i32 %287
}

declare dso_local i64 @lpfc_bgs_get_invalid_prof(i64) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, i64, i32, i64, i64) #1

declare dso_local i64 @scsi_get_lba(%struct.scsi_cmnd*) #1

declare dso_local i32 @blk_rq_sectors(i32) #1

declare dso_local i64 @lpfc_bgs_get_uninit_dif_block(i64) #1

declare dso_local i64 @lpfc_bgs_get_guard_err(i64) #1

declare dso_local i32 @scsi_build_sense_buffer(i32, i32*, i32, i32, i32) #1

declare dso_local i64 @lpfc_bgs_get_reftag_err(i64) #1

declare dso_local i64 @lpfc_bgs_get_apptag_err(i64) #1

declare dso_local i64 @lpfc_bgs_get_hi_water_mark_present(i64) #1

declare dso_local i32 @scsi_get_prot_op(%struct.scsi_cmnd*) #1

declare dso_local i32 @put_unaligned_be64(i64, i32*) #1

declare dso_local i32 @lpfc_calc_bg_err(%struct.lpfc_hba*, %struct.lpfc_io_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
