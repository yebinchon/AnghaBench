; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_process_scsi_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_process_scsi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32 }
%struct.iscsi_cmd = type { i64, i32, i64, i32 }
%struct.iscsi_scsi_req = type { i32, i32 }

@CMDSN_ERROR_CANNOT_RECOVER = common dso_local global i32 0, align 4
@CMDSN_LOWER_THAN_EXP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_process_scsi_cmd(%struct.iscsi_conn* %0, %struct.iscsi_cmd* %1, %struct.iscsi_scsi_req* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca %struct.iscsi_scsi_req*, align 8
  %8 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_cmd* %1, %struct.iscsi_cmd** %6, align 8
  store %struct.iscsi_scsi_req* %2, %struct.iscsi_scsi_req** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %10 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %36, label %13

13:                                               ; preds = %3
  %14 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %15 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %16 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %7, align 8
  %17 = bitcast %struct.iscsi_scsi_req* %16 to i8*
  %18 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %7, align 8
  %19 = getelementptr inbounds %struct.iscsi_scsi_req, %struct.iscsi_scsi_req* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @iscsit_sequence_cmd(%struct.iscsi_conn* %14, %struct.iscsi_cmd* %15, i8* %17, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @CMDSN_ERROR_CANNOT_RECOVER, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  store i32 -1, i32* %4, align 4
  br label %88

26:                                               ; preds = %13
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @CMDSN_LOWER_THAN_EXP, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %32 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %31, i32 0, i32 1
  %33 = call i32 @target_put_sess_cmd(i32* %32)
  store i32 0, i32* %4, align 4
  br label %88

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %38 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %7, align 8
  %39 = getelementptr inbounds %struct.iscsi_scsi_req, %struct.iscsi_scsi_req* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be32_to_cpu(i32 %40)
  %42 = call i32 @iscsit_ack_from_expstatsn(%struct.iscsi_conn* %37, i32 %41)
  %43 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %44 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %70, label %47

47:                                               ; preds = %36
  %48 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %49 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %54 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %59 = call i32 @iscsit_set_unsolicited_dataout(%struct.iscsi_cmd* %58)
  br label %60

60:                                               ; preds = %57, %52, %47
  %61 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %62 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %88

66:                                               ; preds = %60
  %67 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %68 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %67, i32 0, i32 1
  %69 = call i32 @target_put_sess_cmd(i32* %68)
  store i32 0, i32* %4, align 4
  br label %88

70:                                               ; preds = %36
  %71 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %72 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  store i32 1, i32* %4, align 4
  br label %88

76:                                               ; preds = %70
  %77 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %78 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %77, i32 0, i32 1
  %79 = call i64 @transport_generic_new_cmd(i32* %78)
  %80 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %81 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %83 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  store i32 1, i32* %4, align 4
  br label %88

87:                                               ; preds = %76
  store i32 0, i32* %4, align 4
  br label %88

88:                                               ; preds = %87, %86, %75, %66, %65, %30, %25
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @iscsit_sequence_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*, i32) #1

declare dso_local i32 @target_put_sess_cmd(i32*) #1

declare dso_local i32 @iscsit_ack_from_expstatsn(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @iscsit_set_unsolicited_dataout(%struct.iscsi_cmd*) #1

declare dso_local i64 @transport_generic_new_cmd(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
