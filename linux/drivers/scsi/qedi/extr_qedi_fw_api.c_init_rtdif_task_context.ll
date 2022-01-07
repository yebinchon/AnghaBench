; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_rtdif_task_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_fw_api.c_init_rtdif_task_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdif_task_context = type { i32, i32, i32, i8*, i8*, i8*, i8* }
%struct.tdif_task_context = type { i32, i32, i8*, i8*, i8*, i8*, i8* }
%struct.scsi_dif_task_params = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64 }

@ISCSI_TASK_TYPE_TARGET_WRITE = common dso_local global i32 0, align 4
@ISCSI_TASK_TYPE_INITIATOR_READ = common dso_local global i32 0, align 4
@RDIF_TASK_CONTEXT_CRC_SEED = common dso_local global i32 0, align 4
@RDIF_TASK_CONTEXT_HOST_GUARD_TYPE = common dso_local global i32 0, align 4
@RDIF_TASK_CONTEXT_PROTECTION_TYPE = common dso_local global i32 0, align 4
@RDIF_TASK_CONTEXT_INITIAL_REF_TAG_VALID = common dso_local global i32 0, align 4
@RDIF_TASK_CONTEXT_KEEP_REF_TAG_CONST = common dso_local global i32 0, align 4
@RDIF_TASK_CONTEXT_VALIDATE_APP_TAG = common dso_local global i32 0, align 4
@RDIF_TASK_CONTEXT_VALIDATE_GUARD = common dso_local global i32 0, align 4
@RDIF_TASK_CONTEXT_VALIDATE_REF_TAG = common dso_local global i32 0, align 4
@RDIF_TASK_CONTEXT_HOST_INTERFACE = common dso_local global i32 0, align 4
@RDIF_TASK_CONTEXT_NETWORK_INTERFACE = common dso_local global i32 0, align 4
@RDIF_TASK_CONTEXT_FORWARD_GUARD = common dso_local global i32 0, align 4
@RDIF_TASK_CONTEXT_FORWARD_APP_TAG = common dso_local global i32 0, align 4
@RDIF_TASK_CONTEXT_FORWARD_REF_TAG = common dso_local global i32 0, align 4
@RDIF_TASK_CONTEXT_FORWARD_APP_TAG_WITH_MASK = common dso_local global i32 0, align 4
@RDIF_TASK_CONTEXT_FORWARD_REF_TAG_WITH_MASK = common dso_local global i32 0, align 4
@RDIF_TASK_CONTEXT_INTERVAL_SIZE = common dso_local global i32 0, align 4
@RDIF_TASK_CONTEXT_REF_TAG_MASK = common dso_local global i32 0, align 4
@RDIF_TASK_CONTEXT_IGNORE_APP_TAG = common dso_local global i32 0, align 4
@ISCSI_TASK_TYPE_TARGET_READ = common dso_local global i32 0, align 4
@ISCSI_TASK_TYPE_INITIATOR_WRITE = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_CRC_SEED = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_SET_ERROR_WITH_EOP = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_FORWARD_GUARD = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_FORWARD_APP_TAG = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_FORWARD_REF_TAG = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_INTERVAL_SIZE = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_HOST_INTERFACE = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_NETWORK_INTERFACE = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_HOST_GUARD_TYPE = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_PROTECTION_TYPE = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_INITIAL_REF_TAG_VALID = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_KEEP_REF_TAG_CONST = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_VALIDATE_GUARD = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_VALIDATE_APP_TAG = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_VALIDATE_REF_TAG = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_FORWARD_APP_TAG_WITH_MASK = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_FORWARD_REF_TAG_WITH_MASK = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_REF_TAG_MASK = common dso_local global i32 0, align 4
@TDIF_TASK_CONTEXT_IGNORE_APP_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rdif_task_context*, %struct.tdif_task_context*, %struct.scsi_dif_task_params*, i32)* @init_rtdif_task_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_rtdif_task_context(%struct.rdif_task_context* %0, %struct.tdif_task_context* %1, %struct.scsi_dif_task_params* %2, i32 %3) #0 {
  %5 = alloca %struct.rdif_task_context*, align 8
  %6 = alloca %struct.tdif_task_context*, align 8
  %7 = alloca %struct.scsi_dif_task_params*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.rdif_task_context* %0, %struct.rdif_task_context** %5, align 8
  store %struct.tdif_task_context* %1, %struct.tdif_task_context** %6, align 8
  store %struct.scsi_dif_task_params* %2, %struct.scsi_dif_task_params** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %11 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %10, i32 0, i32 16
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %16 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %15, i32 0, i32 9
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %14, %4
  br label %515

