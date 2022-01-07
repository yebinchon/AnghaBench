; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_check_pre_dataout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl0.c_iscsit_check_pre_dataout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, %struct.iscsi_conn* }
%struct.iscsi_conn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@DATAOUT_WITHIN_COMMAND_RECOVERY = common dso_local global i32 0, align 4
@DATAOUT_CANNOT_RECOVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_check_pre_dataout(%struct.iscsi_cmd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iscsi_conn*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %8, i32 0, i32 1
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  store %struct.iscsi_conn* %10, %struct.iscsi_conn** %7, align 8
  %11 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @iscsit_dataout_within_command_recovery_check(%struct.iscsi_cmd* %11, i8* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @DATAOUT_WITHIN_COMMAND_RECOVERY, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %2
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %88

23:                                               ; preds = %17
  %24 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @iscsit_dataout_check_datasn(%struct.iscsi_cmd* %24, i8* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @DATAOUT_WITHIN_COMMAND_RECOVERY, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %23
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30, %23
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %88

36:                                               ; preds = %30
  %37 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %38 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = call i32 @iscsit_dataout_check_unsolicited_sequence(%struct.iscsi_cmd* %42, i8* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @DATAOUT_WITHIN_COMMAND_RECOVERY, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48, %41
  %53 = load i32, i32* %6, align 4
  store i32 %53, i32* %3, align 4
  br label %88

54:                                               ; preds = %48
  br label %69

55:                                               ; preds = %36
  %56 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %57 = load i8*, i8** %5, align 8
  %58 = call i32 @iscsit_dataout_check_sequence(%struct.iscsi_cmd* %56, i8* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @DATAOUT_WITHIN_COMMAND_RECOVERY, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %55
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %88

68:                                               ; preds = %62
  br label %69

69:                                               ; preds = %68, %54
  %70 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %71 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @iscsit_dataout_pre_datapduinorder_yes(%struct.iscsi_cmd* %79, i8* %80)
  br label %86

82:                                               ; preds = %69
  %83 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %84 = load i8*, i8** %5, align 8
  %85 = call i32 @iscsit_dataout_pre_datapduinorder_no(%struct.iscsi_cmd* %83, i8* %84)
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi i32 [ %81, %78 ], [ %85, %82 ]
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %86, %66, %52, %34, %21
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @iscsit_dataout_within_command_recovery_check(%struct.iscsi_cmd*, i8*) #1

declare dso_local i32 @iscsit_dataout_check_datasn(%struct.iscsi_cmd*, i8*) #1

declare dso_local i32 @iscsit_dataout_check_unsolicited_sequence(%struct.iscsi_cmd*, i8*) #1

declare dso_local i32 @iscsit_dataout_check_sequence(%struct.iscsi_cmd*, i8*) #1

declare dso_local i32 @iscsit_dataout_pre_datapduinorder_yes(%struct.iscsi_cmd*, i8*) #1

declare dso_local i32 @iscsit_dataout_pre_datapduinorder_no(%struct.iscsi_cmd*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
