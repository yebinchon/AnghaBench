; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_bg_scsi_prep_dma_buf_s3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_scsi.c_lpfc_bg_scsi_prep_dma_buf_s3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, %struct.TYPE_13__*, %struct.lpfc_vport* }
%struct.TYPE_13__ = type { i32 }
%struct.lpfc_vport = type { i32 }
%struct.lpfc_io_buf = type { i32, i32, %struct.TYPE_8__, i64, %struct.fcp_cmnd*, %struct.scsi_cmnd* }
%struct.TYPE_8__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.fcp_cmnd = type { i32 }
%struct.scsi_cmnd = type { i32 }
%struct.ulp_bde64 = type { i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@LOG_FCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"9022 Unexpected protection group %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [71 x i8] c"9023 Cannot setup S/G List for HBAIO segs %d/%d BPL %d SCSI %d: %d %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lpfc_hba*, %struct.lpfc_io_buf*)* @lpfc_bg_scsi_prep_dma_buf_s3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_bg_scsi_prep_dma_buf_s3(%struct.lpfc_hba* %0, %struct.lpfc_io_buf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lpfc_hba*, align 8
  %5 = alloca %struct.lpfc_io_buf*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca %struct.fcp_cmnd*, align 8
  %8 = alloca %struct.ulp_bde64*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
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
  %27 = inttoptr i64 %26 to %struct.ulp_bde64*
  store %struct.ulp_bde64* %27, %struct.ulp_bde64** %8, align 8
  %28 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %29 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %9, align 8
  store i32 0, i32* %10, align 4
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %32 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %16, align 4
  %34 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %35 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %34, i32 0, i32 3
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %35, align 8
  store %struct.lpfc_vport* %36, %struct.lpfc_vport** %17, align 8
  %37 = load %struct.ulp_bde64*, %struct.ulp_bde64** %8, align 8
  %38 = getelementptr inbounds %struct.ulp_bde64, %struct.ulp_bde64* %37, i64 2
  store %struct.ulp_bde64* %38, %struct.ulp_bde64** %8, align 8
  %39 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %40 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %169

42:                                               ; preds = %2
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %44 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %43, i32 0, i32 2
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 0
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %48 = call i32 @scsi_sglist(%struct.scsi_cmnd* %47)
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %50 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %49)
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @dma_map_sg(i32* %46, i32 %48, i64 %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %42
  store i32 1, i32* %3, align 4
  br label %272

60:                                               ; preds = %42
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %63 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %65 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %68 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp sgt i32 %66, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %60
  %72 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %73 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp sgt i32 %74, %77
  %79 = zext i1 %78 to i32
  %80 = call i32 @WARN_ON_ONCE(i32 %79)
  store i32 2, i32* %16, align 4
  br label %222

81:                                               ; preds = %60
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %84 = call i32 @lpfc_prot_group_type(%struct.lpfc_hba* %82, %struct.scsi_cmnd* %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* %14, align 4
  switch i32 %85, label %158 [
    i32 128, label %86
    i32 130, label %106
    i32 129, label %157
  ]

86:                                               ; preds = %81
  %87 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %88 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 2
  %91 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %92 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp sgt i32 %90, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %86
  store i32 2, i32* %16, align 4
  br label %222

96:                                               ; preds = %86
  %97 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %98 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %99 = load %struct.ulp_bde64*, %struct.ulp_bde64** %8, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @lpfc_bg_setup_bpl(%struct.lpfc_hba* %97, %struct.scsi_cmnd* %98, %struct.ulp_bde64* %99, i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %102, 2
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  store i32 2, i32* %16, align 4
  br label %222

105:                                              ; preds = %96
  br label %168

106:                                              ; preds = %81
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %108 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %107, i32 0, i32 2
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %112 = call i32 @scsi_prot_sglist(%struct.scsi_cmnd* %111)
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %114 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %113)
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @dma_map_sg(i32* %110, i32 %112, i64 %114, i32 %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %106
  %124 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %125 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %124)
  store i32 1, i32* %3, align 4
  br label %272

126:                                              ; preds = %106
  %127 = load i32, i32* %12, align 4
  %128 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %129 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 4
  %130 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %131 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = mul nsw i32 %132, 4
  %134 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %135 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sub nsw i32 %136, 2
  %138 = icmp sgt i32 %133, %137
  br i1 %138, label %139, label %140

139:                                              ; preds = %126
  store i32 2, i32* %16, align 4
  br label %222

140:                                              ; preds = %126
  %141 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %142 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %143 = load %struct.ulp_bde64*, %struct.ulp_bde64** %8, align 8
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %12, align 4
  %146 = call i32 @lpfc_bg_setup_bpl_prot(%struct.lpfc_hba* %141, %struct.scsi_cmnd* %142, %struct.ulp_bde64* %143, i32 %144, i32 %145)
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* %10, align 4
  %148 = icmp slt i32 %147, 3
  br i1 %148, label %155, label %149

149:                                              ; preds = %140
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %152 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp sgt i32 %150, %153
  br i1 %154, label %155, label %156

155:                                              ; preds = %149, %140
  store i32 2, i32* %16, align 4
  br label %222

156:                                              ; preds = %149
  br label %168

157:                                              ; preds = %81
  br label %158

158:                                              ; preds = %81, %157
  %159 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %160 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %159)
  %161 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %162 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %161, i32 0, i32 0
  store i32 0, i32* %162, align 8
  %163 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %164 = load i32, i32* @KERN_ERR, align 4
  %165 = load i32, i32* @LOG_FCP, align 4
  %166 = load i32, i32* %14, align 4
  %167 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %163, i32 %164, i32 %165, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %166)
  store i32 2, i32* %3, align 4
  br label %272

