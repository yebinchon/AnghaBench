; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_srp_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi_tgt/extr_ibmvscsi_tgt.c_ibmvscsis_srp_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_info = type { i64, i64, i64, i32, i32, i32 }
%struct.viosrp_crq = type { i32 }
%struct.ibmvscsis_cmd = type { i32, i32, i32, %struct.TYPE_5__, %struct.iu_entry* }
%struct.TYPE_5__ = type { i32 }
%struct.iu_entry = type { i32 }
%struct.srp_cmd = type { i32, i32 }
%struct.srp_tsk_mgmt = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.srp_tsk_mgmt, %struct.srp_cmd }

@.str = private unnamed_addr constant [50 x i8] c"Client exceeded the request limit (%d), debit %d\0A\00", align 1
@ERR_DISCONNECT_RECONNECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"srp_cmd failed to get cmd, debit %d\0A\00", align 1
@SRP_PROCESSING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"tsk_mgmt tag: %llu (0x%llx)\0A\00", align 1
@TASK_MANAGEMENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"srp_cmd tag: %llu (0x%llx)\0A\00", align 1
@SCSI_CDB = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"invalid srp cmd, opcode %d\0A\00", align 1
@CONNECTED = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"Invalid state %d to handle srp cmd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_info*, %struct.viosrp_crq*)* @ibmvscsis_srp_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvscsis_srp_cmd(%struct.scsi_info* %0, %struct.viosrp_crq* %1) #0 {
  %3 = alloca %struct.scsi_info*, align 8
  %4 = alloca %struct.viosrp_crq*, align 8
  %5 = alloca %struct.ibmvscsis_cmd*, align 8
  %6 = alloca %struct.iu_entry*, align 8
  %7 = alloca %struct.srp_cmd*, align 8
  %8 = alloca %struct.srp_tsk_mgmt*, align 8
  %9 = alloca i64, align 8
  store %struct.scsi_info* %0, %struct.scsi_info** %3, align 8
  store %struct.viosrp_crq* %1, %struct.viosrp_crq** %4, align 8
  %10 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %12, %15
  %17 = icmp sle i64 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %20 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %19, i32 0, i32 3
  %21 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %22 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %25 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %26)
  %28 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %29 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %30 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %28, i32 %29, i32 0)
  br label %202

31:                                               ; preds = %2
  %32 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %33 = call %struct.ibmvscsis_cmd* @ibmvscsis_get_free_cmd(%struct.scsi_info* %32)
  store %struct.ibmvscsis_cmd* %33, %struct.ibmvscsis_cmd** %5, align 8
  %34 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %35 = icmp ne %struct.ibmvscsis_cmd* %34, null
  br i1 %35, label %46, label %36

36:                                               ; preds = %31
  %37 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %38 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %37, i32 0, i32 3
  %39 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %40 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %41)
  %43 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %44 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %45 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %43, i32 %44, i32 0)
  br label %202

