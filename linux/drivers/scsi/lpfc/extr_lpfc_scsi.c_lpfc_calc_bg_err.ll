; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_calc_bg_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_calc_bg_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32 }
%struct.lpfc_io_buf = type { i32, %struct.scsi_cmnd* }
%struct.scsi_cmnd = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.scsi_dif_tuple = type { i64, i64, i64 }

@BGS_GUARD_ERR_MASK = common dso_local global i32 0, align 4
@SCSI_PROT_READ_STRIP = common dso_local global i32 0, align 4
@SCSI_PROT_WRITE_INSERT = common dso_local global i32 0, align 4
@SCSI_PROT_NORMAL = common dso_local global i32 0, align 4
@T10_PI_REF_ESCAPE = common dso_local global i64 0, align 8
@T10_PI_APP_ESCAPE = common dso_local global i64 0, align 8
@BGS_REFTAG_ERR_MASK = common dso_local global i32 0, align 4
@BGS_APPTAG_ERR_MASK = common dso_local global i32 0, align 4
@ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@LOG_BG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"9069 BLKGRD: LBA %lx grd_tag error %x != %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"9066 BLKGRD: LBA %lx ref_tag error %x != %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"9041 BLKGRD: LBA %lx app_tag error %x != %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_io_buf*)* @lpfc_calc_bg_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_calc_bg_err(%struct.lpfc_hba* %0, %struct.lpfc_io_buf* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_io_buf*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca %struct.scsi_dif_tuple*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_io_buf* %1, %struct.lpfc_io_buf** %4, align 8
  %25 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %26 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %25, i32 0, i32 1
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %26, align 8
  store %struct.scsi_cmnd* %27, %struct.scsi_cmnd** %7, align 8
  store %struct.scsi_dif_tuple* null, %struct.scsi_dif_tuple** %8, align 8
  store i32* null, i32** %9, align 8
  %28 = load i32, i32* @BGS_GUARD_ERR_MASK, align 4
  store i32 %28, i32* %17, align 4
  store i64 0, i64* %23, align 8
  store i64 0, i64* %10, align 8
  %29 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %30 = call i32 @scsi_get_prot_op(%struct.scsi_cmnd* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @SCSI_PROT_READ_STRIP, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* %15, align 4
  %36 = load i32, i32* @SCSI_PROT_WRITE_INSERT, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %15, align 4
  %40 = load i32, i32* @SCSI_PROT_NORMAL, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %38, %34, %2
  br label %225

43:                                               ; preds = %38
  store i32 1, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %45 = call %struct.scatterlist* @scsi_prot_sglist(%struct.scsi_cmnd* %44)
  store %struct.scatterlist* %45, %struct.scatterlist** %5, align 8
  %46 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %4, align 8
  %47 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %16, align 4
  %49 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %50 = icmp ne %struct.scatterlist* %49, null
  br i1 %50, label %51, label %224

51:                                               ; preds = %43
  %52 = load i32, i32* %16, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %224

54:                                               ; preds = %51
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %56 = call %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd* %55)
  store %struct.scatterlist* %56, %struct.scatterlist** %6, align 8
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %58 = call i32 @lpfc_cmd_blksize(%struct.scsi_cmnd* %57)
  store i32 %58, i32* %24, align 4
  %59 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %60 = call i64 @sg_virt(%struct.scatterlist* %59)
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %9, align 8
  %62 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %63 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %19, align 4
  %65 = load i32, i32* %19, align 4
  %66 = load i32, i32* %24, align 4
  %67 = sub i32 %66, 1
  %68 = and i32 %65, %67
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %54
  store i32 1, i32* %22, align 4
  br label %71

71:                                               ; preds = %70, %54
  %72 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %73 = call i64 @sg_virt(%struct.scatterlist* %72)
  %74 = inttoptr i64 %73 to %struct.scsi_dif_tuple*
  store %struct.scsi_dif_tuple* %74, %struct.scsi_dif_tuple** %8, align 8
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %76 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %75)
  store i64 %76, i64* %13, align 8
  %77 = load %struct.scsi_dif_tuple*, %struct.scsi_dif_tuple** %8, align 8
  %78 = getelementptr inbounds %struct.scsi_dif_tuple, %struct.scsi_dif_tuple* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %11, align 8
  %80 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %81 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %18, align 4
  br label %83

