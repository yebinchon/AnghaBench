; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_bg_scsi_prep_dma_buf_s4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_bg_scsi_prep_dma_buf_s4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_11__*, i64, i32, %struct.lpfc_vport* }
%struct.TYPE_11__ = type { i32 }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_io_buf = type { i32, i32, %struct.TYPE_10__, i64, %struct.fcp_cmnd*, %struct.scsi_cmnd* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.fcp_cmnd = type { i32 }
%struct.scsi_cmnd = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.sli4_sge = type { i32 }
%struct.lpfc_device_data = type { i64 }

@lpfc_sli4_sge_last = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"9083 Unexpected protection group %i\0A\00", align 1
@LPFC_IO_DIF_STRIP = common dso_local global i32 0, align 4
@LPFC_IO_DIF_INSERT = common dso_local global i32 0, align 4
@LPFC_IO_DIF_PASS = common dso_local global i32 0, align 4
@LPFC_IO_OAS = common dso_local global i32 0, align 4
@LPFC_IO_FOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"9084 Cannot setup S/G List for HBAIO segs %d/%d SGL %d SCSI %d: %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_io_buf*)* @lpfc_bg_scsi_prep_dma_buf_s4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bg_scsi_prep_dma_buf_s4(%struct.lpfc_hba* %0, %struct.lpfc_io_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_io_buf*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.fcp_cmnd*, align 8
  %8 = alloca %struct.sli4_sge*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.lpfc_vport*, align 8
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %4, align 8
  store %struct.lpfc_io_buf* %1, %struct.lpfc_io_buf** %5, align 8
  %18 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %19 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %18, i32 0, i32 5
  %20 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %19, align 8
  store %struct.scsi_cmnd* %20, %struct.scsi_cmnd** %6, align 8
  %21 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %22 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %21, i32 0, i32 4
  %23 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %22, align 8
  store %struct.fcp_cmnd* %23, %struct.fcp_cmnd** %7, align 8
  %24 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %25 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.sli4_sge*
  store %struct.sli4_sge* %27, %struct.sli4_sge** %8, align 8
  %28 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 1
  store %struct.TYPE_12__* %30, %struct.TYPE_12__** %9, align 8
  store i32 0, i32* %10, align 4
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %16, align 4
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 5
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %35, align 8
  store %struct.lpfc_vport* %36, %struct.lpfc_vport** %17, align 8
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %38 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %208

40:                                               ; preds = %2
  %41 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %42 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %41, i32 0, i32 2
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %46 = call i32 @scsi_sglist(%struct.scsi_cmnd* %45)
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %48 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %47)
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @dma_map_sg(i32* %44, i32 %46, i64 %48, i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  store i32 1, i32* %3, align 4
  br label %338

58:                                               ; preds = %40
  %59 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %60 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %59, i64 1
  store %struct.sli4_sge* %60, %struct.sli4_sge** %8, align 8
  %61 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %62 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le32_to_cpu(i32 %63)
  %65 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %66 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* @lpfc_sli4_sge_last, align 4
  %68 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %69 = call i32 @bf_set(i32 %67, %struct.sli4_sge* %68, i32 0)
  %70 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %71 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @cpu_to_le32(i32 %72)
  %74 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %75 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %77 = getelementptr inbounds %struct.sli4_sge, %struct.sli4_sge* %76, i64 1
  store %struct.sli4_sge* %77, %struct.sli4_sge** %8, align 8
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %80 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %82 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %85 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %83, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %58
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %90 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %88
  %94 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %95 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %98 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp sgt i32 %96, %99
  %101 = zext i1 %100 to i32
  %102 = call i32 @WARN_ON_ONCE(i32 %101)
  store i32 2, i32* %16, align 4
  br label %288

103:                                              ; preds = %88, %58
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %105 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %106 = call i32 @lpfc_prot_group_type(%struct.lpfc_hba* %104, %struct.scsi_cmnd* %105)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  switch i32 %107, label %197 [
    i32 134, label %108
    i32 136, label %134
    i32 135, label %196
  ]

108:                                              ; preds = %103
  %109 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %110 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = add nsw i32 %111, 1
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %114 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp sgt i32 %112, %115
  br i1 %116, label %117, label %123

117:                                              ; preds = %108
  %118 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %119 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  store i32 2, i32* %16, align 4
  br label %288

123:                                              ; preds = %117, %108
  %124 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %125 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %126 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %127 = load i32, i32* %11, align 4
  %128 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %129 = call i32 @lpfc_bg_setup_sgl(%struct.lpfc_hba* %124, %struct.scsi_cmnd* %125, %struct.sli4_sge* %126, i32 %127, %struct.lpfc_io_buf* %128)
  store i32 %129, i32* %10, align 4
  %130 = load i32, i32* %10, align 4
  %131 = icmp slt i32 %130, 2
  br i1 %131, label %132, label %133

132:                                              ; preds = %123
  store i32 2, i32* %16, align 4
  br label %288

133:                                              ; preds = %123
  br label %207

134:                                              ; preds = %103
  %135 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %136 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %135, i32 0, i32 2
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %140 = call i32 @scsi_prot_sglist(%struct.scsi_cmnd* %139)
  %141 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %142 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %141)
  %143 = load i32, i32* %13, align 4
  %144 = call i32 @dma_map_sg(i32* %138, i32 %140, i64 %142, i32 %143)
  store i32 %144, i32* %12, align 4
  %145 = load i32, i32* %12, align 4
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = call i64 @unlikely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %134
  %152 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %153 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %152)
  store i32 1, i32* %3, align 4
  br label %338

