; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_dataout_pre_datapduinorder_yes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_dataout_pre_datapduinorder_yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, i32, %struct.iscsi_seq*, %struct.iscsi_conn* }
%struct.iscsi_seq = type { i64 }
%struct.iscsi_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.iscsi_data = type { i32, i32 }

@.str = private unnamed_addr constant [69 x i8] c"Command ITT: 0x%08x, received offset %u different than expected %u.\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Command ITT: 0x%08x, received offset %u greater than expected %u.\0A\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"Command ITT: 0x%08x, received offset %u less than expected %u, discarding payload.\0A\00", align 1
@DATAOUT_NORMAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Unable to perform within-command recovery while ERL=0.\0A\00", align 1
@DATAOUT_CANNOT_RECOVER = common dso_local global i32 0, align 4
@DATAOUT_WITHIN_COMMAND_RECOVERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, i8*)* @iscsit_dataout_pre_datapduinorder_yes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_dataout_pre_datapduinorder_yes(%struct.iscsi_cmd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_conn*, align 8
  %9 = alloca %struct.iscsi_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iscsi_seq*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %12, i32 0, i32 3
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %13, align 8
  store %struct.iscsi_conn* %14, %struct.iscsi_conn** %8, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.iscsi_data*
  store %struct.iscsi_data* %16, %struct.iscsi_data** %9, align 8
  %17 = load %struct.iscsi_data*, %struct.iscsi_data** %9, align 8
  %18 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ntoh24(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %51

29:                                               ; preds = %2
  %30 = load %struct.iscsi_data*, %struct.iscsi_data** %9, align 8
  %31 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @be32_to_cpu(i32 %32)
  %34 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %50

38:                                               ; preds = %29
  %39 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.iscsi_data*, %struct.iscsi_data** %9, align 8
  %43 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @be32_to_cpu(i32 %44)
  %46 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %47 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %41, i64 %45, i64 %48)
  store i32 1, i32* %7, align 4
  br label %100

50:                                               ; preds = %29
  br label %98

51:                                               ; preds = %2
  %52 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %53 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %52, i32 0, i32 2
  %54 = load %struct.iscsi_seq*, %struct.iscsi_seq** %53, align 8
  store %struct.iscsi_seq* %54, %struct.iscsi_seq** %11, align 8
  %55 = load %struct.iscsi_data*, %struct.iscsi_data** %9, align 8
  %56 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @be32_to_cpu(i32 %57)
  %59 = load %struct.iscsi_seq*, %struct.iscsi_seq** %11, align 8
  %60 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp sgt i64 %58, %61
  br i1 %62, label %63, label %75

63:                                               ; preds = %51
  %64 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %65 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.iscsi_data*, %struct.iscsi_data** %9, align 8
  %68 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @be32_to_cpu(i32 %69)
  %71 = load %struct.iscsi_seq*, %struct.iscsi_seq** %11, align 8
  %72 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %66, i64 %70, i64 %73)
  store i32 1, i32* %7, align 4
  br label %100

75:                                               ; preds = %51
  %76 = load %struct.iscsi_data*, %struct.iscsi_data** %9, align 8
  %77 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @be32_to_cpu(i32 %78)
  %80 = load %struct.iscsi_seq*, %struct.iscsi_seq** %11, align 8
  %81 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp slt i64 %79, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %75
  %85 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %86 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.iscsi_data*, %struct.iscsi_data** %9, align 8
  %89 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @be32_to_cpu(i32 %90)
  %92 = load %struct.iscsi_seq*, %struct.iscsi_seq** %11, align 8
  %93 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i32 %87, i64 %91, i64 %94)
  store i32 1, i32* %6, align 4
  br label %113

96:                                               ; preds = %75
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97, %50
  %99 = load i32, i32* @DATAOUT_NORMAL, align 4
  store i32 %99, i32* %3, align 4
  br label %142

100:                                              ; preds = %63, %38
  %101 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %102 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %100
  %110 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %111, i32* %3, align 4
  br label %142

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112, %84
  %114 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %115 = load i32, i32* %10, align 4
  %116 = call i64 @iscsit_dump_data_payload(%struct.iscsi_conn* %114, i32 %115, i32 1)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %113
  %119 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %119, i32* %3, align 4
  br label %142

120:                                              ; preds = %113
  %121 = load i32, i32* %7, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %120
  %124 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %125 = load %struct.iscsi_data*, %struct.iscsi_data** %9, align 8
  %126 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i64 @be32_to_cpu(i32 %127)
  %129 = load i32, i32* %10, align 4
  %130 = call i32 @iscsit_recover_dataout_sequence(%struct.iscsi_cmd* %124, i64 %128, i32 %129)
  br label %140

131:                                              ; preds = %120
  %132 = load i32, i32* %6, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, i32* @DATAOUT_WITHIN_COMMAND_RECOVERY, align 4
  br label %138

136:                                              ; preds = %131
  %137 = load i32, i32* @DATAOUT_NORMAL, align 4
  br label %138

138:                                              ; preds = %136, %134
  %139 = phi i32 [ %135, %134 ], [ %137, %136 ]
  br label %140

140:                                              ; preds = %138, %123
  %141 = phi i32 [ %130, %123 ], [ %139, %138 ]
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %140, %118, %109, %98
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @iscsit_dump_data_payload(%struct.iscsi_conn*, i32, i32) #1

declare dso_local i32 @iscsit_recover_dataout_sequence(%struct.iscsi_cmd*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
