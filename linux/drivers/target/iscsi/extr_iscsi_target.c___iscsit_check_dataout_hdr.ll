; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c___iscsit_check_dataout_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c___iscsit_check_dataout_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.iscsi_cmd = type { i32, i64, i32, %struct.se_cmd, i64, i32 }
%struct.se_cmd = type { i64, i64, i32, i32 }
%struct.iscsi_data = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [88 x i8] c"Got DataOut ITT: 0x%08x, TTT: 0x%08x, DataSN: 0x%08x, Offset: %u, Length: %u, CID: %hu\0A\00", align 1
@ICF_GOT_LAST_DATAOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [83 x i8] c"Command ITT: 0x%08x received DataOUT after last DataOUT received, dumping payload\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [63 x i8] c"Command ITT: 0x%08x received DataOUT for a NON-WRITE command.\0A\00", align 1
@.str.3 = private unnamed_addr constant [83 x i8] c"DataOut Offset: %u, Length %u greater than iSCSI Command EDTL %u, protocol error.\0A\00", align 1
@ISCSI_REASON_BOOKMARK_INVALID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [76 x i8] c"Received unexpected unsolicited data while InitialR2T=Yes, protocol error.\0A\00", align 1
@TCM_UNEXPECTED_UNSOLICITED_DATA = common dso_local global i32 0, align 4
@TRANSPORT_WRITE_PENDING = common dso_local global i64 0, align 8
@SCF_SUPPORTED_SAM_OPCODE = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@CMD_T_ABORTED = common dso_local global i32 0, align 4
@DATAOUT_WITHIN_COMMAND_RECOVERY = common dso_local global i32 0, align 4
@DATAOUT_CANNOT_RECOVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__iscsit_check_dataout_hdr(%struct.iscsi_conn* %0, i8* %1, %struct.iscsi_cmd* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iscsi_cmd*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.iscsi_data*, align 8
  %13 = alloca %struct.se_cmd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.iscsi_cmd* %2, %struct.iscsi_cmd** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.iscsi_data*
  store %struct.iscsi_data* %17, %struct.iscsi_data** %12, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = call i32 @atomic_long_add(i64 %18, i32* %22)
  %24 = load %struct.iscsi_data*, %struct.iscsi_data** %12, align 8
  %25 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.iscsi_data*, %struct.iscsi_data** %12, align 8
  %28 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.iscsi_data*, %struct.iscsi_data** %12, align 8
  %31 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.iscsi_data*, %struct.iscsi_data** %12, align 8
  %34 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ntohl(i32 %35)
  %37 = load i64, i64* %10, align 8
  %38 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %39 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %32, i32 %36, i64 %37, i32 %40)
  %42 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %43 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ICF_GOT_LAST_DATAOUT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %5
  %49 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %50 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @iscsit_dump_data_payload(%struct.iscsi_conn* %53, i64 %54, i32 1)
  store i32 %55, i32* %6, align 4
  br label %198

56:                                               ; preds = %5
  %57 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %58 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DMA_TO_DEVICE, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %56
  %63 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %64 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @iscsit_dump_data_payload(%struct.iscsi_conn* %67, i64 %68, i32 1)
  store i32 %69, i32* %6, align 4
  br label %198

70:                                               ; preds = %56
  %71 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %72 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %71, i32 0, i32 3
  store %struct.se_cmd* %72, %struct.se_cmd** %13, align 8
  %73 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %74 = call i32 @iscsit_mod_dataout_timer(%struct.iscsi_cmd* %73)
  %75 = load %struct.iscsi_data*, %struct.iscsi_data** %12, align 8
  %76 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @be32_to_cpu(i32 %77)
  %79 = load i64, i64* %10, align 8
  %80 = add nsw i64 %78, %79
  %81 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %82 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %80, %84
  br i1 %85, label %86, label %101

86:                                               ; preds = %70
  %87 = load %struct.iscsi_data*, %struct.iscsi_data** %12, align 8
  %88 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @be32_to_cpu(i32 %89)
  %91 = load i64, i64* %10, align 8
  %92 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %93 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0), i64 %90, i64 %91, i64 %95)
  %97 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %98 = load i32, i32* @ISCSI_REASON_BOOKMARK_INVALID, align 4
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @iscsit_reject_cmd(%struct.iscsi_cmd* %97, i32 %98, i8* %99)
  store i32 %100, i32* %6, align 4
  br label %198

