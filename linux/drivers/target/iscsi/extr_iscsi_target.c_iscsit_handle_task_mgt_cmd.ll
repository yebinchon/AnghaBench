; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_handle_task_mgt_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_handle_task_mgt_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.iscsi_cmd = type { i32, i32, %struct.TYPE_9__, i32, i32, %struct.iscsi_tmr_req*, i64, i64, i32, i32, i64, i32 }
%struct.TYPE_9__ = type { %struct.se_tmr_req* }
%struct.se_tmr_req = type { i64, i32 }
%struct.iscsi_tmr_req = type { %struct.se_tmr_req* }
%struct.iscsi_tm = type { i64, i64, i32, i32, i32, i32, i32, i32 }

@TMR_UNKNOWN = common dso_local global i64 0, align 8
@ISCSI_FLAG_CMD_FINAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [122 x i8] c"Got Task Management Request ITT: 0x%08x, CmdSN: 0x%08x, Function: 0x%02x, RefTaskTag: 0x%08x, RefCmdSN: 0x%08x, CID: %hu\0A\00", align 1
@RESERVED_ITT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"RefTaskTag should be set to 0xFFFFFFFF.\0A\00", align 1
@ISCSI_OP_IMMEDIATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [106 x i8] c"Task Management Request TASK_REASSIGN not issued as immediate command, bad iSCSI Initiatorimplementation\0A\00", align 1
@ISCSI_REASON_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@ISCSI_RESERVED_TAG = common dso_local global i64 0, align 8
@DMA_NONE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ISCSI_REASON_BOOKMARK_NO_RESOURCES = common dso_local global i32 0, align 4
@iscsi_ops = common dso_local global i32 0, align 4
@TCM_SIMPLE_TAG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Unknown iSCSI TMR Function: 0x%02x\0A\00", align 1
@ISCSI_OP_SCSI_TMFUNC = common dso_local global i32 0, align 4
@ISTATE_SEND_TASKMGTRSP = common dso_local global i32 0, align 4
@ISCSI_TMF_RSP_NO_LUN = common dso_local global i64 0, align 8
@ISCSI_TMF_RSP_AUTH_FAILED = common dso_local global i8* null, align 8
@ISCSI_REASON_BOOKMARK_INVALID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Unknown TMR function: 0x%02x, protocol error.\0A\00", align 1
@ISCSI_TMF_RSP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@ISCSI_TMF_RSP_COMPLETE = common dso_local global i64 0, align 8
@CMDSN_HIGHER_THAN_EXP = common dso_local global i32 0, align 4
@CMDSN_LOWER_THAN_EXP = common dso_local global i32 0, align 4
@CMDSN_ERROR_CANNOT_RECOVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_handle_task_mgt_cmd(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.se_tmr_req*, align 8
  %9 = alloca %struct.iscsi_tmr_req*, align 8
  %10 = alloca %struct.iscsi_tm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %11, align 4
  %16 = load i64, i64* @TMR_UNKNOWN, align 8
  store i64 %16, i64* %14, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.iscsi_tm*
  store %struct.iscsi_tm* %18, %struct.iscsi_tm** %10, align 8
  %19 = load i64, i64* @ISCSI_FLAG_CMD_FINAL, align 8
  %20 = xor i64 %19, -1
  %21 = load %struct.iscsi_tm*, %struct.iscsi_tm** %10, align 8
  %22 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = and i64 %23, %20
  store i64 %24, i64* %22, align 8
  %25 = load %struct.iscsi_tm*, %struct.iscsi_tm** %10, align 8
  %26 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %13, align 8
  %28 = load %struct.iscsi_tm*, %struct.iscsi_tm** %10, align 8
  %29 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.iscsi_tm*, %struct.iscsi_tm** %10, align 8
  %32 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load i64, i64* %13, align 8
  %35 = load %struct.iscsi_tm*, %struct.iscsi_tm** %10, align 8
  %36 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.iscsi_tm*, %struct.iscsi_tm** %10, align 8
  %39 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %42 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @pr_debug(i8* getelementptr inbounds ([122 x i8], [122 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %33, i64 %34, i64 %37, i32 %40, i32 %43)
  %45 = load i64, i64* %13, align 8
  %46 = icmp ne i64 %45, 135
  br i1 %46, label %47, label %61

47:                                               ; preds = %3
  %48 = load i64, i64* %13, align 8
  %49 = icmp ne i64 %48, 128
  br i1 %49, label %50, label %61

50:                                               ; preds = %47
  %51 = load %struct.iscsi_tm*, %struct.iscsi_tm** %10, align 8
  %52 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @RESERVED_ITT, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i64, i64* @RESERVED_ITT, align 8
  %59 = load %struct.iscsi_tm*, %struct.iscsi_tm** %10, align 8
  %60 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  br label %61

61:                                               ; preds = %56, %50, %47, %3
  %62 = load i64, i64* %13, align 8
  %63 = icmp eq i64 %62, 128
  br i1 %63, label %64, label %77

64:                                               ; preds = %61
  %65 = load %struct.iscsi_tm*, %struct.iscsi_tm** %10, align 8
  %66 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ISCSI_OP_IMMEDIATE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %64
  %72 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %74 = load i32, i32* @ISCSI_REASON_PROTOCOL_ERROR, align 4
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @iscsit_add_reject_cmd(%struct.iscsi_cmd* %73, i32 %74, i8* %75)
  store i32 %76, i32* %4, align 4
  br label %388

77:                                               ; preds = %64, %61
  %78 = load i64, i64* %13, align 8
  %79 = icmp ne i64 %78, 135
  br i1 %79, label %80, label %92

80:                                               ; preds = %77
  %81 = load %struct.iscsi_tm*, %struct.iscsi_tm** %10, align 8
  %82 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @be32_to_cpu(i32 %83)
  %85 = load i64, i64* @ISCSI_RESERVED_TAG, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load i64, i64* @ISCSI_RESERVED_TAG, align 8
  %89 = call i32 @cpu_to_be32(i64 %88)
  %90 = load %struct.iscsi_tm*, %struct.iscsi_tm** %10, align 8
  %91 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %90, i32 0, i32 7
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %87, %80, %77
  %93 = load i32, i32* @DMA_NONE, align 4
  %94 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %95 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %94, i32 0, i32 11
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call %struct.iscsi_tmr_req* @kzalloc(i32 8, i32 %96)
  %98 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %99 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %98, i32 0, i32 5
  store %struct.iscsi_tmr_req* %97, %struct.iscsi_tmr_req** %99, align 8
  %100 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %101 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %100, i32 0, i32 5
  %102 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %101, align 8
  %103 = icmp ne %struct.iscsi_tmr_req* %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %92
  %105 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %106 = load i32, i32* @ISCSI_REASON_BOOKMARK_NO_RESOURCES, align 4
  %107 = load i8*, i8** %7, align 8
  %108 = call i32 @iscsit_add_reject_cmd(%struct.iscsi_cmd* %105, i32 %106, i8* %107)
  store i32 %108, i32* %4, align 4
  br label %388

109:                                              ; preds = %92
  %110 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %111 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %110, i32 0, i32 2
  %112 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %113 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %112, i32 0, i32 2
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @DMA_NONE, align 4
  %118 = load i32, i32* @TCM_SIMPLE_TAG, align 4
  %119 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %120 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %119, i32 0, i32 10
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %121, 2
  %123 = call i32 @transport_init_se_cmd(%struct.TYPE_9__* %111, i32* @iscsi_ops, i32 %116, i32 0, i32 %117, i32 %118, i64 %122)
  %124 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %125 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %124, i32 0, i32 2
  %126 = call i32 @target_get_sess_cmd(%struct.TYPE_9__* %125, i32 1)
  %127 = load i64, i64* %13, align 8
  %128 = icmp ne i64 %127, 128
  br i1 %128, label %129, label %143

129:                                              ; preds = %109
  %130 = load i64, i64* %13, align 8
  %131 = call i64 @iscsit_convert_tmf(i64 %130)
  store i64 %131, i64* %14, align 8
  %132 = load i64, i64* %14, align 8
  %133 = load i64, i64* @TMR_UNKNOWN, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = load i64, i64* %13, align 8
  %137 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %136)
  %138 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %139 = load i32, i32* @ISCSI_REASON_BOOKMARK_NO_RESOURCES, align 4
  %140 = load i8*, i8** %7, align 8
  %141 = call i32 @iscsit_add_reject_cmd(%struct.iscsi_cmd* %138, i32 %139, i8* %140)
  store i32 %141, i32* %4, align 4
  br label %388

142:                                              ; preds = %129
  br label %143

143:                                              ; preds = %142, %109
  %144 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %145 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %144, i32 0, i32 2
  %146 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %147 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %146, i32 0, i32 5
  %148 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %147, align 8
  %149 = load i64, i64* %14, align 8
  %150 = load i32, i32* @GFP_KERNEL, align 4
  %151 = call i32 @core_tmr_alloc_req(%struct.TYPE_9__* %145, %struct.iscsi_tmr_req* %148, i64 %149, i32 %150)
  store i32 %151, i32* %12, align 4
  %152 = load i32, i32* %12, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %143
  %155 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %156 = load i32, i32* @ISCSI_REASON_BOOKMARK_NO_RESOURCES, align 4
  %157 = load i8*, i8** %7, align 8
  %158 = call i32 @iscsit_add_reject_cmd(%struct.iscsi_cmd* %155, i32 %156, i8* %157)
  store i32 %158, i32* %4, align 4
  br label %388

159:                                              ; preds = %143
  %160 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %161 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %161, i32 0, i32 0
  %163 = load %struct.se_tmr_req*, %struct.se_tmr_req** %162, align 8
  %164 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %165 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %164, i32 0, i32 5
  %166 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %165, align 8
  %167 = getelementptr inbounds %struct.iscsi_tmr_req, %struct.iscsi_tmr_req* %166, i32 0, i32 0
  store %struct.se_tmr_req* %163, %struct.se_tmr_req** %167, align 8
  %168 = load i32, i32* @ISCSI_OP_SCSI_TMFUNC, align 4
  %169 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %170 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %169, i32 0, i32 9
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @ISTATE_SEND_TASKMGTRSP, align 4
  %172 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %173 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %172, i32 0, i32 3
  store i32 %171, i32* %173, align 8
  %174 = load %struct.iscsi_tm*, %struct.iscsi_tm** %10, align 8
  %175 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @ISCSI_OP_IMMEDIATE, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  %180 = zext i1 %179 to i64
  %181 = select i1 %179, i32 1, i32 0
  %182 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %183 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %182, i32 0, i32 0
  store i32 %181, i32* %183, align 8
  %184 = load %struct.iscsi_tm*, %struct.iscsi_tm** %10, align 8
  %185 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %188 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %187, i32 0, i32 8
  store i32 %186, i32* %188, align 8
  %189 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %190 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %189, i32 0, i32 1
  store i32 -1, i32* %190, align 4
  %191 = load %struct.iscsi_tm*, %struct.iscsi_tm** %10, align 8
  %192 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 8
  %194 = call i64 @be32_to_cpu(i32 %193)
  %195 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %196 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %195, i32 0, i32 7
  store i64 %194, i64* %196, align 8
  %197 = load %struct.iscsi_tm*, %struct.iscsi_tm** %10, align 8
  %198 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i64 @be32_to_cpu(i32 %199)
  %201 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %202 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %201, i32 0, i32 6
  store i64 %200, i64* %202, align 8
  %203 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %204 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load %struct.se_tmr_req*, %struct.se_tmr_req** %205, align 8
  store %struct.se_tmr_req* %206, %struct.se_tmr_req** %8, align 8
  %207 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %208 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %207, i32 0, i32 5
  %209 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %208, align 8
  store %struct.iscsi_tmr_req* %209, %struct.iscsi_tmr_req** %9, align 8
  %210 = load i64, i64* %13, align 8
  %211 = icmp ne i64 %210, 128
  br i1 %211, label %212, label %226

212:                                              ; preds = %159
  %213 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %214 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %213, i32 0, i32 2
  %215 = load %struct.iscsi_tm*, %struct.iscsi_tm** %10, align 8
  %216 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %215, i32 0, i32 5
  %217 = call i32 @scsilun_to_int(i32* %216)
  %218 = call i32 @transport_lookup_tmr_lun(%struct.TYPE_9__* %214, i32 %217)
  store i32 %218, i32* %12, align 4
  %219 = load i32, i32* %12, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %225

221:                                              ; preds = %212
  %222 = load i64, i64* @ISCSI_TMF_RSP_NO_LUN, align 8
  %223 = load %struct.se_tmr_req*, %struct.se_tmr_req** %8, align 8
  %224 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %223, i32 0, i32 0
  store i64 %222, i64* %224, align 8
  br label %306

225:                                              ; preds = %212
  br label %226

226:                                              ; preds = %225, %159
  %227 = load i64, i64* %13, align 8
  switch i64 %227, label %287 [
    i64 135, label %228
    i64 134, label %240
    i64 133, label %240
    i64 132, label %240
    i64 131, label %240
    i64 129, label %241
    i64 130, label %253
    i64 128, label %265
  ]

228:                                              ; preds = %226
  %229 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %230 = load i8*, i8** %7, align 8
  %231 = call i64 @iscsit_tmr_abort_task(%struct.iscsi_cmd* %229, i8* %230)
  %232 = load %struct.se_tmr_req*, %struct.se_tmr_req** %8, align 8
  %233 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %232, i32 0, i32 0
  store i64 %231, i64* %233, align 8
  %234 = load %struct.se_tmr_req*, %struct.se_tmr_req** %8, align 8
  %235 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %234, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %228
  br label %306

239:                                              ; preds = %228
  br label %293

240:                                              ; preds = %226, %226, %226, %226
  br label %293

241:                                              ; preds = %226
  %242 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %243 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %9, align 8
  %244 = load i8*, i8** %7, align 8
  %245 = call i32 @iscsit_tmr_task_warm_reset(%struct.iscsi_conn* %242, %struct.iscsi_tmr_req* %243, i8* %244)
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %252

247:                                              ; preds = %241
  %248 = load i8*, i8** @ISCSI_TMF_RSP_AUTH_FAILED, align 8
  %249 = ptrtoint i8* %248 to i64
  %250 = load %struct.se_tmr_req*, %struct.se_tmr_req** %8, align 8
  %251 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %250, i32 0, i32 0
  store i64 %249, i64* %251, align 8
  br label %306

252:                                              ; preds = %241
  br label %293

253:                                              ; preds = %226
  %254 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %255 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %9, align 8
  %256 = load i8*, i8** %7, align 8
  %257 = call i32 @iscsit_tmr_task_cold_reset(%struct.iscsi_conn* %254, %struct.iscsi_tmr_req* %255, i8* %256)
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %264

259:                                              ; preds = %253
  %260 = load i8*, i8** @ISCSI_TMF_RSP_AUTH_FAILED, align 8
  %261 = ptrtoint i8* %260 to i64
  %262 = load %struct.se_tmr_req*, %struct.se_tmr_req** %8, align 8
  %263 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %262, i32 0, i32 0
  store i64 %261, i64* %263, align 8
  br label %306

264:                                              ; preds = %253
  br label %293

265:                                              ; preds = %226
  %266 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %267 = load i8*, i8** %7, align 8
  %268 = call i64 @iscsit_tmr_task_reassign(%struct.iscsi_cmd* %266, i8* %267)
  %269 = load %struct.se_tmr_req*, %struct.se_tmr_req** %8, align 8
  %270 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %269, i32 0, i32 0
  store i64 %268, i64* %270, align 8
  %271 = load %struct.se_tmr_req*, %struct.se_tmr_req** %8, align 8
  %272 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %276

275:                                              ; preds = %265
  br label %293

276:                                              ; preds = %265
  %277 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %9, align 8
  %278 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %279 = call i32 @iscsit_check_task_reassign_expdatasn(%struct.iscsi_tmr_req* %277, %struct.iscsi_conn* %278)
  %280 = icmp slt i32 %279, 0
  br i1 %280, label %281, label %286

281:                                              ; preds = %276
  %282 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %283 = load i32, i32* @ISCSI_REASON_BOOKMARK_INVALID, align 4
  %284 = load i8*, i8** %7, align 8
  %285 = call i32 @iscsit_add_reject_cmd(%struct.iscsi_cmd* %282, i32 %283, i8* %284)
  store i32 %285, i32* %4, align 4
  br label %388

286:                                              ; preds = %276
  br label %293

287:                                              ; preds = %226
  %288 = load i64, i64* %13, align 8
  %289 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %288)
  %290 = load i64, i64* @ISCSI_TMF_RSP_NOT_SUPPORTED, align 8
  %291 = load %struct.se_tmr_req*, %struct.se_tmr_req** %8, align 8
  %292 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %291, i32 0, i32 0
  store i64 %290, i64* %292, align 8
  br label %306

293:                                              ; preds = %286, %275, %264, %252, %240, %239
  %294 = load i64, i64* %13, align 8
  %295 = icmp ne i64 %294, 128
  br i1 %295, label %296, label %305

296:                                              ; preds = %293
  %297 = load %struct.se_tmr_req*, %struct.se_tmr_req** %8, align 8
  %298 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @ISCSI_TMF_RSP_COMPLETE, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %305

302:                                              ; preds = %296
  %303 = load %struct.se_tmr_req*, %struct.se_tmr_req** %8, align 8
  %304 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %303, i32 0, i32 1
  store i32 1, i32* %304, align 8
  br label %305

305:                                              ; preds = %302, %296, %293
  br label %306

306:                                              ; preds = %305, %287, %259, %247, %238, %221
  %307 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %308 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %307, i32 0, i32 0
  %309 = call i32 @spin_lock_bh(i32* %308)
  %310 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %311 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %310, i32 0, i32 4
  %312 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %313 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %312, i32 0, i32 1
  %314 = call i32 @list_add_tail(i32* %311, i32* %313)
  %315 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %316 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %315, i32 0, i32 0
  %317 = call i32 @spin_unlock_bh(i32* %316)
  %318 = load %struct.iscsi_tm*, %struct.iscsi_tm** %10, align 8
  %319 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @ISCSI_OP_IMMEDIATE, align 4
  %322 = and i32 %320, %321
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %352, label %324

324:                                              ; preds = %306
  %325 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %326 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %327 = load i8*, i8** %7, align 8
  %328 = load %struct.iscsi_tm*, %struct.iscsi_tm** %10, align 8
  %329 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %328, i32 0, i32 4
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @iscsit_sequence_cmd(%struct.iscsi_conn* %325, %struct.iscsi_cmd* %326, i8* %327, i32 %330)
  store i32 %331, i32* %15, align 4
  %332 = load i32, i32* %15, align 4
  %333 = load i32, i32* @CMDSN_HIGHER_THAN_EXP, align 4
  %334 = icmp eq i32 %332, %333
  br i1 %334, label %335, label %336

335:                                              ; preds = %324
  store i32 1, i32* %11, align 4
  br label %351

336:                                              ; preds = %324
  %337 = load i32, i32* %15, align 4
  %338 = load i32, i32* @CMDSN_LOWER_THAN_EXP, align 4
  %339 = icmp eq i32 %337, %338
  br i1 %339, label %340, label %344

340:                                              ; preds = %336
  %341 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %342 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %341, i32 0, i32 2
  %343 = call i32 @target_put_sess_cmd(%struct.TYPE_9__* %342)
  store i32 0, i32* %4, align 4
  br label %388

344:                                              ; preds = %336
  %345 = load i32, i32* %15, align 4
  %346 = load i32, i32* @CMDSN_ERROR_CANNOT_RECOVER, align 4
  %347 = icmp eq i32 %345, %346
  br i1 %347, label %348, label %349

348:                                              ; preds = %344
  store i32 -1, i32* %4, align 4
  br label %388

349:                                              ; preds = %344
  br label %350

350:                                              ; preds = %349
  br label %351

351:                                              ; preds = %350, %335
  br label %352

352:                                              ; preds = %351, %306
  %353 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %354 = load %struct.iscsi_tm*, %struct.iscsi_tm** %10, align 8
  %355 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %354, i32 0, i32 3
  %356 = load i32, i32* %355, align 4
  %357 = call i64 @be32_to_cpu(i32 %356)
  %358 = call i32 @iscsit_ack_from_expstatsn(%struct.iscsi_conn* %353, i64 %357)
  %359 = load i32, i32* %11, align 4
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %368, label %361

361:                                              ; preds = %352
  %362 = load %struct.iscsi_tm*, %struct.iscsi_tm** %10, align 8
  %363 = getelementptr inbounds %struct.iscsi_tm, %struct.iscsi_tm* %362, i32 0, i32 2
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @ISCSI_OP_IMMEDIATE, align 4
  %366 = and i32 %364, %365
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %369, label %368

368:                                              ; preds = %361, %352
  store i32 0, i32* %4, align 4
  br label %388

369:                                              ; preds = %361
  %370 = load %struct.se_tmr_req*, %struct.se_tmr_req** %8, align 8
  %371 = getelementptr inbounds %struct.se_tmr_req, %struct.se_tmr_req* %370, i32 0, i32 1
  %372 = load i32, i32* %371, align 8
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %378

374:                                              ; preds = %369
  %375 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %376 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %375, i32 0, i32 2
  %377 = call i32 @transport_generic_handle_tmr(%struct.TYPE_9__* %376)
  store i32 %377, i32* %4, align 4
  br label %388

378:                                              ; preds = %369
  %379 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %380 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %381 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %382 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %381, i32 0, i32 3
  %383 = load i32, i32* %382, align 8
  %384 = call i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd* %379, %struct.iscsi_conn* %380, i32 %383)
  %385 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %386 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %385, i32 0, i32 2
  %387 = call i32 @target_put_sess_cmd(%struct.TYPE_9__* %386)
  store i32 0, i32* %4, align 4
  br label %388