154:                                              ; preds = %134
  %155 = load i32, i32* %12, align 4
  %156 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %157 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 4
  %158 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %159 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %160, 3
  %162 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %163 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 %164, 2
  %166 = icmp sgt i32 %161, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %154
  %168 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %169 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %167
  store i32 2, i32* %16, align 4
  br label %288

173:                                              ; preds = %167, %154
  %174 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %175 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %176 = load %struct.sli4_sge*, %struct.sli4_sge** %8, align 8
  %177 = load i32, i32* %11, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %180 = call i32 @lpfc_bg_setup_sgl_prot(%struct.lpfc_hba* %174, %struct.scsi_cmnd* %175, %struct.sli4_sge* %176, i32 %177, i32 %178, %struct.lpfc_io_buf* %179)
  store i32 %180, i32* %10, align 4
  %181 = load i32, i32* %10, align 4
  %182 = icmp slt i32 %181, 3
  br i1 %182, label %194, label %183

183:                                              ; preds = %173
  %184 = load i32, i32* %10, align 4
  %185 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %186 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = icmp sgt i32 %184, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %183
  %190 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %191 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 8
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %195, label %194

194:                                              ; preds = %189, %173
  store i32 2, i32* %16, align 4
  br label %288

195:                                              ; preds = %189, %183
  br label %207

196:                                              ; preds = %103
  br label %197

197:                                              ; preds = %103, %196
  %198 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %199 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %198)
  %200 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %201 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %200, i32 0, i32 0
  store i32 0, i32* %201, align 8
  %202 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %203 = load i32, i32* @KERN_ERR, align 4
  %204 = load i32, i32* @LOG_FCP, align 4
  %205 = load i32, i32* %14, align 4
  %206 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %202, i32 %203, i32 %204, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %205)
  store i32 2, i32* %3, align 4
  br label %338

207:                                              ; preds = %195, %133
  br label %208

208:                                              ; preds = %207, %2
  %209 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %210 = call i32 @scsi_get_prot_op(%struct.scsi_cmnd* %209)
  switch i32 %210, label %232 [
    i32 128, label %211
    i32 131, label %211
    i32 130, label %218
    i32 133, label %218
    i32 129, label %225
    i32 132, label %225
  ]

211:                                              ; preds = %208, %208
  %212 = load i32, i32* @LPFC_IO_DIF_STRIP, align 4
  %213 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %214 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = or i32 %216, %212
  store i32 %217, i32* %215, align 8
  br label %232

218:                                              ; preds = %208, %208
  %219 = load i32, i32* @LPFC_IO_DIF_INSERT, align 4
  %220 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %221 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %220, i32 0, i32 2
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = or i32 %223, %219
  store i32 %224, i32* %222, align 8
  br label %232

225:                                              ; preds = %208, %208
  %226 = load i32, i32* @LPFC_IO_DIF_PASS, align 4
  %227 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %228 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = or i32 %230, %226
  store i32 %231, i32* %229, align 8
  br label %232

