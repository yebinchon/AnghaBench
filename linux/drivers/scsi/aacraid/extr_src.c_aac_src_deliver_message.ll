; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_src.c_aac_src_deliver_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_src.c_aac_src_deliver_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.fib = type { i64, i32, i32, i32, %struct.aac_dev*, %struct.TYPE_9__* }
%struct.aac_dev = type { i32, i64, i32, i32*, i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.aac_queue* }
%struct.aac_queue = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32, %struct.TYPE_7__, i8*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.aac_fib_xporthdr = type { i32, i8*, i32 }
%struct.aac_hba_tm_req = type { i64, i32, i32 }
%struct.aac_hba_reset_req = type { i32, i32 }
%struct.aac_hba_cmd_req = type { i32, i32 }

@AdapNormCmdQueue = common dso_local global i64 0, align 8
@FIB_CONTEXT_FLAG_NATIVE_HBA = common dso_local global i64 0, align 8
@AifRequest = common dso_local global i64 0, align 8
@AAC_COMM_MESSAGE_TYPE3 = common dso_local global i64 0, align 8
@FIB_CONTEXT_FLAG_NATIVE_HBA_TMF = common dso_local global i32 0, align 4
@HBA_IU_TYPE_SCSI_TM_REQ = common dso_local global i64 0, align 8
@MUnit = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@AAC_COMM_MESSAGE_TYPE2 = common dso_local global i64 0, align 8
@FIB_MAGIC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fib*)* @aac_src_deliver_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_src_deliver_message(%struct.fib* %0) #0 {
  %2 = alloca %struct.fib*, align 8
  %3 = alloca %struct.aac_dev*, align 8
  %4 = alloca %struct.aac_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.aac_fib_xporthdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.aac_hba_tm_req*, align 8
  store %struct.fib* %0, %struct.fib** %2, align 8
  %12 = load %struct.fib*, %struct.fib** %2, align 8
  %13 = getelementptr inbounds %struct.fib, %struct.fib* %12, i32 0, i32 4
  %14 = load %struct.aac_dev*, %struct.aac_dev** %13, align 8
  store %struct.aac_dev* %14, %struct.aac_dev** %3, align 8
  %15 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %16 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %15, i32 0, i32 6
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.aac_queue*, %struct.aac_queue** %18, align 8
  %20 = load i64, i64* @AdapNormCmdQueue, align 8
  %21 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %19, i64 %20
  store %struct.aac_queue* %21, %struct.aac_queue** %4, align 8
  %22 = load %struct.aac_queue*, %struct.aac_queue** %4, align 8
  %23 = getelementptr inbounds %struct.aac_queue, %struct.aac_queue* %22, i32 0, i32 0
  %24 = call i32 @atomic_inc(i32* %23)
  %25 = load %struct.fib*, %struct.fib** %2, align 8
  %26 = getelementptr inbounds %struct.fib, %struct.fib* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FIB_CONTEXT_FLAG_NATIVE_HBA, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 1, i32 0
  store i32 %32, i32* %8, align 4
  %33 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %34 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %154

37:                                               ; preds = %1
  %38 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %39 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %154

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = load %struct.fib*, %struct.fib** %2, align 8
  %47 = getelementptr inbounds %struct.fib, %struct.fib* %46, i32 0, i32 5
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @AifRequest, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %154

54:                                               ; preds = %45, %42
  %55 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %56 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AAC_COMM_MESSAGE_TYPE3, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %62 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %67 = call i32 @aac_get_vector(%struct.aac_dev* %66)
  store i32 %67, i32* %10, align 4
  br label %72

68:                                               ; preds = %60, %54
  %69 = load %struct.fib*, %struct.fib** %2, align 8
  %70 = getelementptr inbounds %struct.fib, %struct.fib* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %143

75:                                               ; preds = %72
  %76 = load %struct.fib*, %struct.fib** %2, align 8
  %77 = getelementptr inbounds %struct.fib, %struct.fib* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @FIB_CONTEXT_FLAG_NATIVE_HBA_TMF, align 4
  %80 = sext i32 %79 to i64
  %81 = and i64 %78, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %126