46:                                               ; preds = %31
  %47 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %48 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %47, i32 0, i32 4
  %49 = load %struct.iu_entry*, %struct.iu_entry** %48, align 8
  store %struct.iu_entry* %49, %struct.iu_entry** %6, align 8
  %50 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %51 = call %struct.TYPE_6__* @vio_iu(%struct.iu_entry* %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store %struct.srp_cmd* %53, %struct.srp_cmd** %7, align 8
  %54 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %55 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %56 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %57 = call i64 @ibmvscsis_copy_crq_packet(%struct.scsi_info* %54, %struct.ibmvscsis_cmd* %55, %struct.viosrp_crq* %56)
  store i64 %57, i64* %9, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %46
  %61 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %62 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %63 = call i32 @ibmvscsis_free_cmd_resources(%struct.scsi_info* %61, %struct.ibmvscsis_cmd* %62)
  br label %202

64:                                               ; preds = %46
  %65 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %66 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @SRP_PROCESSING, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %172

70:                                               ; preds = %64
  %71 = load %struct.srp_cmd*, %struct.srp_cmd** %7, align 8
  %72 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %157 [
    i32 129, label %74
    i32 128, label %79
    i32 132, label %117
    i32 130, label %151
    i32 131, label %156
    i32 133, label %156
  ]

74:                                               ; preds = %70
  %75 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %76 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %77 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %78 = call i64 @ibmvscsis_srp_login(%struct.scsi_info* %75, %struct.ibmvscsis_cmd* %76, %struct.viosrp_crq* %77)
  store i64 %78, i64* %9, align 8
  br label %171

79:                                               ; preds = %70
  %80 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %81 = call %struct.TYPE_6__* @vio_iu(%struct.iu_entry* %80)
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store %struct.srp_tsk_mgmt* %83, %struct.srp_tsk_mgmt** %8, align 8
  %84 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %85 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %84, i32 0, i32 3
  %86 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %8, align 8
  %87 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %8, align 8
  %90 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dev_dbg(i32* %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %88, i32 %91)
  %93 = load %struct.srp_tsk_mgmt*, %struct.srp_tsk_mgmt** %8, align 8
  %94 = getelementptr inbounds %struct.srp_tsk_mgmt, %struct.srp_tsk_mgmt* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %97 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 4
  %99 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %100 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %100, align 8
  %103 = load i32, i32* @TASK_MANAGEMENT, align 4
  %104 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %105 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 8
  %106 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %107 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %106, i32 0, i32 1
  %108 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %109 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %108, i32 0, i32 5
  %110 = call i32 @list_add_tail(i32* %107, i32* %109)
  %111 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %112 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %115 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %114, i32 0, i32 0
  %116 = call i32 @queue_work(i32 %113, i32* %115)
  br label %171

117:                                              ; preds = %70
  %118 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %119 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %118, i32 0, i32 3
  %120 = load %struct.srp_cmd*, %struct.srp_cmd** %7, align 8
  %121 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.srp_cmd*, %struct.srp_cmd** %7, align 8
  %124 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @dev_dbg(i32* %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %122, i32 %125)
  %127 = load %struct.srp_cmd*, %struct.srp_cmd** %7, align 8
  %128 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %131 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 4
  %133 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %134 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = add nsw i64 %135, 1
  store i64 %136, i64* %134, align 8
  %137 = load i32, i32* @SCSI_CDB, align 4
  %138 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %139 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %138, i32 0, i32 2
  store i32 %137, i32* %139, align 8
  %140 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %141 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %140, i32 0, i32 1
  %142 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %143 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %142, i32 0, i32 5
  %144 = call i32 @list_add_tail(i32* %141, i32* %143)
  %145 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %146 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %149 = getelementptr inbounds %struct.ibmvscsis_cmd, %struct.ibmvscsis_cmd* %148, i32 0, i32 0
  %150 = call i32 @queue_work(i32 %147, i32* %149)
  br label %171

151:                                              ; preds = %70
  %152 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %153 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %154 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %155 = call i64 @ibmvscsis_srp_i_logout(%struct.scsi_info* %152, %struct.ibmvscsis_cmd* %153, %struct.viosrp_crq* %154)
  store i64 %155, i64* %9, align 8
  br label %171

156:                                              ; preds = %70, %70
  br label %157

157:                                              ; preds = %70, %156
  %158 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %159 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %160 = call i32 @ibmvscsis_free_cmd_resources(%struct.scsi_info* %158, %struct.ibmvscsis_cmd* %159)
  %161 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %162 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %161, i32 0, i32 3
  %163 = load %struct.srp_cmd*, %struct.srp_cmd** %7, align 8
  %164 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %162, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %166)
  %168 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %169 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %170 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %168, i32 %169, i32 0)
  br label %171

171:                                              ; preds = %157, %151, %117, %79, %74
  br label %202

172:                                              ; preds = %64
  %173 = load %struct.srp_cmd*, %struct.srp_cmd** %7, align 8
  %174 = getelementptr inbounds %struct.srp_cmd, %struct.srp_cmd* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 129
  br i1 %176, label %177, label %188

177:                                              ; preds = %172
  %178 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %179 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @CONNECTED, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %177
  %184 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %185 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %186 = load %struct.viosrp_crq*, %struct.viosrp_crq** %4, align 8
  %187 = call i64 @ibmvscsis_srp_login(%struct.scsi_info* %184, %struct.ibmvscsis_cmd* %185, %struct.viosrp_crq* %186)
  store i64 %187, i64* %9, align 8
  br label %201

188:                                              ; preds = %177, %172
  %189 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %190 = load %struct.ibmvscsis_cmd*, %struct.ibmvscsis_cmd** %5, align 8
  %191 = call i32 @ibmvscsis_free_cmd_resources(%struct.scsi_info* %189, %struct.ibmvscsis_cmd* %190)
  %192 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %193 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %192, i32 0, i32 3
  %194 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %195 = getelementptr inbounds %struct.scsi_info, %struct.scsi_info* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = call i32 (i32*, i8*, i64, ...) @dev_err(i32* %193, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %196)
  %198 = load %struct.scsi_info*, %struct.scsi_info** %3, align 8
  %199 = load i32, i32* @ERR_DISCONNECT_RECONNECT, align 4
  %200 = call i32 @ibmvscsis_post_disconnect(%struct.scsi_info* %198, i32 %199, i32 0)
  br label %201

201:                                              ; preds = %188, %183
  br label %202

202:                                              ; preds = %18, %36, %60, %201, %171
  ret void
}

declare dso_local i32 @dev_err(i32*, i8*, i64, ...) #1

declare dso_local i32 @ibmvscsis_post_disconnect(%struct.scsi_info*, i32, i32) #1

declare dso_local %struct.ibmvscsis_cmd* @ibmvscsis_get_free_cmd(%struct.scsi_info*) #1

declare dso_local %struct.TYPE_6__* @vio_iu(%struct.iu_entry*) #1

declare dso_local i64 @ibmvscsis_copy_crq_packet(%struct.scsi_info*, %struct.ibmvscsis_cmd*, %struct.viosrp_crq*) #1

declare dso_local i32 @ibmvscsis_free_cmd_resources(%struct.scsi_info*, %struct.ibmvscsis_cmd*) #1

declare dso_local i64 @ibmvscsis_srp_login(%struct.scsi_info*, %struct.ibmvscsis_cmd*, %struct.viosrp_crq*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @ibmvscsis_srp_i_logout(%struct.scsi_info*, %struct.ibmvscsis_cmd*, %struct.viosrp_crq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