168:                                              ; preds = %156, %105
  br label %169

169:                                              ; preds = %168, %2
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  store i32 8, i32* %174, align 4
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = mul i64 %176, 4
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 2
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = sext i32 %183 to i64
  %185 = add i64 %184, %177
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %182, align 4
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  store i32 1, i32* %188, align 4
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 1
  store i32 1, i32* %190, align 4
  %191 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %192 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %193 = call i32 @lpfc_bg_scsi_adjust_dl(%struct.lpfc_hba* %191, %struct.lpfc_io_buf* %192)
  store i32 %193, i32* %15, align 4
  %194 = load i32, i32* %15, align 4
  %195 = call i32 @be32_to_cpu(i32 %194)
  %196 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %7, align 8
  %197 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 4
  %198 = load i32, i32* %15, align 4
  %199 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %201, i32 0, i32 0
  store i32 %198, i32* %202, align 4
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %169
  %210 = load i32, i32* %15, align 4
  %211 = load %struct.lpfc_vport*, %struct.lpfc_vport** %17, align 8
  %212 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = icmp slt i32 %210, %213
  br i1 %214, label %215, label %221

215:                                              ; preds = %209
  %216 = load i32, i32* %15, align 4
  %217 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 1
  store i32 %216, i32* %220, align 4
  br label %221

221:                                              ; preds = %215, %209, %169
  store i32 0, i32* %3, align 4
  br label %272

222:                                              ; preds = %155, %139, %104, %95, %71
  %223 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %224 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %230

227:                                              ; preds = %222
  %228 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %229 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %228)
  br label %230

230:                                              ; preds = %227, %222
  %231 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %232 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %248

235:                                              ; preds = %230
  %236 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %237 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %236, i32 0, i32 2
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 0
  %240 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %241 = call i32 @scsi_prot_sglist(%struct.scsi_cmnd* %240)
  %242 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %243 = call i64 @scsi_prot_sg_count(%struct.scsi_cmnd* %242)
  %244 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %245 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @dma_unmap_sg(i32* %239, i32 %241, i64 %243, i32 %246)
  br label %248

248:                                              ; preds = %235, %230
  %249 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %250 = load i32, i32* @KERN_ERR, align 4
  %251 = load i32, i32* @LOG_FCP, align 4
  %252 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %253 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %256 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %259 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.lpfc_hba*, %struct.lpfc_hba** %4, align 8
  %262 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* %14, align 4
  %265 = load i32, i32* %10, align 4
  %266 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, i32, ...) @lpfc_printf_log(%struct.lpfc_hba* %249, i32 %250, i32 %251, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %254, i32 %257, i32 %260, i32 %263, i32 %264, i32 %265)
  %267 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %268 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %267, i32 0, i32 0
  store i32 0, i32* %268, align 8
  %269 = load %struct.lpfc_io_buf*, %struct.lpfc_io_buf** %5, align 8
  %270 = getelementptr inbounds %struct.lpfc_io_buf, %struct.lpfc_io_buf* %269, i32 0, i32 1
  store i32 0, i32* %270, align 4
  %271 = load i32, i32* %16, align 4
  store i32 %271, i32* %3, align 4
  br label %272

272:                                              ; preds = %248, %221, %158, %123, %59
  %273 = load i32, i32* %3, align 4
  ret i32 %273
}

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @dma_map_sg(i32*, i32, i64, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @lpfc_prot_group_type(%struct.lpfc_hba*, %struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_bg_setup_bpl(%struct.lpfc_hba*, %struct.scsi_cmnd*, %struct.ulp_bde64*, i32) #1

declare dso_local i32 @scsi_prot_sglist(%struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_prot_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @lpfc_bg_setup_bpl_prot(%struct.lpfc_hba*, %struct.scsi_cmnd*, %struct.ulp_bde64*, i32, i32) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @lpfc_bg_scsi_adjust_dl(%struct.lpfc_hba*, %struct.lpfc_io_buf*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dma_unmap_sg(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
