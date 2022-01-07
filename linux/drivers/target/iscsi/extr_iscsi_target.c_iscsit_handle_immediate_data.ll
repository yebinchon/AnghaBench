; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_handle_immediate_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_handle_immediate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, i32, i32*, i32, i32, i32, %struct.TYPE_8__, %struct.kvec*, i8*, %struct.iscsi_conn* }
%struct.TYPE_8__ = type { i64 }
%struct.kvec = type { i32*, i32 }
%struct.iscsi_conn = type { %struct.TYPE_7__*, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.iscsi_scsi_req = type { i32 }

@IMMEDIATE_DATA_CANNOT_RECOVER = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ISCSI_CRC_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"ImmediateData CRC32C DataDigest 0x%08x does not match computed 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"Unable to recover from Immediate Data digest failure while in ERL=0.\0A\00", align 1
@ISCSI_REASON_DATA_DIGEST_ERROR = common dso_local global i32 0, align 4
@IMMEDIATE_DATA_ERL1_CRC_FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"Got CRC32C DataDigest 0x%08x for %u bytes of Immediate Data\0A\00", align 1
@ICF_GOT_LAST_DATAOUT = common dso_local global i32 0, align 4
@ISTATE_RECEIVED_LAST_DATAOUT = common dso_local global i32 0, align 4
@IMMEDIATE_DATA_NORMAL_OPERATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, %struct.iscsi_scsi_req*, i32)* @iscsit_handle_immediate_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_handle_immediate_data(%struct.iscsi_cmd* %0, %struct.iscsi_scsi_req* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca %struct.iscsi_scsi_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.iscsi_conn*, align 8
  %15 = alloca %struct.kvec*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %5, align 8
  store %struct.iscsi_scsi_req* %1, %struct.iscsi_scsi_req** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %18, i32 0, i32 9
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %19, align 8
  store %struct.iscsi_conn* %20, %struct.iscsi_conn** %14, align 8
  store i8* null, i8** %16, align 8
  %21 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %22 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %25 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %23, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @BUG_ON(i32 %29)
  %31 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @min(i64 %38, i32 %39)
  store i32 %40, i32* %10, align 4
  %41 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %42 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %43 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %42, i32 0, i32 7
  %44 = load %struct.kvec*, %struct.kvec** %43, align 8
  %45 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %46 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sub nsw i32 %47, 2
  %49 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %50 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @iscsit_map_iovec(%struct.iscsi_cmd* %41, %struct.kvec* %44, i32 %48, i64 %51, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %3
  %57 = load i32, i32* @IMMEDIATE_DATA_CANNOT_RECOVER, align 4
  store i32 %57, i32* %4, align 4
  br label %262

58:                                               ; preds = %3
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %12, align 4
  %60 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %61 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %60, i32 0, i32 7
  %62 = load %struct.kvec*, %struct.kvec** %61, align 8
  %63 = getelementptr inbounds %struct.kvec, %struct.kvec* %62, i64 0
  store %struct.kvec* %63, %struct.kvec** %15, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* %7, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %101

67:                                               ; preds = %58
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %10, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i8* @kmalloc(i32 %70, i32 %71)
  store i8* %72, i8** %16, align 8
  %73 = load i8*, i8** %16, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %79, label %75

75:                                               ; preds = %67
  %76 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %77 = call i32 @iscsit_unmap_iovec(%struct.iscsi_cmd* %76)
  %78 = load i32, i32* @IMMEDIATE_DATA_CANNOT_RECOVER, align 4
  store i32 %78, i32* %4, align 4
  br label %262

79:                                               ; preds = %67
  %80 = load i8*, i8** %16, align 8
  %81 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %82 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %81, i32 0, i32 8
  store i8* %80, i8** %82, align 8
  %83 = load i8*, i8** %16, align 8
  %84 = bitcast i8* %83 to i32*
  %85 = load %struct.kvec*, %struct.kvec** %15, align 8
  %86 = load i32, i32* %12, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.kvec, %struct.kvec* %85, i64 %87
  %89 = getelementptr inbounds %struct.kvec, %struct.kvec* %88, i32 0, i32 0
  store i32* %84, i32** %89, align 8
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load %struct.kvec*, %struct.kvec** %15, align 8
  %94 = load i32, i32* %12, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.kvec, %struct.kvec* %93, i64 %95
  %97 = getelementptr inbounds %struct.kvec, %struct.kvec* %96, i32 0, i32 1
  store i32 %92, i32* %97, align 8
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %79, %58
  %102 = load i32, i32* %7, align 4
  %103 = sub nsw i32 0, %102
  %104 = and i32 %103, 3
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %126

107:                                              ; preds = %101
  %108 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %109 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load %struct.kvec*, %struct.kvec** %15, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.kvec, %struct.kvec* %111, i64 %113
  %115 = getelementptr inbounds %struct.kvec, %struct.kvec* %114, i32 0, i32 0
  store i32* %110, i32** %115, align 8
  %116 = load i32, i32* %13, align 4
  %117 = load %struct.kvec*, %struct.kvec** %15, align 8
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %12, align 4
  %120 = sext i32 %118 to i64
  %121 = getelementptr inbounds %struct.kvec, %struct.kvec* %117, i64 %120
  %122 = getelementptr inbounds %struct.kvec, %struct.kvec* %121, i32 0, i32 1
  store i32 %116, i32* %122, align 8
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %107, %101
  %127 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  %128 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %127, i32 0, i32 2
  %129 = load %struct.TYPE_5__*, %struct.TYPE_5__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %126
  %134 = load %struct.kvec*, %struct.kvec** %15, align 8
  %135 = load i32, i32* %12, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.kvec, %struct.kvec* %134, i64 %136
  %138 = getelementptr inbounds %struct.kvec, %struct.kvec* %137, i32 0, i32 0
  store i32* %11, i32** %138, align 8
  %139 = load i32, i32* @ISCSI_CRC_LEN, align 4
  %140 = load %struct.kvec*, %struct.kvec** %15, align 8
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds %struct.kvec, %struct.kvec* %140, i64 %143
  %145 = getelementptr inbounds %struct.kvec, %struct.kvec* %144, i32 0, i32 1
  store i32 %139, i32* %145, align 8
  %146 = load i32, i32* @ISCSI_CRC_LEN, align 4
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %10, align 4
  br label %149

149:                                              ; preds = %133, %126
  %150 = load i32, i32* %12, align 4
  %151 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %152 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = icmp sgt i32 %150, %153
  %155 = zext i1 %154 to i32
  %156 = call i32 @WARN_ON_ONCE(i32 %155)
  %157 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  %158 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %159 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %158, i32 0, i32 7
  %160 = load %struct.kvec*, %struct.kvec** %159, align 8
  %161 = getelementptr inbounds %struct.kvec, %struct.kvec* %160, i64 0
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @rx_data(%struct.iscsi_conn* %157, %struct.kvec* %161, i32 %162, i32 %163)
  store i32 %164, i32* %9, align 4
  %165 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %166 = call i32 @iscsit_unmap_iovec(%struct.iscsi_cmd* %165)
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %174

170:                                              ; preds = %149
  %171 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  %172 = call i32 @iscsit_rx_thread_wait_for_tcp(%struct.iscsi_conn* %171)
  %173 = load i32, i32* @IMMEDIATE_DATA_CANNOT_RECOVER, align 4
  store i32 %173, i32* %4, align 4
  br label %262

174:                                              ; preds = %149
  %175 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  %176 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %175, i32 0, i32 2
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %230

181:                                              ; preds = %174
  %182 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  %183 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %186 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %187 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* %7, align 4
  %190 = load i32, i32* %13, align 4
  %191 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %192 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = call i32 @iscsit_do_crypto_hash_sg(i32 %184, %struct.iscsi_cmd* %185, i64 %188, i32 %189, i32 %190, i32* %193)
  store i32 %194, i32* %17, align 4
  %195 = load i32, i32* %11, align 4
  %196 = load i32, i32* %17, align 4
  %197 = icmp ne i32 %195, %196
  br i1 %197, label %198, label %225

198:                                              ; preds = %181
  %199 = load i32, i32* %11, align 4
  %200 = load i32, i32* %17, align 4
  %201 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %199, i32 %200)
  %202 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  %203 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %202, i32 0, i32 0
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %218, label %210

210:                                              ; preds = %198
  %211 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %212 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %213 = load i32, i32* @ISCSI_REASON_DATA_DIGEST_ERROR, align 4
  %214 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %6, align 8
  %215 = bitcast %struct.iscsi_scsi_req* %214 to i8*
  %216 = call i32 @iscsit_reject_cmd(%struct.iscsi_cmd* %212, i32 %213, i8* %215)
  %217 = load i32, i32* @IMMEDIATE_DATA_CANNOT_RECOVER, align 4
  store i32 %217, i32* %4, align 4
  br label %262

218:                                              ; preds = %198
  %219 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %220 = load i32, i32* @ISCSI_REASON_DATA_DIGEST_ERROR, align 4
  %221 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %6, align 8
  %222 = bitcast %struct.iscsi_scsi_req* %221 to i8*
  %223 = call i32 @iscsit_reject_cmd(%struct.iscsi_cmd* %219, i32 %220, i8* %222)
  %224 = load i32, i32* @IMMEDIATE_DATA_ERL1_CRC_FAILURE, align 4
  store i32 %224, i32* %4, align 4
  br label %262

225:                                              ; preds = %181
  %226 = load i32, i32* %11, align 4
  %227 = load i32, i32* %7, align 4
  %228 = call i32 @pr_debug(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %226, i32 %227)
  br label %229

229:                                              ; preds = %225
  br label %230

230:                                              ; preds = %229, %174
  %231 = load i32, i32* %7, align 4
  %232 = sext i32 %231 to i64
  %233 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %234 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = add nsw i64 %235, %232
  store i64 %236, i64* %234, align 8
  %237 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %238 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %241 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %240, i32 0, i32 6
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = icmp eq i64 %239, %243
  br i1 %244, label %245, label %260

245:                                              ; preds = %230
  %246 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %247 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %246, i32 0, i32 3
  %248 = call i32 @spin_lock_bh(i32* %247)
  %249 = load i32, i32* @ICF_GOT_LAST_DATAOUT, align 4
  %250 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %251 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %250, i32 0, i32 5
  %252 = load i32, i32* %251, align 8
  %253 = or i32 %252, %249
  store i32 %253, i32* %251, align 8
  %254 = load i32, i32* @ISTATE_RECEIVED_LAST_DATAOUT, align 4
  %255 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %256 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %255, i32 0, i32 4
  store i32 %254, i32* %256, align 4
  %257 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %258 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %257, i32 0, i32 3
  %259 = call i32 @spin_unlock_bh(i32* %258)
  br label %260

260:                                              ; preds = %245, %230
  %261 = load i32, i32* @IMMEDIATE_DATA_NORMAL_OPERATION, align 4
  store i32 %261, i32* %4, align 4
  br label %262

262:                                              ; preds = %260, %218, %210, %170, %75, %56
  %263 = load i32, i32* %4, align 4
  ret i32 %263
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @min(i64, i32) #1

declare dso_local i32 @iscsit_map_iovec(%struct.iscsi_cmd*, %struct.kvec*, i32, i64, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @iscsit_unmap_iovec(%struct.iscsi_cmd*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rx_data(%struct.iscsi_conn*, %struct.kvec*, i32, i32) #1

declare dso_local i32 @iscsit_rx_thread_wait_for_tcp(%struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_do_crypto_hash_sg(i32, %struct.iscsi_cmd*, i64, i32, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @iscsit_reject_cmd(%struct.iscsi_cmd*, i32, i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
