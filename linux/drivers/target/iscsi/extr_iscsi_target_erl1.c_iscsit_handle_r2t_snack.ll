; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_handle_r2t_snack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_handle_r2t_snack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i64, i64, i32 }
%struct.iscsi_r2t = type { i32 }

@ICF_GOT_DATACK_SNACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [151 x i8] c"ITT: 0x%08x, R2T SNACK requesting retransmission of R2TSN: 0x%08x to 0x%08x but already acked to  R2TSN: 0x%08x by TMR TASK_REASSIGN, protocol error.\0A\00", align 1
@ISCSI_REASON_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [127 x i8] c"Command ITT: 0x%08x received R2T SNACK with BegRun: 0x%08x, RunLength: 0x%08x, exceeds current R2TSN: 0x%08x, protocol error.\0A\00", align 1
@ISCSI_REASON_BOOKMARK_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, i8*, i64, i64)* @iscsit_handle_r2t_snack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_handle_r2t_snack(%struct.iscsi_cmd* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.iscsi_r2t*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %13 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ICF_GOT_DATACK_SNACK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %4
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %21 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %19, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %18
  %25 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %26 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %33 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([151 x i8], [151 x i8]* @.str, i64 0, i64 0), i32 %27, i64 %28, i64 %31, i64 %34)
  %36 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %37 = load i32, i32* @ISCSI_REASON_PROTOCOL_ERROR, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @iscsit_reject_cmd(%struct.iscsi_cmd* %36, i32 %37, i8* %38)
  store i32 %39, i32* %5, align 4
  br label %95

40:                                               ; preds = %18, %4
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %40
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %9, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %48 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %43
  %52 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %53 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %58 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @pr_err(i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str.1, i64 0, i64 0), i32 %54, i64 %55, i64 %56, i64 %59)
  %61 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %62 = load i32, i32* @ISCSI_REASON_BOOKMARK_INVALID, align 4
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @iscsit_reject_cmd(%struct.iscsi_cmd* %61, i32 %62, i8* %63)
  store i32 %64, i32* %5, align 4
  br label %95

65:                                               ; preds = %43
  %66 = load i64, i64* %8, align 8
  %67 = load i64, i64* %9, align 8
  %68 = add nsw i64 %66, %67
  store i64 %68, i64* %10, align 8
  br label %73

69:                                               ; preds = %40
  %70 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %71 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %10, align 8
  br label %73

73:                                               ; preds = %69, %65
  br label %74

74:                                               ; preds = %91, %73
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %10, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %94

78:                                               ; preds = %74
  %79 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %80 = load i64, i64* %8, align 8
  %81 = call %struct.iscsi_r2t* @iscsit_get_holder_for_r2tsn(%struct.iscsi_cmd* %79, i64 %80)
  store %struct.iscsi_r2t* %81, %struct.iscsi_r2t** %11, align 8
  %82 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %11, align 8
  %83 = icmp ne %struct.iscsi_r2t* %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  store i32 -1, i32* %5, align 4
  br label %95

85:                                               ; preds = %78
  %86 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %87 = load %struct.iscsi_r2t*, %struct.iscsi_r2t** %11, align 8
  %88 = call i64 @iscsit_send_recovery_r2t_for_snack(%struct.iscsi_cmd* %86, %struct.iscsi_r2t* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i32 -1, i32* %5, align 4
  br label %95

91:                                               ; preds = %85
  %92 = load i64, i64* %8, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %8, align 8
  br label %74

94:                                               ; preds = %74
  store i32 0, i32* %5, align 4
  br label %95

95:                                               ; preds = %94, %90, %84, %51, %24
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i32 @pr_err(i8*, i32, i64, i64, i64) #1

declare dso_local i32 @iscsit_reject_cmd(%struct.iscsi_cmd*, i32, i8*) #1

declare dso_local %struct.iscsi_r2t* @iscsit_get_holder_for_r2tsn(%struct.iscsi_cmd*, i64) #1

declare dso_local i64 @iscsit_send_recovery_r2t_for_snack(%struct.iscsi_cmd*, %struct.iscsi_r2t*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