20:                                               ; preds = %14
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @ISCSI_TASK_TYPE_TARGET_WRITE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @ISCSI_TASK_TYPE_INITIATOR_READ, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %250

28:                                               ; preds = %24, %20
  %29 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %30 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %34 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  %35 = call i8* @cpu_to_le16(i32 65535)
  %36 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %37 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %36, i32 0, i32 5
  store i8* %35, i8** %37, align 8
  %38 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %39 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %38, i32 0, i32 15
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @cpu_to_le32(i32 %40)
  store i8* %41, i8** %9, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %44 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %43, i32 0, i32 4
  store i8* %42, i8** %44, align 8
  %45 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %46 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i8* @cpu_to_le16(i32 %47)
  %49 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %50 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %49, i32 0, i32 3
  store i8* %48, i8** %50, align 8
  %51 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %52 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @RDIF_TASK_CONTEXT_CRC_SEED, align 4
  %55 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %56 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %55, i32 0, i32 21
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 0
  %61 = call i32 @SET_FIELD(i32 %53, i32 %54, i32 %60)
  %62 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %63 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @RDIF_TASK_CONTEXT_HOST_GUARD_TYPE, align 4
  %66 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %67 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @SET_FIELD(i32 %64, i32 %65, i32 %68)
  %70 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %71 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @RDIF_TASK_CONTEXT_PROTECTION_TYPE, align 4
  %74 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %75 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @SET_FIELD(i32 %72, i32 %73, i32 %76)
  %78 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %79 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @RDIF_TASK_CONTEXT_INITIAL_REF_TAG_VALID, align 4
  %82 = call i32 @SET_FIELD(i32 %80, i32 %81, i32 1)
  %83 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %84 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @RDIF_TASK_CONTEXT_KEEP_REF_TAG_CONST, align 4
  %87 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %88 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %87, i32 0, i32 13
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 0
  %93 = call i32 @SET_FIELD(i32 %85, i32 %86, i32 %92)
  %94 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %95 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @RDIF_TASK_CONTEXT_VALIDATE_APP_TAG, align 4
  %98 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %99 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %98, i32 0, i32 11
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %28
  %103 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %104 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %103, i32 0, i32 16
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br label %107

107:                                              ; preds = %102, %28
  %108 = phi i1 [ false, %28 ], [ %106, %102 ]
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i32 1, i32 0
  %111 = call i32 @SET_FIELD(i32 %96, i32 %97, i32 %110)
  %112 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %113 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @RDIF_TASK_CONTEXT_VALIDATE_GUARD, align 4
  %116 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %117 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %116, i32 0, i32 12
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %107
  %121 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %122 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %121, i32 0, i32 16
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br label %125

125:                                              ; preds = %120, %107
  %126 = phi i1 [ false, %107 ], [ %124, %120 ]
  %127 = zext i1 %126 to i64
  %128 = select i1 %126, i32 1, i32 0
  %129 = call i32 @SET_FIELD(i32 %114, i32 %115, i32 %128)
  %130 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %131 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @RDIF_TASK_CONTEXT_VALIDATE_REF_TAG, align 4
  %134 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %135 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %134, i32 0, i32 10
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %125
  %139 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %140 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %139, i32 0, i32 16
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br label %143