388:                                              ; preds = %378, %374, %368, %348, %340, %281, %154, %135, %104, %71
  %389 = load i32, i32* %4, align 4
  ret i32 %389
}

declare dso_local i32 @pr_debug(i8*, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @iscsit_add_reject_cmd(%struct.iscsi_cmd*, i32, i8*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_be32(i64) #1

declare dso_local %struct.iscsi_tmr_req* @kzalloc(i32, i32) #1

declare dso_local i32 @transport_init_se_cmd(%struct.TYPE_9__*, i32*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @target_get_sess_cmd(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @iscsit_convert_tmf(i64) #1

declare dso_local i32 @core_tmr_alloc_req(%struct.TYPE_9__*, %struct.iscsi_tmr_req*, i64, i32) #1

declare dso_local i32 @transport_lookup_tmr_lun(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @scsilun_to_int(i32*) #1

declare dso_local i64 @iscsit_tmr_abort_task(%struct.iscsi_cmd*, i8*) #1

declare dso_local i32 @iscsit_tmr_task_warm_reset(%struct.iscsi_conn*, %struct.iscsi_tmr_req*, i8*) #1

declare dso_local i32 @iscsit_tmr_task_cold_reset(%struct.iscsi_conn*, %struct.iscsi_tmr_req*, i8*) #1

declare dso_local i64 @iscsit_tmr_task_reassign(%struct.iscsi_cmd*, i8*) #1

declare dso_local i32 @iscsit_check_task_reassign_expdatasn(%struct.iscsi_tmr_req*, %struct.iscsi_conn*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsit_sequence_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*, i32) #1

declare dso_local i32 @target_put_sess_cmd(%struct.TYPE_9__*) #1

declare dso_local i32 @iscsit_ack_from_expstatsn(%struct.iscsi_conn*, i64) #1

declare dso_local i32 @transport_generic_handle_tmr(%struct.TYPE_9__*) #1

declare dso_local i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd*, %struct.iscsi_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
