; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_dataout_check_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_dataout_check_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, i64, i64, i64, i32, %struct.TYPE_6__, %struct.iscsi_seq*, %struct.iscsi_conn* }
%struct.TYPE_6__ = type { i64 }
%struct.iscsi_seq = type { i64, i64, i64 }
%struct.iscsi_conn = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.iscsi_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [106 x i8] c"Command ITT: 0x%08x with Offset: %u, Length: %u outside of Sequence %u:%u while DataSequenceInOrder=Yes.\0A\00", align 1
@DATAOUT_CANNOT_RECOVER = common dso_local global i32 0, align 4
@DATAOUT_WITHIN_COMMAND_RECOVERY = common dso_local global i32 0, align 4
@DATAOUT_SEQUENCE_COMPLETE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [101 x i8] c"Command ITT: 0x%08x, NextBurstLength: %u and Length: %u exceeds MaxBurstLength: %u. protocol error.\0A\00", align 1
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [94 x i8] c"Command ITT: 0x%08x set ISCSI_FLAG_CMD_FINAL before end of DataOUT sequence, protocol error.\0A\00", align 1
@.str.3 = private unnamed_addr constant [101 x i8] c"Command ITT: 0x%08x reached MaxBurstLength: %u, but ISCSI_FLAG_CMD_FINAL is not set, protocol error.\00", align 1
@.str.4 = private unnamed_addr constant [111 x i8] c"Command ITT: 0x%08x reached last DataOUT PDU in sequence but ISCSI_FLAG_CMD_FINAL is not set, protocol error.\0A\00", align 1
@DATAOUT_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, i8*)* @iscsit_dataout_check_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_dataout_check_sequence(%struct.iscsi_cmd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.iscsi_seq*, align 8
  %9 = alloca %struct.iscsi_data*, align 8
  %10 = alloca i64, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %11, i32 0, i32 7
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  store %struct.iscsi_conn* %13, %struct.iscsi_conn** %7, align 8
  store %struct.iscsi_seq* null, %struct.iscsi_seq** %8, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.iscsi_data*
  store %struct.iscsi_data* %15, %struct.iscsi_data** %9, align 8
  %16 = load %struct.iscsi_data*, %struct.iscsi_data** %9, align 8
  %17 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ntoh24(i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %78

28:                                               ; preds = %2
  %29 = load %struct.iscsi_data*, %struct.iscsi_data** %9, align 8
  %30 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @be32_to_cpu(i32 %31)
  %33 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %32, %35
  br i1 %36, label %48, label %37

37:                                               ; preds = %28
  %38 = load %struct.iscsi_data*, %struct.iscsi_data** %9, align 8
  %39 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @be32_to_cpu(i32 %40)
  %42 = load i64, i64* %10, align 8
  %43 = add nsw i64 %41, %42
  %44 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %45 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %72

48:                                               ; preds = %37, %28
  %49 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %50 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.iscsi_data*, %struct.iscsi_data** %9, align 8
  %53 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @be32_to_cpu(i32 %54)
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %58 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %61 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %55, i64 %56, i64 %59, i64 %62)
  %64 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i64 @iscsit_dump_data_payload(%struct.iscsi_conn* %64, i64 %65, i32 1)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %48
  %69 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %69, i32* %3, align 4
  br label %276

70:                                               ; preds = %48
  %71 = load i32, i32* @DATAOUT_WITHIN_COMMAND_RECOVERY, align 4
  store i32 %71, i32* %3, align 4
  br label %276

72:                                               ; preds = %37
  %73 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %74 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %10, align 8
  %77 = add nsw i64 %75, %76
  store i64 %77, i64* %6, align 8
  br label %114

78:                                               ; preds = %2
  %79 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %80 = load %struct.iscsi_data*, %struct.iscsi_data** %9, align 8
  %81 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @be32_to_cpu(i32 %82)
  %84 = load i64, i64* %10, align 8
  %85 = call %struct.iscsi_seq* @iscsit_get_seq_holder(%struct.iscsi_cmd* %79, i64 %83, i64 %84)
  store %struct.iscsi_seq* %85, %struct.iscsi_seq** %8, align 8
  %86 = load %struct.iscsi_seq*, %struct.iscsi_seq** %8, align 8
  %87 = icmp ne %struct.iscsi_seq* %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %78
  %89 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %89, i32* %3, align 4
  br label %276

90:                                               ; preds = %78
  %91 = load %struct.iscsi_seq*, %struct.iscsi_seq** %8, align 8
  %92 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %93 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %92, i32 0, i32 6
  store %struct.iscsi_seq* %91, %struct.iscsi_seq** %93, align 8
  %94 = load %struct.iscsi_seq*, %struct.iscsi_seq** %8, align 8
  %95 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @DATAOUT_SEQUENCE_COMPLETE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %90
  %100 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call i64 @iscsit_dump_data_payload(%struct.iscsi_conn* %100, i64 %101, i32 1)
  %103 = icmp slt i64 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %105, i32* %3, align 4
  br label %276

106:                                              ; preds = %99
  %107 = load i32, i32* @DATAOUT_WITHIN_COMMAND_RECOVERY, align 4
  store i32 %107, i32* %3, align 4
  br label %276

108:                                              ; preds = %90
  %109 = load %struct.iscsi_seq*, %struct.iscsi_seq** %8, align 8
  %110 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %10, align 8
  %113 = add nsw i64 %111, %112
  store i64 %113, i64* %6, align 8
  br label %114

114:                                              ; preds = %108, %72
  %115 = load i64, i64* %6, align 8
  %116 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %117 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %116, i32 0, i32 0
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp sgt i64 %115, %122
  br i1 %123, label %124, label %141

124:                                              ; preds = %114
  %125 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %126 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = load i64, i64* %6, align 8
  %129 = load i64, i64* %10, align 8
  %130 = sub nsw i64 %128, %129
  %131 = load i64, i64* %10, align 8
  %132 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %133 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %132, i32 0, i32 0
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0), i32 %127, i64 %130, i64 %131, i64 %138)
  %140 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %140, i32* %3, align 4
  br label %276