83:                                               ; preds = %220, %71
  %84 = load %struct.scsi_dif_tuple*, %struct.scsi_dif_tuple** %8, align 8
  %85 = icmp ne %struct.scsi_dif_tuple* %84, null
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %16, align 4
  %88 = icmp ne i32 %87, 0
  br label %89

89:                                               ; preds = %86, %83
  %90 = phi i1 [ false, %83 ], [ %88, %86 ]
  br i1 %90, label %91, label %223

91:                                               ; preds = %89
  br label %92

92:                                               ; preds = %206, %91
  %93 = load i32, i32* %18, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %207

95:                                               ; preds = %92
  %96 = load %struct.scsi_dif_tuple*, %struct.scsi_dif_tuple** %8, align 8
  %97 = getelementptr inbounds %struct.scsi_dif_tuple, %struct.scsi_dif_tuple* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @T10_PI_REF_ESCAPE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %107, label %101

101:                                              ; preds = %95
  %102 = load %struct.scsi_dif_tuple*, %struct.scsi_dif_tuple** %8, align 8
  %103 = getelementptr inbounds %struct.scsi_dif_tuple, %struct.scsi_dif_tuple* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @T10_PI_APP_ESCAPE, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101, %95
  %108 = load i64, i64* %13, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %13, align 8
  br label %163

110:                                              ; preds = %101
  %111 = load i32, i32* %22, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %135

113:                                              ; preds = %110
  %114 = load %struct.scsi_dif_tuple*, %struct.scsi_dif_tuple** %8, align 8
  %115 = getelementptr inbounds %struct.scsi_dif_tuple, %struct.scsi_dif_tuple* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %10, align 8
  %117 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %118 = call i64 @lpfc_cmd_guard_csum(%struct.scsi_cmnd* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %24, align 4
  %123 = call i64 @lpfc_bg_csum(i32* %121, i32 %122)
  store i64 %123, i64* %23, align 8
  br label %128

124:                                              ; preds = %113
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %24, align 4
  %127 = call i64 @lpfc_bg_crc(i32* %125, i32 %126)
  store i64 %127, i64* %23, align 8
  br label %128

128:                                              ; preds = %124, %120
  %129 = load i64, i64* %10, align 8
  %130 = load i64, i64* %23, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* @BGS_GUARD_ERR_MASK, align 4
  store i32 %133, i32* %17, align 4
  br label %225

134:                                              ; preds = %128
  br label %135

135:                                              ; preds = %134, %110
  %136 = load %struct.scsi_dif_tuple*, %struct.scsi_dif_tuple** %8, align 8
  %137 = getelementptr inbounds %struct.scsi_dif_tuple, %struct.scsi_dif_tuple* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @be32_to_cpu(i64 %138)
  store i64 %139, i64* %14, align 8
  %140 = load i32, i32* %20, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %135
  %143 = load i64, i64* %14, align 8
  %144 = load i64, i64* %13, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %148

146:                                              ; preds = %142
  %147 = load i32, i32* @BGS_REFTAG_ERR_MASK, align 4
  store i32 %147, i32* %17, align 4
  br label %225

148:                                              ; preds = %142, %135
  %149 = load i64, i64* %13, align 8
  %150 = add nsw i64 %149, 1
  store i64 %150, i64* %13, align 8
  %151 = load %struct.scsi_dif_tuple*, %struct.scsi_dif_tuple** %8, align 8
  %152 = getelementptr inbounds %struct.scsi_dif_tuple, %struct.scsi_dif_tuple* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  store i64 %153, i64* %12, align 8
  %154 = load i32, i32* %21, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %148
  %157 = load i64, i64* %12, align 8
  %158 = load i64, i64* %11, align 8
  %159 = icmp ne i64 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = load i32, i32* @BGS_APPTAG_ERR_MASK, align 4
  store i32 %161, i32* %17, align 4
  br label %225

162:                                              ; preds = %156, %148
  br label %163

163:                                              ; preds = %162, %107
  %164 = load i32, i32* %18, align 4
  %165 = sext i32 %164 to i64
  %166 = sub i64 %165, 24
  %167 = trunc i64 %166 to i32
  store i32 %167, i32* %18, align 4
  %168 = load i32, i32* %18, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %163
  store i32 0, i32* %18, align 4
  br label %171

171:                                              ; preds = %170, %163
  %172 = load %struct.scsi_dif_tuple*, %struct.scsi_dif_tuple** %8, align 8
  %173 = getelementptr inbounds %struct.scsi_dif_tuple, %struct.scsi_dif_tuple* %172, i32 1
  store %struct.scsi_dif_tuple* %173, %struct.scsi_dif_tuple** %8, align 8
  %174 = load i32, i32* %24, align 4
  %175 = load i32*, i32** %9, align 8
  %176 = zext i32 %174 to i64
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  store i32* %177, i32** %9, align 8
  %178 = load i32, i32* %24, align 4
  %179 = load i32, i32* %19, align 4
  %180 = sub i32 %179, %178
  store i32 %180, i32* %19, align 4
  %181 = load i32, i32* %22, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %206

183:                                              ; preds = %171
  %184 = load i32, i32* %19, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %206

186:                                              ; preds = %183
  store i32 0, i32* %22, align 4
  %187 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %188 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %187)
  store %struct.scatterlist* %188, %struct.scatterlist** %6, align 8
  %189 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %190 = icmp ne %struct.scatterlist* %189, null
  br i1 %190, label %192, label %191

