; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_dataout_check_datasn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_dataout_check_datasn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, i32, %struct.iscsi_seq*, %struct.iscsi_conn* }
%struct.iscsi_seq = type { i64 }
%struct.iscsi_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.iscsi_data = type { i32, i32 }

@.str = private unnamed_addr constant [75 x i8] c"Command ITT: 0x%08x, received DataSN: 0x%08x higher than expected 0x%08x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [94 x i8] c"Command ITT: 0x%08x, received DataSN: 0x%08x lower than expected 0x%08x, discarding payload.\0A\00", align 1
@DATAOUT_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"Unable to perform within-command recovery while ERL=0.\0A\00", align 1
@DATAOUT_CANNOT_RECOVER = common dso_local global i32 0, align 4
@DATAOUT_WITHIN_COMMAND_RECOVERY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, i8*)* @iscsit_dataout_check_datasn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_dataout_check_datasn(%struct.iscsi_cmd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.iscsi_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iscsi_seq*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %11, i32 0, i32 3
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  store %struct.iscsi_conn* %13, %struct.iscsi_conn** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.iscsi_data*
  store %struct.iscsi_data* %15, %struct.iscsi_data** %8, align 8
  %16 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %17 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @ntoh24(i32 %18)
  store i64 %19, i64* %9, align 8
  %20 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %21 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %6, align 8
  br label %39

32:                                               ; preds = %2
  %33 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %34 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %33, i32 0, i32 2
  %35 = load %struct.iscsi_seq*, %struct.iscsi_seq** %34, align 8
  store %struct.iscsi_seq* %35, %struct.iscsi_seq** %10, align 8
  %36 = load %struct.iscsi_seq*, %struct.iscsi_seq** %10, align 8
  %37 = getelementptr inbounds %struct.iscsi_seq, %struct.iscsi_seq* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %6, align 8
  br label %39

39:                                               ; preds = %32, %28
  %40 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %41 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @be32_to_cpu(i32 %42)
  %44 = load i64, i64* %6, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %39
  %47 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %48 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %51 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @be32_to_cpu(i32 %52)
  %54 = load i64, i64* %6, align 8
  %55 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %49, i64 %53, i64 %54)
  br label %76

56:                                               ; preds = %39
  %57 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %58 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @be32_to_cpu(i32 %59)
  %61 = load i64, i64* %6, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %65 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.iscsi_data*, %struct.iscsi_data** %8, align 8
  %68 = getelementptr inbounds %struct.iscsi_data, %struct.iscsi_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @be32_to_cpu(i32 %69)
  %71 = load i64, i64* %6, align 8
  %72 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i32 %66, i64 %70, i64 %71)
  br label %89

73:                                               ; preds = %56
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* @DATAOUT_NORMAL, align 4
  store i32 %75, i32* %3, align 4
  br label %98

76:                                               ; preds = %46
  %77 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %78 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %76
  %86 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  %87 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %87, i32* %3, align 4
  br label %98

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88, %63
  %90 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %91 = load i64, i64* %9, align 8
  %92 = call i64 @iscsit_dump_data_payload(%struct.iscsi_conn* %90, i64 %91, i32 1)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %95, i32* %3, align 4
  br label %98

96:                                               ; preds = %89
  %97 = load i32, i32* @DATAOUT_WITHIN_COMMAND_RECOVERY, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %94, %85, %74
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i64 @ntoh24(i32) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @iscsit_dump_data_payload(%struct.iscsi_conn*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