143:                                              ; preds = %138, %125
  %144 = phi i1 [ false, %125 ], [ %142, %138 ]
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 1, i32 0
  %147 = call i32 @SET_FIELD(i32 %132, i32 %133, i32 %146)
  %148 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %149 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @RDIF_TASK_CONTEXT_HOST_INTERFACE, align 4
  %152 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %153 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %152, i32 0, i32 9
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 1, i32 0
  %158 = call i32 @SET_FIELD(i32 %150, i32 %151, i32 %157)
  %159 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %160 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @RDIF_TASK_CONTEXT_NETWORK_INTERFACE, align 4
  %163 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %164 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %163, i32 0, i32 16
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  %167 = zext i1 %166 to i64
  %168 = select i1 %166, i32 1, i32 0
  %169 = call i32 @SET_FIELD(i32 %161, i32 %162, i32 %168)
  %170 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %171 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @RDIF_TASK_CONTEXT_FORWARD_GUARD, align 4
  %174 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %175 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %174, i32 0, i32 19
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  %178 = zext i1 %177 to i64
  %179 = select i1 %177, i32 1, i32 0
  %180 = call i32 @SET_FIELD(i32 %172, i32 %173, i32 %179)
  %181 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %182 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @RDIF_TASK_CONTEXT_FORWARD_APP_TAG, align 4
  %185 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %186 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %185, i32 0, i32 18
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  %189 = zext i1 %188 to i64
  %190 = select i1 %188, i32 1, i32 0
  %191 = call i32 @SET_FIELD(i32 %183, i32 %184, i32 %190)
  %192 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %193 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @RDIF_TASK_CONTEXT_FORWARD_REF_TAG, align 4
  %196 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %197 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %196, i32 0, i32 17
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i32 1, i32 0
  %202 = call i32 @SET_FIELD(i32 %194, i32 %195, i32 %201)
  %203 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %204 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* @RDIF_TASK_CONTEXT_FORWARD_APP_TAG_WITH_MASK, align 4
  %207 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %208 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %207, i32 0, i32 8
  %209 = load i64, i64* %208, align 8
  %210 = icmp ne i64 %209, 0
  %211 = zext i1 %210 to i64
  %212 = select i1 %210, i32 1, i32 0
  %213 = call i32 @SET_FIELD(i32 %205, i32 %206, i32 %212)
  %214 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %215 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = load i32, i32* @RDIF_TASK_CONTEXT_FORWARD_REF_TAG_WITH_MASK, align 4
  %218 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %219 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %218, i32 0, i32 7
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  %222 = zext i1 %221 to i64
  %223 = select i1 %221, i32 1, i32 0
  %224 = call i32 @SET_FIELD(i32 %216, i32 %217, i32 %223)
  %225 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %226 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @RDIF_TASK_CONTEXT_INTERVAL_SIZE, align 4
  %229 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %230 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = sub nsw i32 %231, 9
  %233 = call i32 @SET_FIELD(i32 %227, i32 %228, i32 %232)
  %234 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %235 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @RDIF_TASK_CONTEXT_REF_TAG_MASK, align 4
  %238 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %239 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %238, i32 0, i32 5
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @SET_FIELD(i32 %236, i32 %237, i32 %240)
  %242 = load %struct.rdif_task_context*, %struct.rdif_task_context** %5, align 8
  %243 = getelementptr inbounds %struct.rdif_task_context, %struct.rdif_task_context* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @RDIF_TASK_CONTEXT_IGNORE_APP_TAG, align 4
  %246 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %247 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %246, i32 0, i32 6
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @SET_FIELD(i32 %244, i32 %245, i32 %248)
  br label %250

250:                                              ; preds = %143, %24
  %251 = load i32, i32* %8, align 4
  %252 = load i32, i32* @ISCSI_TASK_TYPE_TARGET_READ, align 4
  %253 = icmp eq i32 %251, %252
  br i1 %253, label %258, label %254

254:                                              ; preds = %250
  %255 = load i32, i32* %8, align 4
  %256 = load i32, i32* @ISCSI_TASK_TYPE_INITIATOR_WRITE, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %515