232:                                              ; preds = %208, %225, %218, %211
  %233 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %234 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %235 = call i32 @lpfc_bg_scsi_adjust_dl(%struct.lpfc_hba* %233, %struct.lpfc_io_buf* %234)
  store i32 %235, i32* %15, align 4
  %236 = load i32, i32* %15, align 4
  %237 = call i32 @be32_to_cpu(i32 %236)
  %238 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %7, align 8
  %239 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 4
  %240 = load i32, i32* %15, align 4
  %241 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %242 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i32 0, i32 0
  store i32 %240, i32* %244, align 4
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %263

251:                                              ; preds = %232
  %252 = load i32, i32* %15, align 4
  %253 = load %struct.lpfc_vport*, %struct.lpfc_vport** %17, align 8
  %254 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = icmp slt i32 %252, %255
  br i1 %256, label %257, label %263

257:                                              ; preds = %251
  %258 = load i32, i32* %15, align 4
  %259 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %261, i32 0, i32 1
  store i32 %258, i32* %262, align 4
  br label %263

263:                                              ; preds = %257, %251, %232
  %264 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %265 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %264, i32 0, i32 3
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %287

268:                                              ; preds = %263
  %269 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %270 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %269, i32 0, i32 1
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = inttoptr i64 %273 to %struct.lpfc_device_data*
  %275 = getelementptr inbounds %struct.lpfc_device_data, %struct.lpfc_device_data* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %287

278:                                              ; preds = %268
  %279 = load i32, i32* @LPFC_IO_OAS, align 4
  %280 = load i32, i32* @LPFC_IO_FOF, align 4
  %281 = or i32 %279, %280
  %282 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %283 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %282, i32 0, i32 2
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = or i32 %285, %281
  store i32 %286, i32* %284, align 8
  br label %287

287:                                              ; preds = %278, %268, %263
  store i32 0, i32* %3, align 4
  br label %338

288:                                              ; preds = %194, %172, %132, %122, %93
  %289 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %290 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %288
  %294 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %295 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %294)
  br label %296

296:                                              ; preds = %293, %288
  %297 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %298 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %314

301:                                              ; preds = %296
  %302 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %303 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %302, i32 0, i32 2
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 0
  %306 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %307 = call i32 @scsi_prot_sglist(%struct.scsi_cmnd* %306)
  %308 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %309 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %308)
  %310 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %311 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @dma_unmap_sg(i32* %305, i32 %307, i64 %309, i32 %312)
  br label %314

314:                                              ; preds = %301, %296
  %315 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %316 = load i32, i32* @KERN_ERR, align 4
  %317 = load i32, i32* @LOG_FCP, align 4
  %318 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %319 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %322 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %325 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %328 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %327, i32 0, i32 0
  %329 = load i32, i32* %328, align 8
  %330 = load i32, i32* %14, align 4
  %331 = load i32, i32* %10, align 4
  %332 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %315, i32 %316, i32 %317, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %320, i32 %323, i32 %326, i32 %329, i32 %330, i32 %331)
  %333 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %334 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %333, i32 0, i32 0
  store i32 0, i32* %334, align 8
  %335 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %336 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %335, i32 0, i32 1
  store i32 0, i32* %336, align 4
  %337 = load i32, i32* %16, align 4
  store i32 %337, i32* %3, align 4
  br label %338

338:                                              ; preds = %314, %287, %197, %151, %57
  %339 = load i32, i32* %3, align 4
  ret i32 %339
}

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @dma_map_sg(i32*, i32, i64, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @bf_set(i32, %struct.sli4_sge*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @lpfc_prot_group_type(%struct.lpfc_hba*, %struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_bg_setup_sgl(%struct.lpfc_hba*, %struct.scsi_cmnd*, %struct.sli4_sge*, i32, %struct.lpfc_io_buf*) #1

declare dso_local i32 @scsi_prot_sglist(%struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_prot_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_bg_setup_sgl_prot(%struct.lpfc_hba*, %struct.scsi_cmnd*, %struct.sli4_sge*, i32, i32, %struct.lpfc_io_buf*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @scsi_get_prot_op(%struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_bg_scsi_adjust_dl(%struct.lpfc_hba*, %struct.lpfc_io_buf*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
