; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_execute_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_execute_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32, i32, i32, %struct.iscsi_conn*, %struct.se_cmd, i32, i32, i32, i32 }
%struct.iscsi_conn = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32)* }
%struct.se_cmd = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ICF_OOO_CMDSN = common dso_local global i32 0, align 4
@TCM_RESERVATION_CONFLICT = common dso_local global i32 0, align 4
@ISTATE_SEND_STATUS = common dso_local global i32 0, align 4
@CMD_T_ABORTED = common dso_local global i32 0, align 4
@ICF_GOT_LAST_DATAOUT = common dso_local global i32 0, align 4
@ICF_NON_IMMEDIATE_UNSOLICITED_DATA = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Unknown iSCSI Logout Request Code: 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [72 x i8] c"Cannot perform out of order execution for unknown iSCSI Opcode: 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_execute_cmd(%struct.iscsi_cmd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.se_cmd*, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca i32, align 4
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %9, i32 0, i32 5
  store %struct.se_cmd* %10, %struct.se_cmd** %6, align 8
  %11 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %11, i32 0, i32 4
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  store %struct.iscsi_conn* %13, %struct.iscsi_conn** %7, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %14, i32 0, i32 3
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %2
  %20 = load i32, i32* @ICF_OOO_CMDSN, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  br label %26

26:                                               ; preds = %19, %2
  %27 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %28 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %227 [
    i32 130, label %30
    i32 131, label %156
    i32 128, label %156
    i32 129, label %168
    i32 132, label %195
  ]

30:                                               ; preds = %26
  %31 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %32 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %31, i32 0, i32 9
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %74

35:                                               ; preds = %30
  %36 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %37 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @TCM_RESERVATION_CONFLICT, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %56

41:                                               ; preds = %35
  %42 = load i32, i32* @ISTATE_SEND_STATUS, align 4
  %43 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %44 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %46 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %45, i32 0, i32 3
  %47 = call i32 @spin_unlock_bh(i32* %46)
  %48 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %49 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %50 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %49, i32 0, i32 4
  %51 = load %struct.iscsi_conn*, %struct.iscsi_conn** %50, align 8
  %52 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %53 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd* %48, %struct.iscsi_conn* %51, i32 %54)
  store i32 0, i32* %3, align 4
  br label %236

56:                                               ; preds = %35
  %57 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %58 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %57, i32 0, i32 3
  %59 = call i32 @spin_unlock_bh(i32* %58)
  %60 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %61 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @CMD_T_ABORTED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %236

68:                                               ; preds = %56
  %69 = load %struct.se_cmd*, %struct.se_cmd** %6, align 8
  %70 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %71 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %70, i32 0, i32 9
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @transport_send_check_condition_and_sense(%struct.se_cmd* %69, i32 %72, i32 0)
  store i32 %73, i32* %3, align 4
  br label %236

74:                                               ; preds = %30
  %75 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %76 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %75, i32 0, i32 8
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %124

79:                                               ; preds = %74
  %80 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %81 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @ICF_GOT_LAST_DATAOUT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %79
  %87 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %88 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %87, i32 0, i32 3
  %89 = call i32 @spin_unlock_bh(i32* %88)
  %90 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %91 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %90, i32 0, i32 5
  %92 = call i32 @target_execute_cmd(%struct.se_cmd* %91)
  store i32 0, i32* %3, align 4
  br label %236

93:                                               ; preds = %79
  %94 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %95 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %94, i32 0, i32 3
  %96 = call i32 @spin_unlock_bh(i32* %95)
  %97 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %98 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @ICF_NON_IMMEDIATE_UNSOLICITED_DATA, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %123, label %103

103:                                              ; preds = %93
  %104 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %105 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %104, i32 0, i32 5
  %106 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @CMD_T_ABORTED, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %103
  store i32 0, i32* %3, align 4
  br label %236

112:                                              ; preds = %103
  %113 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %114 = call i32 @iscsit_set_dataout_sequence_values(%struct.iscsi_cmd* %113)
  %115 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %116 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %115, i32 0, i32 0
  %117 = load %struct.TYPE_3__*, %struct.TYPE_3__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32)*, i32 (%struct.iscsi_conn*, %struct.iscsi_cmd*, i32)** %118, align 8
  %120 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %121 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %122 = call i32 %119(%struct.iscsi_conn* %120, %struct.iscsi_cmd* %121, i32 0)
  br label %123

123:                                              ; preds = %112, %93
  store i32 0, i32* %3, align 4
  br label %236

124:                                              ; preds = %74
  %125 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %126 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %125, i32 0, i32 3
  %127 = call i32 @spin_unlock_bh(i32* %126)
  %128 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %129 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %128, i32 0, i32 7
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @DMA_TO_DEVICE, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %152

133:                                              ; preds = %124
  %134 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %135 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = load i32, i32* @ICF_NON_IMMEDIATE_UNSOLICITED_DATA, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %152, label %140

140:                                              ; preds = %133
  %141 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %142 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %141, i32 0, i32 5
  %143 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @CMD_T_ABORTED, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  store i32 0, i32* %3, align 4
  br label %236