258:                                              ; preds = %254, %250
  %259 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %260 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = call i8* @cpu_to_le16(i32 %261)
  %263 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %264 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %263, i32 0, i32 6
  store i8* %262, i8** %264, align 8
  %265 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %266 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %265, i32 0, i32 21
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  %269 = zext i1 %268 to i64
  %270 = select i1 %268, i32 65535, i32 0
  %271 = call i8* @cpu_to_le16(i32 %270)
  %272 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %273 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %272, i32 0, i32 5
  store i8* %271, i8** %273, align 8
  %274 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %275 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %274, i32 0, i32 21
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  %278 = zext i1 %277 to i64
  %279 = select i1 %277, i32 65535, i32 0
  %280 = call i8* @cpu_to_le16(i32 %279)
  %281 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %282 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %281, i32 0, i32 4
  store i8* %280, i8** %282, align 8
  %283 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %284 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @TDIF_TASK_CONTEXT_CRC_SEED, align 4
  %287 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %288 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %287, i32 0, i32 21
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  %291 = zext i1 %290 to i64
  %292 = select i1 %290, i32 1, i32 0
  %293 = call i32 @SET_FIELD(i32 %285, i32 %286, i32 %292)
  %294 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %295 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @TDIF_TASK_CONTEXT_SET_ERROR_WITH_EOP, align 4
  %298 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %299 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %298, i32 0, i32 20
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  %302 = zext i1 %301 to i64
  %303 = select i1 %301, i32 1, i32 0
  %304 = call i32 @SET_FIELD(i32 %296, i32 %297, i32 %303)
  %305 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %306 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %305, i32 0, i32 1
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* @TDIF_TASK_CONTEXT_FORWARD_GUARD, align 4
  %309 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %310 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %309, i32 0, i32 19
  %311 = load i64, i64* %310, align 8
  %312 = icmp ne i64 %311, 0
  %313 = zext i1 %312 to i64
  %314 = select i1 %312, i32 1, i32 0
  %315 = call i32 @SET_FIELD(i32 %307, i32 %308, i32 %314)
  %316 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %317 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load i32, i32* @TDIF_TASK_CONTEXT_FORWARD_APP_TAG, align 4
  %320 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %321 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %320, i32 0, i32 18
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  %324 = zext i1 %323 to i64
  %325 = select i1 %323, i32 1, i32 0
  %326 = call i32 @SET_FIELD(i32 %318, i32 %319, i32 %325)
  %327 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %328 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @TDIF_TASK_CONTEXT_FORWARD_REF_TAG, align 4
  %331 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %332 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %331, i32 0, i32 17
  %333 = load i64, i64* %332, align 8
  %334 = icmp ne i64 %333, 0
  %335 = zext i1 %334 to i64
  %336 = select i1 %334, i32 1, i32 0
  %337 = call i32 @SET_FIELD(i32 %329, i32 %330, i32 %336)
  %338 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %339 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @TDIF_TASK_CONTEXT_INTERVAL_SIZE, align 4
  %342 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %343 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 8
  %345 = sub nsw i32 %344, 9
  %346 = call i32 @SET_FIELD(i32 %340, i32 %341, i32 %345)
  %347 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %348 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* @TDIF_TASK_CONTEXT_HOST_INTERFACE, align 4
  %351 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %352 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %351, i32 0, i32 9
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  %355 = zext i1 %354 to i64
  %356 = select i1 %354, i32 1, i32 0
  %357 = call i32 @SET_FIELD(i32 %349, i32 %350, i32 %356)
  %358 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %359 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @TDIF_TASK_CONTEXT_NETWORK_INTERFACE, align 4
  %362 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %363 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %362, i32 0, i32 16
  %364 = load i64, i64* %363, align 8
  %365 = icmp ne i64 %364, 0
  %366 = zext i1 %365 to i64
  %367 = select i1 %365, i32 1, i32 0
  %368 = call i32 @SET_FIELD(i32 %360, i32 %361, i32 %367)
  %369 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %370 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %369, i32 0, i32 15
  %371 = load i32, i32* %370, align 8
  %372 = call i8* @cpu_to_le32(i32 %371)
  store i8* %372, i8** %9, align 8
  %373 = load i8*, i8** %9, align 8
  %374 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %375 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %374, i32 0, i32 3
  store i8* %373, i8** %375, align 8
  %376 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %377 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %376, i32 0, i32 1
  %378 = load i32, i32* %377, align 4
  %379 = call i8* @cpu_to_le16(i32 %378)
  %380 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %381 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %380, i32 0, i32 2
  store i8* %379, i8** %381, align 8
  %382 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %383 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load i32, i32* @TDIF_TASK_CONTEXT_HOST_GUARD_TYPE, align 4
  %386 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %387 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = call i32 @SET_FIELD(i32 %384, i32 %385, i32 %388)
  %390 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %391 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %390, i32 0, i32 0
  %392 = load i32, i32* %391, align 8
  %393 = load i32, i32* @TDIF_TASK_CONTEXT_PROTECTION_TYPE, align 4
  %394 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %395 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %394, i32 0, i32 3
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @SET_FIELD(i32 %392, i32 %393, i32 %396)
  %398 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %399 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* @TDIF_TASK_CONTEXT_INITIAL_REF_TAG_VALID, align 4
  %402 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %403 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %402, i32 0, i32 14
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  %406 = zext i1 %405 to i64
  %407 = select i1 %405, i32 1, i32 0
  %408 = call i32 @SET_FIELD(i32 %400, i32 %401, i32 %407)
  %409 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %410 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %409, i32 0, i32 0
  %411 = load i32, i32* %410, align 8
  %412 = load i32, i32* @TDIF_TASK_CONTEXT_KEEP_REF_TAG_CONST, align 4
  %413 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %414 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %413, i32 0, i32 13
  %415 = load i64, i64* %414, align 8
  %416 = icmp ne i64 %415, 0
  %417 = zext i1 %416 to i64
  %418 = select i1 %416, i32 1, i32 0
  %419 = call i32 @SET_FIELD(i32 %411, i32 %412, i32 %418)
  %420 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %421 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = load i32, i32* @TDIF_TASK_CONTEXT_VALIDATE_GUARD, align 4
  %424 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %425 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %424, i32 0, i32 12
  %426 = load i64, i64* %425, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %433

428:                                              ; preds = %258
  %429 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %430 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %429, i32 0, i32 9
  %431 = load i64, i64* %430, align 8
  %432 = icmp ne i64 %431, 0
  br label %433