191:                                              ; preds = %186
  br label %225

192:                                              ; preds = %186
  %193 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %194 = call i64 @sg_virt(%struct.scatterlist* %193)
  %195 = inttoptr i64 %194 to i32*
  store i32* %195, i32** %9, align 8
  %196 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %197 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  store i32 %198, i32* %19, align 4
  %199 = load i32, i32* %19, align 4
  %200 = load i32, i32* %24, align 4
  %201 = sub i32 %200, 1
  %202 = and i32 %199, %201
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %192
  store i32 1, i32* %22, align 4
  br label %205

205:                                              ; preds = %204, %192
  br label %206

206:                                              ; preds = %205, %183, %171
  br label %92

207:                                              ; preds = %92
  %208 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %209 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %208)
  store %struct.scatterlist* %209, %struct.scatterlist** %5, align 8
  %210 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %211 = icmp ne %struct.scatterlist* %210, null
  br i1 %211, label %212, label %219

212:                                              ; preds = %207
  %213 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %214 = call i64 @sg_virt(%struct.scatterlist* %213)
  %215 = inttoptr i64 %214 to %struct.scsi_dif_tuple*
  store %struct.scsi_dif_tuple* %215, %struct.scsi_dif_tuple** %8, align 8
  %216 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %217 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  store i32 %218, i32* %18, align 4
  br label %220

219:                                              ; preds = %207
  store %struct.scsi_dif_tuple* null, %struct.scsi_dif_tuple** %8, align 8
  br label %220

220:                                              ; preds = %219, %212
  %221 = load i32, i32* %16, align 4
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* %16, align 4
  br label %83

223:                                              ; preds = %89
  br label %224

224:                                              ; preds = %223, %51, %43
  br label %225

225:                                              ; preds = %224, %191, %160, %146, %132, %42
  %226 = load i32, i32* %17, align 4
  %227 = load i32, i32* @BGS_GUARD_ERR_MASK, align 4
  %228 = icmp eq i32 %226, %227
  br i1 %228, label %229, label %258

229:                                              ; preds = %225
  %230 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %231 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %234 = call i32 @scsi_build_sense_buffer(i32 1, i32 %232, i32 %233, i32 16, i32 1)
  %235 = load i32, i32* @DRIVER_SENSE, align 4
  %236 = shl i32 %235, 24
  %237 = load i32, i32* @DID_ABORT, align 4
  %238 = shl i32 %237, 16
  %239 = or i32 %236, %238
  %240 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %241 = or i32 %239, %240
  %242 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %243 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 4
  %244 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %245 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %244, i32 0, i32 2
  %246 = load i32, i32* %245, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %245, align 4
  %248 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %249 = load i32, i32* @KERN_WARNING, align 4
  %250 = load i32, i32* @LOG_FCP, align 4
  %251 = load i32, i32* @LOG_BG, align 4
  %252 = or i32 %250, %251
  %253 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %254 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %253)
  %255 = load i64, i64* %23, align 8
  %256 = load i64, i64* %10, align 8
  %257 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %248, i32 %249, i32 %252, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %254, i64 %255, i64 %256)
  br label %326