149:                                              ; preds = %140
  %150 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %151 = call i32 @iscsit_set_unsolicited_dataout(%struct.iscsi_cmd* %150)
  br label %152

152:                                              ; preds = %149, %133, %124
  %153 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %154 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %153, i32 0, i32 5
  %155 = call i32 @transport_handle_cdb_direct(%struct.se_cmd* %154)
  store i32 %155, i32* %3, align 4
  br label %236

156:                                              ; preds = %26, %26
  %157 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %158 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %157, i32 0, i32 3
  %159 = call i32 @spin_unlock_bh(i32* %158)
  %160 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %161 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %162 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %161, i32 0, i32 4
  %163 = load %struct.iscsi_conn*, %struct.iscsi_conn** %162, align 8
  %164 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %165 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %164, i32 0, i32 6
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd* %160, %struct.iscsi_conn* %163, i32 %166)
  br label %235

168:                                              ; preds = %26
  %169 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %170 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %170, i32 0, i32 1
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %188

176:                                              ; preds = %168
  %177 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %178 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %177, i32 0, i32 3
  %179 = call i32 @spin_unlock_bh(i32* %178)
  %180 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %181 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %182 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %181, i32 0, i32 4
  %183 = load %struct.iscsi_conn*, %struct.iscsi_conn** %182, align 8
  %184 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %185 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %184, i32 0, i32 6
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd* %180, %struct.iscsi_conn* %183, i32 %186)
  store i32 0, i32* %3, align 4
  br label %236

188:                                              ; preds = %168
  %189 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %190 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %189, i32 0, i32 3
  %191 = call i32 @spin_unlock_bh(i32* %190)
  %192 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %193 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %192, i32 0, i32 5
  %194 = call i32 @transport_generic_handle_tmr(%struct.se_cmd* %193)
  store i32 %194, i32* %3, align 4
  br label %236

195:                                              ; preds = %26
  %196 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %197 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %196, i32 0, i32 3
  %198 = call i32 @spin_unlock_bh(i32* %197)
  %199 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %200 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  switch i32 %201, label %220 [
    i32 134, label %202
    i32 135, label %208
    i32 133, label %214
  ]

202:                                              ; preds = %195
  %203 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %204 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %205 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %204, i32 0, i32 4
  %206 = load %struct.iscsi_conn*, %struct.iscsi_conn** %205, align 8
  %207 = call i32 @iscsit_logout_closesession(%struct.iscsi_cmd* %203, %struct.iscsi_conn* %206)
  store i32 %207, i32* %8, align 4
  br label %225

208:                                              ; preds = %195
  %209 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %210 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %211 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %210, i32 0, i32 4
  %212 = load %struct.iscsi_conn*, %struct.iscsi_conn** %211, align 8
  %213 = call i32 @iscsit_logout_closeconnection(%struct.iscsi_cmd* %209, %struct.iscsi_conn* %212)
  store i32 %213, i32* %8, align 4
  br label %225

214:                                              ; preds = %195
  %215 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %216 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %217 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %216, i32 0, i32 4
  %218 = load %struct.iscsi_conn*, %struct.iscsi_conn** %217, align 8
  %219 = call i32 @iscsit_logout_removeconnforrecovery(%struct.iscsi_cmd* %215, %struct.iscsi_conn* %218)
  store i32 %219, i32* %8, align 4
  br label %225

220:                                              ; preds = %195
  %221 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %222 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %223)
  store i32 -1, i32* %3, align 4
  br label %236

225:                                              ; preds = %214, %208, %202
  %226 = load i32, i32* %8, align 4
  store i32 %226, i32* %3, align 4
  br label %236

227:                                              ; preds = %26
  %228 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %229 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %228, i32 0, i32 3
  %230 = call i32 @spin_unlock_bh(i32* %229)
  %231 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %232 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @pr_err(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), i32 %233)
  store i32 -1, i32* %3, align 4
  br label %236

235:                                              ; preds = %156
  store i32 0, i32* %3, align 4
  br label %236

236:                                              ; preds = %235, %227, %225, %220, %188, %176, %152, %148, %123, %111, %86, %68, %67, %41
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd*, %struct.iscsi_conn*, i32) #1

declare dso_local i32 @transport_send_check_condition_and_sense(%struct.se_cmd*, i32, i32) #1

declare dso_local i32 @target_execute_cmd(%struct.se_cmd*) #1

declare dso_local i32 @iscsit_set_dataout_sequence_values(%struct.iscsi_cmd*) #1

declare dso_local i32 @iscsit_set_unsolicited_dataout(%struct.iscsi_cmd*) #1

declare dso_local i32 @transport_handle_cdb_direct(%struct.se_cmd*) #1

declare dso_local i32 @transport_generic_handle_tmr(%struct.se_cmd*) #1

declare dso_local i32 @iscsit_logout_closesession(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_logout_closeconnection(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

declare dso_local i32 @iscsit_logout_removeconnforrecovery(%struct.iscsi_cmd*, %struct.iscsi_conn*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