101:                                              ; preds = %70
  %102 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %103 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %154

106:                                              ; preds = %101
  store i32 0, i32* %15, align 4
  %107 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %108 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %106
  %116 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0))
  %117 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %118 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %117, i32 0, i32 3
  %119 = load i32, i32* @TCM_UNEXPECTED_UNSOLICITED_DATA, align 4
  %120 = call i32 @transport_send_check_condition_and_sense(%struct.se_cmd* %118, i32 %119, i32 0)
  store i32 -1, i32* %6, align 4
  br label %198

121:                                              ; preds = %106
  %122 = load %struct.se_cmd*, %struct.se_cmd** %13, align 8
  %123 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @TRANSPORT_WRITE_PENDING, align 8
  %126 = icmp ne i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @WARN_ON(i32 %127)
  %129 = load %struct.se_cmd*, %struct.se_cmd** %13, align 8
  %130 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @SCF_SUPPORTED_SAM_OPCODE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %121
  store i32 1, i32* %15, align 4
  br label %136

136:                                              ; preds = %135, %121
  %137 = load i32, i32* %15, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %153

139:                                              ; preds = %136
  %140 = load %struct.iscsi_data*, %struct.iscsi_data** %12, align 8
  %141 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %139
  %147 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %148 = call i32 @iscsit_stop_dataout_timer(%struct.iscsi_cmd* %147)
  br label %149

149:                                              ; preds = %146, %139
  %150 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %151 = load i64, i64* %10, align 8
  %152 = call i32 @iscsit_dump_data_payload(%struct.iscsi_conn* %150, i64 %151, i32 1)
  store i32 %152, i32* %6, align 4
  br label %198

153:                                              ; preds = %136
  br label %182

154:                                              ; preds = %101
  %155 = load %struct.se_cmd*, %struct.se_cmd** %13, align 8
  %156 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @CMD_T_ABORTED, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %181

161:                                              ; preds = %154
  %162 = load %struct.iscsi_data*, %struct.iscsi_data** %12, align 8
  %163 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %161
  %169 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %170 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, -1
  store i32 %172, i32* %170, align 8
  %173 = icmp slt i32 %172, 1
  br i1 %173, label %174, label %177

174:                                              ; preds = %168
  %175 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %176 = call i32 @iscsit_stop_dataout_timer(%struct.iscsi_cmd* %175)
  br label %177

177:                                              ; preds = %174, %168, %161
  %178 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %179 = load i64, i64* %10, align 8
  %180 = call i32 @iscsit_dump_data_payload(%struct.iscsi_conn* %178, i64 %179, i32 1)
  store i32 %180, i32* %6, align 4
  br label %198

181:                                              ; preds = %154
  br label %182

182:                                              ; preds = %181, %153
  %183 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %9, align 8
  %184 = load i8*, i8** %8, align 8
  %185 = call i32 @iscsit_check_pre_dataout(%struct.iscsi_cmd* %183, i8* %184)
  store i32 %185, i32* %14, align 4
  %186 = load i32, i32* %14, align 4
  %187 = load i32, i32* @DATAOUT_WITHIN_COMMAND_RECOVERY, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %182
  store i32 0, i32* %6, align 4
  br label %198

190:                                              ; preds = %182
  %191 = load i32, i32* %14, align 4
  %192 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %195

194:                                              ; preds = %190
  store i32 -1, i32* %6, align 4
  br label %198

195:                                              ; preds = %190
  br label %196

196:                                              ; preds = %195
  %197 = load i32*, i32** %11, align 8
  store i32 1, i32* %197, align 4
  store i32 0, i32* %6, align 4
  br label %198

198:                                              ; preds = %196, %194, %189, %177, %149, %115, %86, %62, %48
  %199 = load i32, i32* %6, align 4
  ret i32 %199
}

declare dso_local i32 @atomic_long_add(i64, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @iscsit_dump_data_payload(%struct.iscsi_conn*, i64, i32) #1

declare dso_local i32 @iscsit_mod_dataout_timer(%struct.iscsi_cmd*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @iscsit_reject_cmd(%struct.iscsi_cmd*, i32, i8*) #1

declare dso_local i32 @transport_send_check_condition_and_sense(%struct.se_cmd*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @iscsit_stop_dataout_timer(%struct.iscsi_cmd*) #1

declare dso_local i32 @iscsit_check_pre_dataout(%struct.iscsi_cmd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
