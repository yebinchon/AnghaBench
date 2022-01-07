; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_get_immediate_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/cxgbit/extr_cxgbit_target.c_cxgbit_get_immediate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i64, i32, i64, i32, %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }
%struct.iscsi_scsi_req = type { i32 }

@IMMEDIATE_DATA_NORMAL_OPERATION = common dso_local global i32 0, align 4
@CMDSN_ERROR_CANNOT_RECOVER = common dso_local global i32 0, align 4
@CMDSN_LOWER_THAN_EXP = common dso_local global i32 0, align 4
@IMMEDIATE_DATA_ERL1_CRC_FAILURE = common dso_local global i32 0, align 4
@ISTATE_REMOVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, %struct.iscsi_scsi_req*, i32)* @cxgbit_get_immediate_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxgbit_get_immediate_data(%struct.iscsi_cmd* %0, %struct.iscsi_scsi_req* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca %struct.iscsi_scsi_req*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iscsi_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %5, align 8
  store %struct.iscsi_scsi_req* %1, %struct.iscsi_scsi_req** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %11, i32 0, i32 5
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %12, align 8
  store %struct.iscsi_conn* %13, %struct.iscsi_conn** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @IMMEDIATE_DATA_NORMAL_OPERATION, align 4
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %25

18:                                               ; preds = %3
  %19 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %20 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %6, align 8
  %21 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %22 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @cxgbit_handle_immediate_data(%struct.iscsi_cmd* %19, %struct.iscsi_scsi_req* %20, i32 %23)
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @IMMEDIATE_DATA_NORMAL_OPERATION, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %65

29:                                               ; preds = %25
  %30 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %31 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %32 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %6, align 8
  %33 = bitcast %struct.iscsi_scsi_req* %32 to i8*
  %34 = load %struct.iscsi_scsi_req*, %struct.iscsi_scsi_req** %6, align 8
  %35 = getelementptr inbounds %struct.iscsi_scsi_req, %struct.iscsi_scsi_req* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @iscsit_sequence_cmd(%struct.iscsi_conn* %30, %struct.iscsi_cmd* %31, i8* %33, i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* @CMDSN_ERROR_CANNOT_RECOVER, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  store i32 -1, i32* %4, align 4
  br label %82

42:                                               ; preds = %29
  %43 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %44 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @CMDSN_LOWER_THAN_EXP, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %47, %42
  %52 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %53 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %52, i32 0, i32 2
  %54 = call i32 @target_put_sess_cmd(i32* %53)
  store i32 0, i32* %4, align 4
  br label %82

55:                                               ; preds = %47
  %56 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %57 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %62 = call i32 @iscsit_set_unsolicited_dataout(%struct.iscsi_cmd* %61)
  br label %63

63:                                               ; preds = %60, %55
  br label %64

64:                                               ; preds = %63
  br label %81

65:                                               ; preds = %25
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @IMMEDIATE_DATA_ERL1_CRC_FAILURE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load i32, i32* @ISTATE_REMOVE, align 4
  %71 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %72 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %74 = load %struct.iscsi_conn*, %struct.iscsi_conn** %8, align 8
  %75 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %76 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @iscsit_add_cmd_to_immediate_queue(%struct.iscsi_cmd* %73, %struct.iscsi_conn* %74, i32 %77)
  br label %80

79:                                               ; preds = %65
  store i32 -1, i32* %4, align 4
  br label %82

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %64
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %81, %79, %51, %41
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @cxgbit_handle_immediate_data(%struct.iscsi_cmd*, %struct.iscsi_scsi_req*, i32) #1

declare dso_local i32 @iscsit_sequence_cmd(%struct.iscsi_conn*, %struct.iscsi_cmd*, i8*, i32) #1

declare dso_local i32 @target_put_sess_cmd(i32*) #1

declare dso_local i32 @iscsit_set_unsolicited_dataout(%struct.iscsi_cmd*) #1

declare dso_local i32 @iscsit_add_cmd_to_immediate_queue(%struct.iscsi_cmd*, %struct.iscsi_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
