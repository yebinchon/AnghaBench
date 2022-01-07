; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_dataout_within_command_recovery_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_dataout_within_command_recovery_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i64, %struct.iscsi_seq*, %struct.iscsi_conn* }
%struct.iscsi_seq = type { i64, i64, i64 }
%struct.iscsi_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.iscsi_data = type { i32, i32, i32 }

@ICF_WITHIN_COMMAND_RECOVERY = common dso_local global i32 0, align 4
@DATAOUT_CANNOT_RECOVER = common dso_local global i32 0, align 4
@DATAOUT_SEQUENCE_WITHIN_COMMAND_RECOVERY = common dso_local global i64 0, align 8
@DATAOUT_SEQUENCE_COMPLETE = common dso_local global i64 0, align 8
@DATAOUT_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Dumping DataOUT PDU Offset: %u Length: %d DataSN: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, i8*)* @iscsit_dataout_within_command_recovery_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_dataout_within_command_recovery_check(%struct.iscsi_cmd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.iscsi_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.iscsi_seq*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %10, i32 0, i32 3
  %12 = load %struct.iscsi_conn*, %struct.iscsi_conn** %11, align 8
  store %struct.iscsi_conn* %12, %struct.iscsi_conn** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.iscsi_data*
  store %struct.iscsi_data* %14, %struct.iscsi_data** %7, align 8
  %15 = load %struct.iscsi_data*, %struct.iscsi_data** %7, align 8
  %16 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ntoh24(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %20 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %2
  %28 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ICF_WITHIN_COMMAND_RECOVERY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %36 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.iscsi_data*, %struct.iscsi_data** %7, align 8
  %39 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @be32_to_cpu(i32 %40)
  %42 = icmp ne i64 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %137

44:                                               ; preds = %34, %27
  %45 = load i32, i32* @ICF_WITHIN_COMMAND_RECOVERY, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %48 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 8
  br label %135

51:                                               ; preds = %2
  %52 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %53 = load %struct.iscsi_data*, %struct.iscsi_data** %7, align 8
  %54 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @be32_to_cpu(i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = call %struct.iscsi_seq* @iscsit_get_seq_holder(%struct.iscsi_cmd* %52, i64 %56, i32 %57)
  store %struct.iscsi_seq* %58, %struct.iscsi_seq** %9, align 8
  %59 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %60 = icmp ne %struct.iscsi_seq* %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %51
  %62 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %62, i32* %3, align 4
  br label %149

63:                                               ; preds = %51
  %64 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %65 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %66 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %65, i32 0, i32 2
  store %struct.iscsi_seq* %64, %struct.iscsi_seq** %66, align 8
  %67 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %68 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %101

75:                                               ; preds = %63
  %76 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %77 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @DATAOUT_SEQUENCE_WITHIN_COMMAND_RECOVERY, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %100

81:                                               ; preds = %75
  %82 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %83 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.iscsi_data*, %struct.iscsi_data** %7, align 8
  %86 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @be32_to_cpu(i32 %87)
  %89 = icmp ne i64 %84, %88
  br i1 %89, label %99, label %90

90:                                               ; preds = %81
  %91 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %92 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.iscsi_data*, %struct.iscsi_data** %7, align 8
  %95 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @be32_to_cpu(i32 %96)
  %98 = icmp ne i64 %93, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %90, %81
  br label %137

100:                                              ; preds = %90, %75
  br label %118

101:                                              ; preds = %63
  %102 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %103 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @DATAOUT_SEQUENCE_WITHIN_COMMAND_RECOVERY, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %101
  %108 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %109 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.iscsi_data*, %struct.iscsi_data** %7, align 8
  %112 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @be32_to_cpu(i32 %113)
  %115 = icmp ne i64 %110, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %137

117:                                              ; preds = %107, %101
  br label %118

118:                                              ; preds = %117, %100
  %119 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %120 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @DATAOUT_SEQUENCE_COMPLETE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %137

125:                                              ; preds = %118
  %126 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %127 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @DATAOUT_SEQUENCE_COMPLETE, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %125
  %132 = load %struct.iscsi_seq*, %struct.iscsi_seq** %9, align 8
  %133 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %131, %125
  br label %135

135:                                              ; preds = %134, %44
  %136 = load i32, i32* @DATAOUT_NORMAL, align 4
  store i32 %136, i32* %3, align 4
  br label %149

137:                                              ; preds = %124, %116, %99, %43
  %138 = load %struct.iscsi_data*, %struct.iscsi_data** %7, align 8
  %139 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.iscsi_data*, %struct.iscsi_data** %7, align 8
  %143 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @pr_err(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %140, i32 %141, i32 %144)
  %146 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %147 = load i32, i32* %8, align 4
  %148 = call i32 @iscsit_dump_data_payload(%struct.iscsi_conn* %146, i32 %147, i32 1)
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %137, %135, %61
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local %struct.iscsi_seq* @iscsit_get_seq_holder(%struct.iscsi_cmd*, i64, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i32) #1

declare dso_local i32 @iscsit_dump_data_payload(%struct.iscsi_conn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