141:                                              ; preds = %114
  %142 = load %struct.iscsi_data*, %struct.iscsi_data** %9, align 8
  %143 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %209

148:                                              ; preds = %141
  %149 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %150 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %149, i32 0, i32 0
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_4__*, %struct.TYPE_4__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %148
  br label %274

158:                                              ; preds = %148
  %159 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %160 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %159, i32 0, i32 0
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %195

167:                                              ; preds = %158
  %168 = load i64, i64* %6, align 8
  %169 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %170 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %169, i32 0, i32 0
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load %struct.TYPE_4__*, %struct.TYPE_4__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = icmp slt i64 %168, %175
  br i1 %176, label %177, label %194

177:                                              ; preds = %167
  %178 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %179 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* %10, align 8
  %182 = add nsw i64 %180, %181
  %183 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %184 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %183, i32 0, i32 5
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = icmp slt i64 %182, %186
  br i1 %187, label %188, label %194

188:                                              ; preds = %177
  %189 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %190 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %193, i32* %3, align 4
  br label %276

194:                                              ; preds = %177, %167
  br label %208

195:                                              ; preds = %158
  %196 = load i64, i64* %6, align 8
  %197 = load %struct.iscsi_seq*, %struct.iscsi_seq** %8, align 8
  %198 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = icmp slt i64 %196, %199
  br i1 %200, label %201, label %207

201:                                              ; preds = %195
  %202 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %203 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %202, i32 0, i32 4
  %204 = load i32, i32* %203, align 8
  %205 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.2, i64 0, i64 0), i32 %204)
  %206 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %206, i32* %3, align 4
  br label %276

207:                                              ; preds = %195
  br label %208

208:                                              ; preds = %207, %194
  br label %273

209:                                              ; preds = %141
  %210 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %211 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %210, i32 0, i32 0
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 0
  %214 = load %struct.TYPE_4__*, %struct.TYPE_4__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %259

218:                                              ; preds = %209
  %219 = load i64, i64* %6, align 8
  %220 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %221 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %220, i32 0, i32 0
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_4__*, %struct.TYPE_4__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = icmp eq i64 %219, %226
  br i1 %227, label %228, label %241

228:                                              ; preds = %218
  %229 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %230 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %233 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %232, i32 0, i32 0
  %234 = load %struct.TYPE_5__*, %struct.TYPE_5__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_4__*, %struct.TYPE_4__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.3, i64 0, i64 0), i32 %231, i64 %238)
  %240 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %240, i32* %3, align 4
  br label %276

241:                                              ; preds = %218
  %242 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %243 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %242, i32 0, i32 3
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* %10, align 8
  %246 = add nsw i64 %244, %245
  %247 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %248 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %247, i32 0, i32 5
  %249 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp eq i64 %246, %250
  br i1 %251, label %252, label %258

252:                                              ; preds = %241
  %253 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %254 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.4, i64 0, i64 0), i32 %255)
  %257 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %257, i32* %3, align 4
  br label %276

258:                                              ; preds = %241
  br label %272

259:                                              ; preds = %209
  %260 = load i64, i64* %6, align 8
  %261 = load %struct.iscsi_seq*, %struct.iscsi_seq** %8, align 8
  %262 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = icmp eq i64 %260, %263
  br i1 %264, label %265, label %271

265:                                              ; preds = %259
  %266 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %267 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 8
  %269 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.4, i64 0, i64 0), i32 %268)
  %270 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %270, i32* %3, align 4
  br label %276

271:                                              ; preds = %259
  br label %272

272:                                              ; preds = %271, %258
  br label %273

273:                                              ; preds = %272, %208
  br label %274

274:                                              ; preds = %273, %157
  %275 = load i32, i32* @DATAOUT_NORMAL, align 4
  store i32 %275, i32* %3, align 4
  br label %276

276:                                              ; preds = %274, %265, %252, %228, %201, %188, %124, %106, %104, %88, %70, %68
  %277 = load i32, i32* %3, align 4
  ret i32 %277
}

declare dso_local i64 @ntoh24(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i64 @iscsit_dump_data_payload(%struct.iscsi_conn*, i64, i32) #1

declare dso_local %struct.iscsi_seq* @iscsit_get_seq_holder(%struct.iscsi_cmd*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