433:                                              ; preds = %428, %258
  %434 = phi i1 [ false, %258 ], [ %432, %428 ]
  %435 = zext i1 %434 to i64
  %436 = select i1 %434, i32 1, i32 0
  %437 = call i32 @SET_FIELD(i32 %422, i32 %423, i32 %436)
  %438 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %439 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  %441 = load i32, i32* @TDIF_TASK_CONTEXT_VALIDATE_APP_TAG, align 4
  %442 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %443 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %442, i32 0, i32 11
  %444 = load i64, i64* %443, align 8
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %451

446:                                              ; preds = %433
  %447 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %448 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %447, i32 0, i32 9
  %449 = load i64, i64* %448, align 8
  %450 = icmp ne i64 %449, 0
  br label %451

451:                                              ; preds = %446, %433
  %452 = phi i1 [ false, %433 ], [ %450, %446 ]
  %453 = zext i1 %452 to i64
  %454 = select i1 %452, i32 1, i32 0
  %455 = call i32 @SET_FIELD(i32 %440, i32 %441, i32 %454)
  %456 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %457 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %456, i32 0, i32 1
  %458 = load i32, i32* %457, align 4
  %459 = load i32, i32* @TDIF_TASK_CONTEXT_VALIDATE_REF_TAG, align 4
  %460 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %461 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %460, i32 0, i32 10
  %462 = load i64, i64* %461, align 8
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %469

464:                                              ; preds = %451
  %465 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %466 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %465, i32 0, i32 9
  %467 = load i64, i64* %466, align 8
  %468 = icmp ne i64 %467, 0
  br label %469

469:                                              ; preds = %464, %451
  %470 = phi i1 [ false, %451 ], [ %468, %464 ]
  %471 = zext i1 %470 to i64
  %472 = select i1 %470, i32 1, i32 0
  %473 = call i32 @SET_FIELD(i32 %458, i32 %459, i32 %472)
  %474 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %475 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %474, i32 0, i32 1
  %476 = load i32, i32* %475, align 4
  %477 = load i32, i32* @TDIF_TASK_CONTEXT_FORWARD_APP_TAG_WITH_MASK, align 4
  %478 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %479 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %478, i32 0, i32 8
  %480 = load i64, i64* %479, align 8
  %481 = icmp ne i64 %480, 0
  %482 = zext i1 %481 to i64
  %483 = select i1 %481, i32 1, i32 0
  %484 = call i32 @SET_FIELD(i32 %476, i32 %477, i32 %483)
  %485 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %486 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %485, i32 0, i32 1
  %487 = load i32, i32* %486, align 4
  %488 = load i32, i32* @TDIF_TASK_CONTEXT_FORWARD_REF_TAG_WITH_MASK, align 4
  %489 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %490 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %489, i32 0, i32 7
  %491 = load i64, i64* %490, align 8
  %492 = icmp ne i64 %491, 0
  %493 = zext i1 %492 to i64
  %494 = select i1 %492, i32 1, i32 0
  %495 = call i32 @SET_FIELD(i32 %487, i32 %488, i32 %494)
  %496 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %497 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %496, i32 0, i32 1
  %498 = load i32, i32* %497, align 4
  %499 = load i32, i32* @TDIF_TASK_CONTEXT_REF_TAG_MASK, align 4
  %500 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %501 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %500, i32 0, i32 5
  %502 = load i32, i32* %501, align 4
  %503 = call i32 @SET_FIELD(i32 %498, i32 %499, i32 %502)
  %504 = load %struct.tdif_task_context*, %struct.tdif_task_context** %6, align 8
  %505 = getelementptr inbounds %struct.tdif_task_context, %struct.tdif_task_context* %504, i32 0, i32 0
  %506 = load i32, i32* %505, align 8
  %507 = load i32, i32* @TDIF_TASK_CONTEXT_IGNORE_APP_TAG, align 4
  %508 = load %struct.scsi_dif_task_params*, %struct.scsi_dif_task_params** %7, align 8
  %509 = getelementptr inbounds %struct.scsi_dif_task_params, %struct.scsi_dif_task_params* %508, i32 0, i32 6
  %510 = load i32, i32* %509, align 8
  %511 = icmp ne i32 %510, 0
  %512 = zext i1 %511 to i64
  %513 = select i1 %511, i32 1, i32 0
  %514 = call i32 @SET_FIELD(i32 %506, i32 %507, i32 %513)
  br label %515

515:                                              ; preds = %19, %469, %254
  ret void
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @SET_FIELD(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