83:                                               ; preds = %75
  %84 = load %struct.fib*, %struct.fib** %2, align 8
  %85 = getelementptr inbounds %struct.fib, %struct.fib* %84, i32 0, i32 5
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %85, align 8
  %87 = bitcast %struct.TYPE_9__* %86 to %struct.aac_hba_tm_req*
  store %struct.aac_hba_tm_req* %87, %struct.aac_hba_tm_req** %11, align 8
  %88 = load %struct.aac_hba_tm_req*, %struct.aac_hba_tm_req** %11, align 8
  %89 = getelementptr inbounds %struct.aac_hba_tm_req, %struct.aac_hba_tm_req* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @HBA_IU_TYPE_SCSI_TM_REQ, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %83
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.fib*, %struct.fib** %2, align 8
  %96 = getelementptr inbounds %struct.fib, %struct.fib* %95, i32 0, i32 5
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = bitcast %struct.TYPE_9__* %97 to %struct.aac_hba_tm_req*
  %99 = getelementptr inbounds %struct.aac_hba_tm_req, %struct.aac_hba_tm_req* %98, i32 0, i32 1
  store i32 %94, i32* %99, align 8
  %100 = load i32, i32* %10, align 4
  %101 = shl i32 %100, 16
  %102 = load %struct.fib*, %struct.fib** %2, align 8
  %103 = getelementptr inbounds %struct.fib, %struct.fib* %102, i32 0, i32 5
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %103, align 8
  %105 = bitcast %struct.TYPE_9__* %104 to %struct.aac_hba_tm_req*
  %106 = getelementptr inbounds %struct.aac_hba_tm_req, %struct.aac_hba_tm_req* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %107, %101
  store i32 %108, i32* %106, align 4
  br label %125

109:                                              ; preds = %83
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.fib*, %struct.fib** %2, align 8
  %112 = getelementptr inbounds %struct.fib, %struct.fib* %111, i32 0, i32 5
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = bitcast %struct.TYPE_9__* %113 to %struct.aac_hba_reset_req*
  %115 = getelementptr inbounds %struct.aac_hba_reset_req, %struct.aac_hba_reset_req* %114, i32 0, i32 0
  store i32 %110, i32* %115, align 4
  %116 = load i32, i32* %10, align 4
  %117 = shl i32 %116, 16
  %118 = load %struct.fib*, %struct.fib** %2, align 8
  %119 = getelementptr inbounds %struct.fib, %struct.fib* %118, i32 0, i32 5
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = bitcast %struct.TYPE_9__* %120 to %struct.aac_hba_reset_req*
  %122 = getelementptr inbounds %struct.aac_hba_reset_req, %struct.aac_hba_reset_req* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, %117
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %109, %93
  br label %142

126:                                              ; preds = %75
  %127 = load i32, i32* %10, align 4
  %128 = load %struct.fib*, %struct.fib** %2, align 8
  %129 = getelementptr inbounds %struct.fib, %struct.fib* %128, i32 0, i32 5
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = bitcast %struct.TYPE_9__* %130 to %struct.aac_hba_cmd_req*
  %132 = getelementptr inbounds %struct.aac_hba_cmd_req, %struct.aac_hba_cmd_req* %131, i32 0, i32 0
  store i32 %127, i32* %132, align 4
  %133 = load i32, i32* %10, align 4
  %134 = shl i32 %133, 16
  %135 = load %struct.fib*, %struct.fib** %2, align 8
  %136 = getelementptr inbounds %struct.fib, %struct.fib* %135, i32 0, i32 5
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %136, align 8
  %138 = bitcast %struct.TYPE_9__* %137 to %struct.aac_hba_cmd_req*
  %139 = getelementptr inbounds %struct.aac_hba_cmd_req, %struct.aac_hba_cmd_req* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, %134
  store i32 %141, i32* %139, align 4
  br label %142

142:                                              ; preds = %126, %125
  br label %153

143:                                              ; preds = %72
  %144 = load i32, i32* %10, align 4
  %145 = shl i32 %144, 16
  %146 = load %struct.fib*, %struct.fib** %2, align 8
  %147 = getelementptr inbounds %struct.fib, %struct.fib* %146, i32 0, i32 5
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, %145
  store i32 %152, i32* %150, align 8
  br label %153

153:                                              ; preds = %143, %142
  br label %155

154:                                              ; preds = %45, %37, %1
  store i32 0, i32* %10, align 4
  br label %155

155:                                              ; preds = %154, %153
  %156 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %157 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %156, i32 0, i32 3
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = call i32 @atomic_inc(i32* %161)
  %163 = load i32, i32* %8, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %203

165:                                              ; preds = %155
  %166 = load %struct.fib*, %struct.fib** %2, align 8
  %167 = getelementptr inbounds %struct.fib, %struct.fib* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  store i32 %168, i32* %6, align 4
  %169 = load %struct.fib*, %struct.fib** %2, align 8
  %170 = getelementptr inbounds %struct.fib, %struct.fib* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, 127
  %173 = sdiv i32 %172, 128
  %174 = sub nsw i32 %173, 1
  store i32 %174, i32* %5, align 4
  %175 = load i32, i32* %5, align 4
  %176 = icmp sgt i32 %175, 31
  br i1 %176, label %177, label %178

