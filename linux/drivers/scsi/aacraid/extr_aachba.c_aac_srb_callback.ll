; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_srb_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_aac_srb_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fib = type { i32 }
%struct.aac_srb_reply = type { i8*, i32, i8*, i8*, i8*, i8* }
%struct.scsi_cmnd = type { i8*, i32*, i32, i32, i32 (%struct.scsi_cmnd*)* }

@FIB_CONTEXT_FLAG_FASTRESP = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i32 0, align 4
@expose_physicals = common dso_local global i64 0, align 8
@ST_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"aac_srb_callback: srb failed, status = %d\0A\00", align 1
@u32 = common dso_local global i32 0, align 4
@SCSI_SENSE_BUFFERSIZE = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@COMMAND_COMPLETE = common dso_local global i32 0, align 4
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"aacraid: SCSI CMD underflow\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"aacraid: SCSI CMD Data Overrun\0A\00", align 1
@DID_ABORT = common dso_local global i32 0, align 4
@ABORT = common dso_local global i32 0, align 4
@DID_PARITY = common dso_local global i32 0, align 4
@MSG_PARITY_ERROR = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@DID_TIME_OUT = common dso_local global i32 0, align 4
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@MESSAGE_REJECT = common dso_local global i32 0, align 4
@ATA_12 = common dso_local global i32 0, align 4
@ATA_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.fib*)* @aac_srb_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_srb_callback(i8* %0, %struct.fib* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fib*, align 8
  %5 = alloca %struct.aac_srb_reply*, align 8
  %6 = alloca %struct.scsi_cmnd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.fib* %1, %struct.fib** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.scsi_cmnd*
  store %struct.scsi_cmnd* %10, %struct.scsi_cmnd** %6, align 8
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %12 = load %struct.fib*, %struct.fib** %4, align 8
  %13 = call i32 @aac_valid_context(%struct.scsi_cmnd* %11, %struct.fib* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %328

16:                                               ; preds = %2
  %17 = load %struct.fib*, %struct.fib** %4, align 8
  %18 = icmp eq %struct.fib* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.fib*, %struct.fib** %4, align 8
  %22 = call i64 @fib_data(%struct.fib* %21)
  %23 = inttoptr i64 %22 to %struct.aac_srb_reply*
  store %struct.aac_srb_reply* %23, %struct.aac_srb_reply** %5, align 8
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  store i8 0, i8* %27, align 1
  %28 = load %struct.fib*, %struct.fib** %4, align 8
  %29 = getelementptr inbounds %struct.fib, %struct.fib* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @FIB_CONTEXT_FLAG_FASTRESP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %16
  %35 = call i8* @cpu_to_le32(i32 134)
  %36 = load %struct.aac_srb_reply*, %struct.aac_srb_reply** %5, align 8
  %37 = getelementptr inbounds %struct.aac_srb_reply, %struct.aac_srb_reply* %36, i32 0, i32 4
  store i8* %35, i8** %37, align 8
  %38 = load i32, i32* @SAM_STAT_GOOD, align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.aac_srb_reply*, %struct.aac_srb_reply** %5, align 8
  %41 = getelementptr inbounds %struct.aac_srb_reply, %struct.aac_srb_reply* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  br label %53

42:                                               ; preds = %16
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %45 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %44)
  %46 = load %struct.aac_srb_reply*, %struct.aac_srb_reply** %5, align 8
  %47 = getelementptr inbounds %struct.aac_srb_reply, %struct.aac_srb_reply* %46, i32 0, i32 5
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @le32_to_cpu(i8* %48)
  %50 = sext i32 %49 to i64
  %51 = sub nsw i64 %45, %50
  %52 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %43, i64 %51)
  br label %53

53:                                               ; preds = %42, %34
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %55 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %54)
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 167
  br i1 %61, label %62, label %76

62:                                               ; preds = %53
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %62
  %71 = load i64, i64* @expose_physicals, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %75 = call i32 @aac_expose_phy_device(%struct.scsi_cmnd* %74)
  br label %76

76:                                               ; preds = %73, %70, %62, %53
  %77 = load %struct.aac_srb_reply*, %struct.aac_srb_reply** %5, align 8
  %78 = getelementptr inbounds %struct.aac_srb_reply, %struct.aac_srb_reply* %77, i32 0, i32 2
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @le32_to_cpu(i8* %79)
  %81 = load i32, i32* @ST_OK, align 4
  %82 = icmp ne i32 %80, %81
  br i1 %82, label %83, label %113

