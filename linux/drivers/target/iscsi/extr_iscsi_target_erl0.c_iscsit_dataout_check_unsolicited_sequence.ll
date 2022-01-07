; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_dataout_check_unsolicited_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_dataout_check_unsolicited_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, i64, i64, i64, %struct.TYPE_6__, %struct.iscsi_conn* }
%struct.TYPE_6__ = type { i64 }
%struct.iscsi_conn = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.iscsi_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [118 x i8] c"Command ITT: 0x%08x with Offset: %u, Length: %u outside of Unsolicited Sequence %u:%u while DataSequenceInOrder=Yes.\0A\00", align 1
@DATAOUT_CANNOT_RECOVER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"Total %u bytes exceeds FirstBurstLength: %u for this Unsolicited DataOut Burst.\0A\00", align 1
@TCM_INCORRECT_AMOUNT_OF_DATA = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [115 x i8] c"Unsolicited non-immediate data received %u does not equal FirstBurstLength: %u, and does not equal ExpXferLen %u.\0A\00", align 1
@.str.3 = private unnamed_addr constant [104 x i8] c"Command ITT: 0x%08x reached FirstBurstLength: %u, but ISCSI_FLAG_CMD_FINAL is not set. protocol error.\0A\00", align 1
@.str.4 = private unnamed_addr constant [98 x i8] c"Command ITT: 0x%08x reached ExpXferLen: %u, but ISCSI_FLAG_CMD_FINAL is not set. protocol error.\0A\00", align 1
@DATAOUT_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, i8*)* @iscsit_dataout_check_unsolicited_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_dataout_check_unsolicited_sequence(%struct.iscsi_cmd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.iscsi_data*, align 8
  %9 = alloca i64, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %10, i32 0, i32 5
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  store %struct.iscsi_conn* %12, %struct.iscsi_conn** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.iscsi_data*
  store %struct.iscsi_data* %14, %struct.iscsi_data** %8, align 8
  %15 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %16 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @ntoh24(i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %20 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @be32_to_cpu(i32 %21)
  %23 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %24 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %38, label %27

27:                                               ; preds = %2
  %28 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %29 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @be32_to_cpu(i32 %30)
  %32 = load i64, i64* %9, align 8
  %33 = add nsw i64 %31, %32
  %34 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %27, %2
  %39 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %43 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @be32_to_cpu(i32 %44)
  %46 = load i64, i64* %9, align 8
  %47 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %48 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %51 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i32 (i8*, i64, i64, ...) @pr_err(i8* getelementptr inbounds ([118 x i8], [118 x i8]* @.str, i64 0, i64 0), i64 %41, i64 %45, i64 %46, i64 %49, i64 %52)
  %54 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %54, i32* %3, align 4
  br label %183

55:                                               ; preds = %27
  %56 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %57 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = add nsw i64 %58, %59
  store i64 %60, i64* %6, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %63 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %61, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %55
  %71 = load i64, i64* %6, align 8
  %72 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %73 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 (i8*, i64, i64, ...) @pr_err(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i64 %71, i64 %78)
  %80 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %81 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %80, i32 0, i32 4
  %82 = load i32, i32* @TCM_INCORRECT_AMOUNT_OF_DATA, align 4
  %83 = call i32 @transport_send_check_condition_and_sense(%struct.TYPE_6__* %81, i32 %82, i32 0)
  %84 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %84, i32* %3, align 4
  br label %183

85:                                               ; preds = %55
  %86 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %87 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %139

92:                                               ; preds = %85
  %93 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %94 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %93, i32 0, i32 0
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %92
  br label %181

102:                                              ; preds = %92
  %103 = load i64, i64* %6, align 8
  %104 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %105 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %103, %107
  br i1 %108, label %109, label %138

109:                                              ; preds = %102
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %112 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %110, %117
  br i1 %118, label %119, label %138

119:                                              ; preds = %109
  %120 = load i64, i64* %6, align 8
  %121 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %122 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %121, i32 0, i32 0
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %129 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 (i8*, i64, i64, ...) @pr_err(i8* getelementptr inbounds ([115 x i8], [115 x i8]* @.str.2, i64 0, i64 0), i64 %120, i64 %127, i64 %131)
  %133 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %134 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %133, i32 0, i32 4
  %135 = load i32, i32* @TCM_INCORRECT_AMOUNT_OF_DATA, align 4
  %136 = call i32 @transport_send_check_condition_and_sense(%struct.TYPE_6__* %134, i32 %135, i32 0)
  %137 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %137, i32* %3, align 4
  br label %183

138:                                              ; preds = %109, %102
  br label %180

139:                                              ; preds = %85
  %140 = load i64, i64* %6, align 8
  %141 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %142 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %141, i32 0, i32 0
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %140, %147
  br i1 %148, label %149, label %162

149:                                              ; preds = %139
  %150 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %151 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %154 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %153, i32 0, i32 0
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 (i8*, i64, i64, ...) @pr_err(i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.3, i64 0, i64 0), i64 %152, i64 %159)
  %161 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %161, i32* %3, align 4
  br label %183

162:                                              ; preds = %139
  %163 = load i64, i64* %6, align 8
  %164 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %165 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %163, %167
  br i1 %168, label %169, label %179

169:                                              ; preds = %162
  %170 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %171 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %174 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i32 (i8*, i64, i64, ...) @pr_err(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str.4, i64 0, i64 0), i64 %172, i64 %176)
  %178 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %178, i32* %3, align 4
  br label %183

179:                                              ; preds = %162
  br label %180

180:                                              ; preds = %179, %138
  br label %181

181:                                              ; preds = %180, %101
  %182 = load i32, i32* @DATAOUT_NORMAL, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %181, %169, %149, %119, %70, %38
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i64 @ntoh24(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, i64, i64, ...) #1

declare dso_local i32 @transport_send_check_condition_and_sense(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