177:                                              ; preds = %165
  store i32 31, i32* %5, align 4
  br label %178

178:                                              ; preds = %177, %165
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* %6, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %6, align 4
  %182 = load %struct.fib*, %struct.fib** %2, align 8
  %183 = getelementptr inbounds %struct.fib, %struct.fib* %182, i32 0, i32 4
  %184 = load %struct.aac_dev*, %struct.aac_dev** %183, align 8
  %185 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %184, i32 0, i32 2
  %186 = load i64, i64* %9, align 8
  %187 = call i32 @spin_lock_irqsave(i32* %185, i64 %186)
  %188 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %189 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @MUnit, i32 0, i32 3), align 4
  %190 = load i32, i32* %6, align 4
  %191 = call i32 @upper_32_bits(i32 %190)
  %192 = call i32 @src_writel(%struct.aac_dev* %188, i32 %189, i32 %191)
  %193 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %194 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @MUnit, i32 0, i32 2), align 4
  %195 = load i32, i32* %6, align 4
  %196 = call i32 @src_writel(%struct.aac_dev* %193, i32 %194, i32 %195)
  %197 = load %struct.fib*, %struct.fib** %2, align 8
  %198 = getelementptr inbounds %struct.fib, %struct.fib* %197, i32 0, i32 4
  %199 = load %struct.aac_dev*, %struct.aac_dev** %198, align 8
  %200 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %199, i32 0, i32 2
  %201 = load i64, i64* %9, align 8
  %202 = call i32 @spin_unlock_irqrestore(i32* %200, i64 %201)
  br label %331

203:                                              ; preds = %155
  %204 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %205 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = load i64, i64* @AAC_COMM_MESSAGE_TYPE2, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %215, label %209

209:                                              ; preds = %203
  %210 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %211 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @AAC_COMM_MESSAGE_TYPE3, align 8
  %214 = icmp eq i64 %212, %213
  br i1 %214, label %215, label %254

215:                                              ; preds = %209, %203
  %216 = load %struct.fib*, %struct.fib** %2, align 8
  %217 = getelementptr inbounds %struct.fib, %struct.fib* %216, i32 0, i32 5
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @le16_to_cpu(i32 %221)
  %223 = add nsw i32 %222, 127
  %224 = sdiv i32 %223, 128
  %225 = sub nsw i32 %224, 1
  store i32 %225, i32* %5, align 4
  %226 = load %struct.fib*, %struct.fib** %2, align 8
  %227 = getelementptr inbounds %struct.fib, %struct.fib* %226, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* @FIB_MAGIC2, align 4
  %230 = load %struct.fib*, %struct.fib** %2, align 8
  %231 = getelementptr inbounds %struct.fib, %struct.fib* %230, i32 0, i32 5
  %232 = load %struct.TYPE_9__*, %struct.TYPE_9__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 5
  store i32 %229, i32* %234, align 8
  %235 = load i32, i32* %6, align 4
  %236 = call i8* @cpu_to_le32(i32 %235)
  %237 = load %struct.fib*, %struct.fib** %2, align 8
  %238 = getelementptr inbounds %struct.fib, %struct.fib* %237, i32 0, i32 5
  %239 = load %struct.TYPE_9__*, %struct.TYPE_9__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 4
  store i8* %236, i8** %241, align 8
  %242 = load %struct.fib*, %struct.fib** %2, align 8
  %243 = getelementptr inbounds %struct.fib, %struct.fib* %242, i32 0, i32 5
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 3
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  store i64 0, i64* %247, align 8
  %248 = load i32, i32* %6, align 4
  %249 = call i32 @upper_32_bits(i32 %248)
  %250 = sext i32 %249 to i64
  %251 = icmp ne i64 %250, 0
  %252 = zext i1 %251 to i32
  %253 = call i32 @WARN_ON(i32 %252)
  br label %302

