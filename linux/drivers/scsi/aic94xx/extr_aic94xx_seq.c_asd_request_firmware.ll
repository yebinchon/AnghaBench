; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_request_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_seq.c_asd_request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64*, i32 }
%struct.asd_ha_struct = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sequencer_file_header = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i8*, i8*, i8*, i32 }

@sequencer_fw = common dso_local global %struct.TYPE_5__* null, align 8
@SAS_RAZOR_SEQUENCER_FW_FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Firmware file checksum mismatch\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CSEQ_NUM_VECS = common dso_local global i32 0, align 4
@LSEQ_NUM_VECS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Firmware file table size mismatch\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Found sequencer Firmware version %d.%d (%s)\0A\00", align 1
@SAS_RAZOR_SEQUENCER_FW_MAJOR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [61 x i8] c"Firmware Major Version Mismatch;driver requires version %d.X\00", align 1
@mode2_task = common dso_local global i8* null, align 8
@cseq_idle_loop = common dso_local global i8* null, align 8
@lseq_idle_loop = common dso_local global i8* null, align 8
@cseq_vecs = common dso_local global i8** null, align 8
@lseq_vecs = common dso_local global i8** null, align 8
@cseq_code = common dso_local global i64* null, align 8
@cseq_code_size = common dso_local global i64 0, align 8
@lseq_code = common dso_local global i64* null, align 8
@lseq_code_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asd_ha_struct*)* @asd_request_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asd_request_firmware(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sequencer_file_header, align 8
  %7 = alloca %struct.sequencer_file_header*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i8**, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %3, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sequencer_fw, align 8
  %12 = icmp ne %struct.TYPE_5__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %248

14:                                               ; preds = %1
  %15 = load i32, i32* @SAS_RAZOR_SEQUENCER_FW_FILE, align 4
  %16 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %17 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @request_firmware(%struct.TYPE_5__** @sequencer_fw, i32 %15, i32* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %248

25:                                               ; preds = %14
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sequencer_fw, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  %29 = bitcast i64* %28 to %struct.sequencer_file_header*
  store %struct.sequencer_file_header* %29, %struct.sequencer_file_header** %7, align 8
  %30 = load %struct.sequencer_file_header*, %struct.sequencer_file_header** %7, align 8
  %31 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i8* @le32_to_cpu(i64 %32)
  %34 = ptrtoint i8* %33 to i64
  %35 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 0
  store i64 %34, i64* %35, align 8
  %36 = load %struct.sequencer_file_header*, %struct.sequencer_file_header** %7, align 8
  %37 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = call i8* @le32_to_cpu(i64 %38)
  %40 = ptrtoint i8* %39 to i64
  %41 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 1
  store i64 %40, i64* %41, align 8
  %42 = load %struct.sequencer_file_header*, %struct.sequencer_file_header** %7, align 8
  %43 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i8* @le32_to_cpu(i64 %44)
  %46 = ptrtoint i8* %45 to i64
  %47 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 2
  store i64 %46, i64* %47, align 8
  %48 = load %struct.sequencer_file_header*, %struct.sequencer_file_header** %7, align 8
  %49 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = call i8* @le32_to_cpu(i64 %50)
  %52 = ptrtoint i8* %51 to i64
  %53 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 3
  store i64 %52, i64* %53, align 8
  %54 = load %struct.sequencer_file_header*, %struct.sequencer_file_header** %7, align 8
  %55 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = call i8* @le32_to_cpu(i64 %56)
  %58 = ptrtoint i8* %57 to i64
  %59 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 4
  store i64 %58, i64* %59, align 8
  %60 = load %struct.sequencer_file_header*, %struct.sequencer_file_header** %7, align 8
  %61 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @le32_to_cpu(i64 %62)
  %64 = ptrtoint i8* %63 to i64
  %65 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 5
  store i64 %64, i64* %65, align 8
  %66 = load %struct.sequencer_file_header*, %struct.sequencer_file_header** %7, align 8
  %67 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %66, i32 0, i32 6
  %68 = load i64, i64* %67, align 8
  %69 = call i8* @le32_to_cpu(i64 %68)
  %70 = ptrtoint i8* %69 to i64
  %71 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 6
  store i64 %70, i64* %71, align 8
  %72 = load %struct.sequencer_file_header*, %struct.sequencer_file_header** %7, align 8
  %73 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = call i8* @le32_to_cpu(i64 %74)
  %76 = ptrtoint i8* %75 to i64
  %77 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 7
  store i64 %76, i64* %77, align 8
  %78 = load %struct.sequencer_file_header*, %struct.sequencer_file_header** %7, align 8
  %79 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %78, i32 0, i32 8
  %80 = load i64, i64* %79, align 8
  %81 = call i8* @le32_to_cpu(i64 %80)
  %82 = ptrtoint i8* %81 to i64
  %83 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 8
  store i64 %82, i64* %83, align 8
  %84 = load %struct.sequencer_file_header*, %struct.sequencer_file_header** %7, align 8
  %85 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %84, i32 0, i32 9
  %86 = load i64, i64* %85, align 8
  %87 = call i8* @le32_to_cpu(i64 %86)
  %88 = ptrtoint i8* %87 to i64
  %89 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 9
  store i64 %88, i64* %89, align 8
  %90 = load %struct.sequencer_file_header*, %struct.sequencer_file_header** %7, align 8
  %91 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %90, i32 0, i32 10
  %92 = load i64, i64* %91, align 8
  %93 = call i8* @le32_to_cpu(i64 %92)
  %94 = ptrtoint i8* %93 to i64
  %95 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 10
  store i64 %94, i64* %95, align 8
  %96 = load %struct.sequencer_file_header*, %struct.sequencer_file_header** %7, align 8
  %97 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %96, i32 0, i32 13
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @le16_to_cpu(i8* %98)
  %100 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 13
  store i8* %99, i8** %100, align 8
  %101 = load %struct.sequencer_file_header*, %struct.sequencer_file_header** %7, align 8
  %102 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %101, i32 0, i32 12
  %103 = load i8*, i8** %102, align 8
  %104 = call i8* @le16_to_cpu(i8* %103)
  %105 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 12
  store i8* %104, i8** %105, align 8
  %106 = load %struct.sequencer_file_header*, %struct.sequencer_file_header** %7, align 8
  %107 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %106, i32 0, i32 11
  %108 = load i8*, i8** %107, align 8
  %109 = call i8* @le16_to_cpu(i8* %108)
  %110 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 11
  store i8* %109, i8** %110, align 8
  store i32 8, i32* %5, align 4
  br label %111

111:                                              ; preds = %127, %25
  %112 = load i32, i32* %5, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sequencer_fw, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %112, %115
  br i1 %116, label %117, label %130

117:                                              ; preds = %111
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sequencer_fw, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load i64*, i64** %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64, i64* %120, i64 %122
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = add nsw i64 %125, %124
  store i64 %126, i64* %8, align 8
  br label %127

127:                                              ; preds = %117
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %5, align 4
  br label %111

130:                                              ; preds = %111
  %131 = load i64, i64* %8, align 8
  %132 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %131, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %130
  %136 = call i32 (i8*, ...) @asd_printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %248

139:                                              ; preds = %130
  %140 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* @CSEQ_NUM_VECS, align 4
  %143 = sext i32 %142 to i64
  %144 = icmp ne i64 %141, %143
  br i1 %144, label %151, label %145

145:                                              ; preds = %139
  %146 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 6
  %147 = load i64, i64* %146, align 8
  %148 = load i32, i32* @LSEQ_NUM_VECS, align 4
  %149 = sext i32 %148 to i64
  %150 = icmp ne i64 %147, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %145, %139
  %152 = call i32 (i8*, ...) @asd_printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %248

155:                                              ; preds = %145
  %156 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.sequencer_file_header*, %struct.sequencer_file_header** %7, align 8
  %161 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %160, i32 0, i32 14
  %162 = load i32, i32* %161, align 8
  %163 = call i32 (i8*, ...) @asd_printk(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i64 %157, i64 %159, i32 %162)
  %164 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @SAS_RAZOR_SEQUENCER_FW_MAJOR, align 8
  %167 = icmp ne i64 %165, %166
  br i1 %167, label %168, label %173

168:                                              ; preds = %155
  %169 = load i64, i64* @SAS_RAZOR_SEQUENCER_FW_MAJOR, align 8
  %170 = call i32 (i8*, ...) @asd_printk(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i64 %169)
  %171 = load i32, i32* @EINVAL, align 4
  %172 = sub nsw i32 0, %171
  store i32 %172, i32* %2, align 4
  br label %248

173:                                              ; preds = %155
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sequencer_fw, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i64*, i64** %175, align 8
  %177 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = bitcast i64* %179 to i8**
  store i8** %180, i8*** %9, align 8
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sequencer_fw, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 0
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = bitcast i64* %186 to i8**
  store i8** %187, i8*** %10, align 8
  %188 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 13
  %189 = load i8*, i8** %188, align 8
  store i8* %189, i8** @mode2_task, align 8
  %190 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 12
  %191 = load i8*, i8** %190, align 8
  store i8* %191, i8** @cseq_idle_loop, align 8
  %192 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 11
  %193 = load i8*, i8** %192, align 8
  store i8* %193, i8** @lseq_idle_loop, align 8
  store i32 0, i32* %5, align 4
  br label %194

194:                                              ; preds = %209, %173
  %195 = load i32, i32* %5, align 4
  %196 = load i32, i32* @CSEQ_NUM_VECS, align 4
  %197 = icmp slt i32 %195, %196
  br i1 %197, label %198, label %212

198:                                              ; preds = %194
  %199 = load i8**, i8*** %9, align 8
  %200 = load i32, i32* %5, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  %203 = load i8*, i8** %202, align 8
  %204 = call i8* @le16_to_cpu(i8* %203)
  %205 = load i8**, i8*** @cseq_vecs, align 8
  %206 = load i32, i32* %5, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i8*, i8** %205, i64 %207
  store i8* %204, i8** %208, align 8
  br label %209

209:                                              ; preds = %198
  %210 = load i32, i32* %5, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %5, align 4
  br label %194

212:                                              ; preds = %194
  store i32 0, i32* %5, align 4
  br label %213

213:                                              ; preds = %228, %212
  %214 = load i32, i32* %5, align 4
  %215 = load i32, i32* @LSEQ_NUM_VECS, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %231

217:                                              ; preds = %213
  %218 = load i8**, i8*** %10, align 8
  %219 = load i32, i32* %5, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8*, i8** %218, i64 %220
  %222 = load i8*, i8** %221, align 8
  %223 = call i8* @le16_to_cpu(i8* %222)
  %224 = load i8**, i8*** @lseq_vecs, align 8
  %225 = load i32, i32* %5, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i8*, i8** %224, i64 %226
  store i8* %223, i8** %227, align 8
  br label %228

228:                                              ; preds = %217
  %229 = load i32, i32* %5, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %5, align 4
  br label %213

231:                                              ; preds = %213
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sequencer_fw, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = load i64*, i64** %233, align 8
  %235 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 7
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds i64, i64* %234, i64 %236
  store i64* %237, i64** @cseq_code, align 8
  %238 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 8
  %239 = load i64, i64* %238, align 8
  store i64 %239, i64* @cseq_code_size, align 8
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** @sequencer_fw, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 0
  %242 = load i64*, i64** %241, align 8
  %243 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 9
  %244 = load i64, i64* %243, align 8
  %245 = getelementptr inbounds i64, i64* %242, i64 %244
  store i64* %245, i64** @lseq_code, align 8
  %246 = getelementptr inbounds %struct.sequencer_file_header, %struct.sequencer_file_header* %6, i32 0, i32 10
  %247 = load i64, i64* %246, align 8
  store i64 %247, i64* @lseq_code_size, align 8
  store i32 0, i32* %2, align 4
  br label %248

248:                                              ; preds = %231, %168, %151, %135, %23, %13
  %249 = load i32, i32* %2, align 4
  ret i32 %249
}

declare dso_local i32 @request_firmware(%struct.TYPE_5__**, i32, i32*) #1

declare dso_local i8* @le32_to_cpu(i64) #1

declare dso_local i8* @le16_to_cpu(i8*) #1

declare dso_local i32 @asd_printk(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