83:                                               ; preds = %76
  %84 = load %struct.aac_srb_reply*, %struct.aac_srb_reply** %5, align 8
  %85 = getelementptr inbounds %struct.aac_srb_reply, %struct.aac_srb_reply* %84, i32 0, i32 2
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @le32_to_cpu(i8* %86)
  %88 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @u32, align 4
  %90 = load %struct.aac_srb_reply*, %struct.aac_srb_reply** %5, align 8
  %91 = getelementptr inbounds %struct.aac_srb_reply, %struct.aac_srb_reply* %90, i32 0, i32 3
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @le32_to_cpu(i8* %92)
  %94 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %95 = call i32 @min_t(i32 %89, i32 %93, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* @DID_ERROR, align 4
  %97 = shl i32 %96, 16
  %98 = load i32, i32* @COMMAND_COMPLETE, align 4
  %99 = shl i32 %98, 8
  %100 = or i32 %97, %99
  %101 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %102 = or i32 %100, %101
  %103 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %104 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 8
  %105 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %106 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  %108 = load %struct.aac_srb_reply*, %struct.aac_srb_reply** %5, align 8
  %109 = getelementptr inbounds %struct.aac_srb_reply, %struct.aac_srb_reply* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32 @memcpy(i8* %107, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %83, %76
  %114 = load %struct.aac_srb_reply*, %struct.aac_srb_reply** %5, align 8
  %115 = getelementptr inbounds %struct.aac_srb_reply, %struct.aac_srb_reply* %114, i32 0, i32 4
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 @le32_to_cpu(i8* %116)
  %118 = and i32 %117, 63
  switch i32 %118, label %236 [
    i32 151, label %119
    i32 139, label %119
    i32 134, label %119
    i32 155, label %127
    i32 162, label %171
    i32 161, label %179
    i32 140, label %187
    i32 142, label %195
    i32 148, label %195
    i32 146, label %195
    i32 149, label %195
    i32 135, label %195
    i32 156, label %203
    i32 133, label %203
    i32 158, label %211
    i32 157, label %219
    i32 145, label %227
    i32 137, label %235
    i32 152, label %235
    i32 147, label %235
    i32 136, label %235
    i32 141, label %235
    i32 132, label %235
    i32 138, label %235
    i32 159, label %235
    i32 154, label %235
    i32 160, label %235
    i32 143, label %235
    i32 144, label %235
    i32 150, label %235
    i32 153, label %235
  ]

119:                                              ; preds = %113, %113, %113
  %120 = load i32, i32* @DID_OK, align 4
  %121 = shl i32 %120, 16
  %122 = load i32, i32* @COMMAND_COMPLETE, align 4
  %123 = shl i32 %122, 8
  %124 = or i32 %121, %123
  %125 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %126 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  br label %284

127:                                              ; preds = %113
  %128 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %129 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  switch i32 %132, label %162 [
    i32 163, label %133
    i32 128, label %133
    i32 166, label %133
    i32 131, label %133
    i32 165, label %133
    i32 130, label %133
    i32 164, label %133
    i32 129, label %133
    i32 167, label %154
  ]

133:                                              ; preds = %127, %127, %127, %127, %127, %127, %127, %127
  %134 = load %struct.aac_srb_reply*, %struct.aac_srb_reply** %5, align 8
  %135 = getelementptr inbounds %struct.aac_srb_reply, %struct.aac_srb_reply* %134, i32 0, i32 5
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @le32_to_cpu(i8* %136)
  %138 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %139 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %137, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %133
  %143 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %146

144:                                              ; preds = %133
  %145 = call i32 (i8*, ...) @pr_warn(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %146

146:                                              ; preds = %144, %142
  %147 = load i32, i32* @DID_ERROR, align 4
  %148 = shl i32 %147, 16
  %149 = load i32, i32* @COMMAND_COMPLETE, align 4
  %150 = shl i32 %149, 8
  %151 = or i32 %148, %150
  %152 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %153 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %152, i32 0, i32 2
  store i32 %151, i32* %153, align 8
  br label %170

154:                                              ; preds = %127
  %155 = load i32, i32* @DID_OK, align 4
  %156 = shl i32 %155, 16
  %157 = load i32, i32* @COMMAND_COMPLETE, align 4
  %158 = shl i32 %157, 8
  %159 = or i32 %156, %158
  %160 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %161 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 8
  br label %170

162:                                              ; preds = %127
  %163 = load i32, i32* @DID_OK, align 4
  %164 = shl i32 %163, 16
  %165 = load i32, i32* @COMMAND_COMPLETE, align 4
  %166 = shl i32 %165, 8
  %167 = or i32 %164, %166
  %168 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %169 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 8
  br label %170

170:                                              ; preds = %162, %154, %146
  br label %284

171:                                              ; preds = %113
  %172 = load i32, i32* @DID_ABORT, align 4
  %173 = shl i32 %172, 16
  %174 = load i32, i32* @ABORT, align 4
  %175 = shl i32 %174, 8
  %176 = or i32 %173, %175
  %177 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %178 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %177, i32 0, i32 2
  store i32 %176, i32* %178, align 8
  br label %284

179:                                              ; preds = %113
  %180 = load i32, i32* @DID_ERROR, align 4
  %181 = shl i32 %180, 16
  %182 = load i32, i32* @ABORT, align 4
  %183 = shl i32 %182, 8
  %184 = or i32 %181, %183
  %185 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %186 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  br label %284

187:                                              ; preds = %113
  %188 = load i32, i32* @DID_PARITY, align 4
  %189 = shl i32 %188, 16
  %190 = load i32, i32* @MSG_PARITY_ERROR, align 4
  %191 = shl i32 %190, 8
  %192 = or i32 %189, %191
  %193 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %194 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %193, i32 0, i32 2
  store i32 %192, i32* %194, align 8
  br label %284

195:                                              ; preds = %113, %113, %113, %113, %113
  %196 = load i32, i32* @DID_NO_CONNECT, align 4
  %197 = shl i32 %196, 16
  %198 = load i32, i32* @COMMAND_COMPLETE, align 4
  %199 = shl i32 %198, 8
  %200 = or i32 %197, %199
  %201 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %202 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %201, i32 0, i32 2
  store i32 %200, i32* %202, align 8
  br label %284

203:                                              ; preds = %113, %113
  %204 = load i32, i32* @DID_TIME_OUT, align 4
  %205 = shl i32 %204, 16
  %206 = load i32, i32* @COMMAND_COMPLETE, align 4
  %207 = shl i32 %206, 8
  %208 = or i32 %205, %207
  %209 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %210 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %209, i32 0, i32 2
  store i32 %208, i32* %210, align 8
  br label %284

211:                                              ; preds = %113
  %212 = load i32, i32* @DID_BUS_BUSY, align 4
  %213 = shl i32 %212, 16
  %214 = load i32, i32* @COMMAND_COMPLETE, align 4
  %215 = shl i32 %214, 8
  %216 = or i32 %213, %215
  %217 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %218 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %217, i32 0, i32 2
  store i32 %216, i32* %218, align 8
  br label %284

219:                                              ; preds = %113
  %220 = load i32, i32* @DID_RESET, align 4
  %221 = shl i32 %220, 16
  %222 = load i32, i32* @COMMAND_COMPLETE, align 4
  %223 = shl i32 %222, 8
  %224 = or i32 %221, %223
  %225 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %226 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %225, i32 0, i32 2
  store i32 %224, i32* %226, align 8
  br label %284

227:                                              ; preds = %113
  %228 = load i32, i32* @DID_ERROR, align 4
  %229 = shl i32 %228, 16
  %230 = load i32, i32* @MESSAGE_REJECT, align 4
  %231 = shl i32 %230, 8
  %232 = or i32 %229, %231
  %233 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %234 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %233, i32 0, i32 2
  store i32 %232, i32* %234, align 8
  br label %284

235:                                              ; preds = %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113, %113
  br label %236

236:                                              ; preds = %113, %235
  %237 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %238 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %237, i32 0, i32 1
  %239 = load i32*, i32** %238, align 8
  %240 = getelementptr inbounds i32, i32* %239, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @ATA_12, align 4
  %243 = icmp eq i32 %241, %242
  br i1 %243, label %252, label %244

244:                                              ; preds = %236
  %245 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %246 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %245, i32 0, i32 1
  %247 = load i32*, i32** %246, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @ATA_16, align 4
  %251 = icmp eq i32 %249, %250
  br i1 %251, label %252, label %276

252:                                              ; preds = %244, %236
  %253 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %254 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %253, i32 0, i32 1
  %255 = load i32*, i32** %254, align 8
  %256 = getelementptr inbounds i32, i32* %255, i64 2
  %257 = load i32, i32* %256, align 4
  %258 = and i32 %257, 32
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %268

260:                                              ; preds = %252
  %261 = load i32, i32* @DID_OK, align 4
  %262 = shl i32 %261, 16
  %263 = load i32, i32* @COMMAND_COMPLETE, align 4
  %264 = shl i32 %263, 8
  %265 = or i32 %262, %264
  %266 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %267 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %266, i32 0, i32 2
  store i32 %265, i32* %267, align 8
  br label %284

268:                                              ; preds = %252
  %269 = load i32, i32* @DID_ERROR, align 4
  %270 = shl i32 %269, 16
  %271 = load i32, i32* @COMMAND_COMPLETE, align 4
  %272 = shl i32 %271, 8
  %273 = or i32 %270, %272
  %274 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %275 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %274, i32 0, i32 2
  store i32 %273, i32* %275, align 8
  br label %284

276:                                              ; preds = %244
  %277 = load i32, i32* @DID_ERROR, align 4
  %278 = shl i32 %277, 16
  %279 = load i32, i32* @COMMAND_COMPLETE, align 4
  %280 = shl i32 %279, 8
  %281 = or i32 %278, %280
  %282 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %283 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %282, i32 0, i32 2
  store i32 %281, i32* %283, align 8
  br label %284

284:                                              ; preds = %276, %268, %260, %227, %219, %211, %203, %195, %187, %179, %171, %170, %119
  %285 = load %struct.aac_srb_reply*, %struct.aac_srb_reply** %5, align 8
  %286 = getelementptr inbounds %struct.aac_srb_reply, %struct.aac_srb_reply* %285, i32 0, i32 0
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 @le32_to_cpu(i8* %287)
  %289 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %312

291:                                              ; preds = %284
  %292 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %293 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %294 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %293, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = or i32 %295, %292
  store i32 %296, i32* %294, align 8
  %297 = load i32, i32* @u32, align 4
  %298 = load %struct.aac_srb_reply*, %struct.aac_srb_reply** %5, align 8
  %299 = getelementptr inbounds %struct.aac_srb_reply, %struct.aac_srb_reply* %298, i32 0, i32 3
  %300 = load i8*, i8** %299, align 8
  %301 = call i32 @le32_to_cpu(i8* %300)
  %302 = load i32, i32* @SCSI_SENSE_BUFFERSIZE, align 4
  %303 = call i32 @min_t(i32 %297, i32 %301, i32 %302)
  store i32 %303, i32* %8, align 4
  %304 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %305 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %304, i32 0, i32 0
  %306 = load i8*, i8** %305, align 8
  %307 = load %struct.aac_srb_reply*, %struct.aac_srb_reply** %5, align 8
  %308 = getelementptr inbounds %struct.aac_srb_reply, %struct.aac_srb_reply* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* %8, align 4
  %311 = call i32 @memcpy(i8* %306, i32 %309, i32 %310)
  br label %312

312:                                              ; preds = %291, %284
  %313 = load %struct.aac_srb_reply*, %struct.aac_srb_reply** %5, align 8
  %314 = getelementptr inbounds %struct.aac_srb_reply, %struct.aac_srb_reply* %313, i32 0, i32 0
  %315 = load i8*, i8** %314, align 8
  %316 = call i32 @le32_to_cpu(i8* %315)
  %317 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %318 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = or i32 %319, %316
  store i32 %320, i32* %318, align 8
  %321 = load %struct.fib*, %struct.fib** %4, align 8
  %322 = call i32 @aac_fib_complete(%struct.fib* %321)
  %323 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %324 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %323, i32 0, i32 4
  %325 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %324, align 8
  %326 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %6, align 8
  %327 = call i32 %325(%struct.scsi_cmnd* %326)
  br label %328

328:                                              ; preds = %312, %15
  ret void
}

declare dso_local i32 @aac_valid_context(%struct.scsi_cmnd*, %struct.fib*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @fib_data(%struct.fib*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i64) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

declare dso_local i32 @aac_expose_phy_device(%struct.scsi_cmnd*) #1

declare dso_local i32 @pr_warn(i8*, ...) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @aac_fib_complete(%struct.fib*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