254:                                              ; preds = %209
  %255 = load %struct.fib*, %struct.fib** %2, align 8
  %256 = getelementptr inbounds %struct.fib, %struct.fib* %255, i32 0, i32 5
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @le16_to_cpu(i32 %260)
  %262 = sext i32 %261 to i64
  %263 = add i64 24, %262
  %264 = add i64 %263, 127
  %265 = udiv i64 %264, 128
  %266 = sub i64 %265, 1
  %267 = trunc i64 %266 to i32
  store i32 %267, i32* %5, align 4
  %268 = load %struct.fib*, %struct.fib** %2, align 8
  %269 = getelementptr inbounds %struct.fib, %struct.fib* %268, i32 0, i32 5
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** %269, align 8
  %271 = bitcast %struct.TYPE_9__* %270 to i8*
  %272 = getelementptr inbounds i8, i8* %271, i64 -24
  %273 = bitcast i8* %272 to %struct.aac_fib_xporthdr*
  store %struct.aac_fib_xporthdr* %273, %struct.aac_fib_xporthdr** %7, align 8
  %274 = load %struct.fib*, %struct.fib** %2, align 8
  %275 = getelementptr inbounds %struct.fib, %struct.fib* %274, i32 0, i32 5
  %276 = load %struct.TYPE_9__*, %struct.TYPE_9__** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = load %struct.aac_fib_xporthdr*, %struct.aac_fib_xporthdr** %7, align 8
  %281 = getelementptr inbounds %struct.aac_fib_xporthdr, %struct.aac_fib_xporthdr* %280, i32 0, i32 0
  store i32 %279, i32* %281, align 8
  %282 = load %struct.fib*, %struct.fib** %2, align 8
  %283 = getelementptr inbounds %struct.fib, %struct.fib* %282, i32 0, i32 2
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @cpu_to_le64(i32 %284)
  %286 = load %struct.aac_fib_xporthdr*, %struct.aac_fib_xporthdr** %7, align 8
  %287 = getelementptr inbounds %struct.aac_fib_xporthdr, %struct.aac_fib_xporthdr* %286, i32 0, i32 2
  store i32 %285, i32* %287, align 8
  %288 = load %struct.fib*, %struct.fib** %2, align 8
  %289 = getelementptr inbounds %struct.fib, %struct.fib* %288, i32 0, i32 5
  %290 = load %struct.TYPE_9__*, %struct.TYPE_9__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %290, i32 0, i32 0
  %292 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %291, i32 0, i32 2
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @le16_to_cpu(i32 %293)
  %295 = call i8* @cpu_to_le32(i32 %294)
  %296 = load %struct.aac_fib_xporthdr*, %struct.aac_fib_xporthdr** %7, align 8
  %297 = getelementptr inbounds %struct.aac_fib_xporthdr, %struct.aac_fib_xporthdr* %296, i32 0, i32 1
  store i8* %295, i8** %297, align 8
  %298 = load %struct.fib*, %struct.fib** %2, align 8
  %299 = getelementptr inbounds %struct.fib, %struct.fib* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = sub nsw i32 %300, 24
  store i32 %301, i32* %6, align 4
  br label %302

302:                                              ; preds = %254, %215
  %303 = load i32, i32* %5, align 4
  %304 = icmp sgt i32 %303, 31
  br i1 %304, label %305, label %306

305:                                              ; preds = %302
  store i32 31, i32* %5, align 4
  br label %306

306:                                              ; preds = %305, %302
  %307 = load i32, i32* %5, align 4
  %308 = load i32, i32* %6, align 4
  %309 = or i32 %308, %307
  store i32 %309, i32* %6, align 4
  %310 = load %struct.fib*, %struct.fib** %2, align 8
  %311 = getelementptr inbounds %struct.fib, %struct.fib* %310, i32 0, i32 4
  %312 = load %struct.aac_dev*, %struct.aac_dev** %311, align 8
  %313 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %312, i32 0, i32 2
  %314 = load i64, i64* %9, align 8
  %315 = call i32 @spin_lock_irqsave(i32* %313, i64 %314)
  %316 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %317 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @MUnit, i32 0, i32 1), align 4
  %318 = load i32, i32* %6, align 4
  %319 = call i32 @upper_32_bits(i32 %318)
  %320 = call i32 @src_writel(%struct.aac_dev* %316, i32 %317, i32 %319)
  %321 = load %struct.aac_dev*, %struct.aac_dev** %3, align 8
  %322 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @MUnit, i32 0, i32 0), align 4
  %323 = load i32, i32* %6, align 4
  %324 = call i32 @src_writel(%struct.aac_dev* %321, i32 %322, i32 %323)
  %325 = load %struct.fib*, %struct.fib** %2, align 8
  %326 = getelementptr inbounds %struct.fib, %struct.fib* %325, i32 0, i32 4
  %327 = load %struct.aac_dev*, %struct.aac_dev** %326, align 8
  %328 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %327, i32 0, i32 2
  %329 = load i64, i64* %9, align 8
  %330 = call i32 @spin_unlock_irqrestore(i32* %328, i64 %329)
  br label %331

331:                                              ; preds = %306, %178
  ret i32 0
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @aac_get_vector(%struct.aac_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @src_writel(%struct.aac_dev*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