258:                                              ; preds = %225
  %259 = load i32, i32* %17, align 4
  %260 = load i32, i32* @BGS_REFTAG_ERR_MASK, align 4
  %261 = icmp eq i32 %259, %260
  br i1 %261, label %262, label %291

262:                                              ; preds = %258
  %263 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %264 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %267 = call i32 @scsi_build_sense_buffer(i32 1, i32 %265, i32 %266, i32 16, i32 3)
  %268 = load i32, i32* @DRIVER_SENSE, align 4
  %269 = shl i32 %268, 24
  %270 = load i32, i32* @DID_ABORT, align 4
  %271 = shl i32 %270, 16
  %272 = or i32 %269, %271
  %273 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %274 = or i32 %272, %273
  %275 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %276 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %275, i32 0, i32 0
  store i32 %274, i32* %276, align 4
  %277 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %278 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %278, align 4
  %281 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %282 = load i32, i32* @KERN_WARNING, align 4
  %283 = load i32, i32* @LOG_FCP, align 4
  %284 = load i32, i32* @LOG_BG, align 4
  %285 = or i32 %283, %284
  %286 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %287 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %286)
  %288 = load i64, i64* %14, align 8
  %289 = load i64, i64* %13, align 8
  %290 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %281, i32 %282, i32 %285, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %287, i64 %288, i64 %289)
  br label %325

291:                                              ; preds = %258
  %292 = load i32, i32* %17, align 4
  %293 = load i32, i32* @BGS_APPTAG_ERR_MASK, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %324

295:                                              ; preds = %291
  %296 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %297 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* @ILLEGAL_REQUEST, align 4
  %300 = call i32 @scsi_build_sense_buffer(i32 1, i32 %298, i32 %299, i32 16, i32 2)
  %301 = load i32, i32* @DRIVER_SENSE, align 4
  %302 = shl i32 %301, 24
  %303 = load i32, i32* @DID_ABORT, align 4
  %304 = shl i32 %303, 16
  %305 = or i32 %302, %304
  %306 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %307 = or i32 %305, %306
  %308 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %309 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %308, i32 0, i32 0
  store i32 %307, i32* %309, align 4
  %310 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %311 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %311, align 4
  %314 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %315 = load i32, i32* @KERN_WARNING, align 4
  %316 = load i32, i32* @LOG_FCP, align 4
  %317 = load i32, i32* @LOG_BG, align 4
  %318 = or i32 %316, %317
  %319 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %320 = call i64 @scsi_get_lba(%struct.scsi_cmnd* %319)
  %321 = load i64, i64* %12, align 8
  %322 = load i64, i64* %11, align 8
  %323 = call i32 @lpfc_printf_log(%struct.lpfc_hba* %314, i32 %315, i32 %318, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %320, i64 %321, i64 %322)
  br label %324

324:                                              ; preds = %295, %291
  br label %325

325:                                              ; preds = %324, %262
  br label %326

326:                                              ; preds = %325, %229
  ret void
}

declare dso_local i32 @scsi_get_prot_op(%struct.scsi_cmnd*) #1

declare dso_local %struct.scatterlist* @scsi_prot_sglist(%struct.scsi_cmnd*) #1

declare dso_local %struct.scatterlist* @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_cmd_blksize(%struct.scsi_cmnd*) #1

declare dso_local i64 @sg_virt(%struct.scatterlist*) #1

declare dso_local i64 @scsi_get_lba(%struct.scsi_cmnd*) #1

declare dso_local i64 @lpfc_cmd_guard_csum(%struct.scsi_cmnd*) #1

declare dso_local i64 @lpfc_bg_csum(i32*, i32) #1

declare dso_local i64 @lpfc_bg_crc(i32*, i32) #1

declare dso_local i64 @be32_to_cpu(i64) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @scsi_build_sense_buffer(i32, i32, i32, i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
