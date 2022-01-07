; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_handle_recovery_datain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_handle_recovery_datain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i64, i32, i32, i32, %struct.se_cmd, %struct.iscsi_conn* }
%struct.se_cmd = type { i32 }
%struct.iscsi_conn = type { i32 }
%struct.iscsi_datain_req = type { i32, i32, i64, i64, i64 }

@CMD_T_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Ignoring ITT: 0x%08x Data SNACK\0A\00", align 1
@ICF_GOT_DATACK_SNACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [150 x i8] c"ITT: 0x%08x, Data SNACK requesting retransmission of DataSN: 0x%08x to 0x%08x but already acked to DataSN: 0x%08x by Data ACK SNACK, protocol error.\0A\00", align 1
@ISCSI_REASON_PROTOCOL_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [93 x i8] c"Initiator requesting BegRun: 0x%08x, RunLength: 0x%08x greater than maximum DataSN: 0x%08x.\0A\00", align 1
@ISCSI_REASON_BOOKMARK_INVALID = common dso_local global i32 0, align 4
@ISCSI_REASON_BOOKMARK_NO_RESOURCES = common dso_local global i32 0, align 4
@DATAIN_WITHIN_COMMAND_RECOVERY = common dso_local global i32 0, align 4
@ISTATE_SEND_DATAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, i8*, i64, i64)* @iscsit_handle_recovery_datain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_handle_recovery_datain(%struct.iscsi_cmd* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_cmd*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.iscsi_conn*, align 8
  %11 = alloca %struct.iscsi_datain_req*, align 8
  %12 = alloca %struct.se_cmd*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %14 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %13, i32 0, i32 6
  %15 = load %struct.iscsi_conn*, %struct.iscsi_conn** %14, align 8
  store %struct.iscsi_conn* %15, %struct.iscsi_conn** %10, align 8
  %16 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %17 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %16, i32 0, i32 5
  store %struct.se_cmd* %17, %struct.se_cmd** %12, align 8
  %18 = load %struct.se_cmd*, %struct.se_cmd** %12, align 8
  %19 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CMD_T_COMPLETE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %4
  %25 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %26 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %28)
  store i32 0, i32* %5, align 4
  br label %117

30:                                               ; preds = %4
  %31 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %32 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ICF_GOT_DATACK_SNACK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %30
  %38 = load i64, i64* %8, align 8
  %39 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %40 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sle i64 %38, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %37
  %44 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %45 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %9, align 8
  %51 = add nsw i64 %49, %50
  %52 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %53 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([150 x i8], [150 x i8]* @.str.1, i64 0, i64 0), i64 %47, i64 %48, i64 %51, i64 %54)
  %56 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %57 = load i32, i32* @ISCSI_REASON_PROTOCOL_ERROR, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @iscsit_reject_cmd(%struct.iscsi_cmd* %56, i32 %57, i8* %58)
  store i32 %59, i32* %5, align 4
  br label %117

60:                                               ; preds = %37, %30
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %9, align 8
  %63 = add nsw i64 %61, %62
  %64 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %65 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = icmp sgt i64 %63, %68
  br i1 %69, label %70, label %82

70:                                               ; preds = %60
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %74 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = sub nsw i32 %75, 1
  %77 = call i32 (i8*, i64, ...) @pr_err(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.2, i64 0, i64 0), i64 %71, i64 %72, i32 %76)
  %78 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %79 = load i32, i32* @ISCSI_REASON_BOOKMARK_INVALID, align 4
  %80 = load i8*, i8** %7, align 8
  %81 = call i32 @iscsit_reject_cmd(%struct.iscsi_cmd* %78, i32 %79, i8* %80)
  store i32 %81, i32* %5, align 4
  br label %117

82:                                               ; preds = %60
  %83 = call %struct.iscsi_datain_req* (...) @iscsit_allocate_datain_req()
  store %struct.iscsi_datain_req* %83, %struct.iscsi_datain_req** %11, align 8
  %84 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %85 = icmp ne %struct.iscsi_datain_req* %84, null
  br i1 %85, label %91, label %86

86:                                               ; preds = %82
  %87 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %88 = load i32, i32* @ISCSI_REASON_BOOKMARK_NO_RESOURCES, align 4
  %89 = load i8*, i8** %7, align 8
  %90 = call i32 @iscsit_reject_cmd(%struct.iscsi_cmd* %87, i32 %88, i8* %89)
  store i32 %90, i32* %5, align 4
  br label %117

91:                                               ; preds = %82
  %92 = load i64, i64* %8, align 8
  %93 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %94 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %93, i32 0, i32 3
  store i64 %92, i64* %94, align 8
  %95 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %96 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %95, i32 0, i32 4
  store i64 %92, i64* %96, align 8
  %97 = load i64, i64* %9, align 8
  %98 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %99 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %98, i32 0, i32 2
  store i64 %97, i64* %99, align 8
  %100 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %101 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load i32, i32* @DATAIN_WITHIN_COMMAND_RECOVERY, align 4
  %103 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %104 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %106 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %11, align 8
  %107 = call i32 @iscsit_attach_datain_req(%struct.iscsi_cmd* %105, %struct.iscsi_datain_req* %106)
  %108 = load i32, i32* @ISTATE_SEND_DATAIN, align 4
  %109 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %110 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %112 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  %113 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %6, align 8
  %114 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd* %111, %struct.iscsi_conn* %112, i32 %115)
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %91, %86, %70, %43, %24
  %118 = load i32, i32* %5, align 4
  ret i32 %118
}

declare dso_local i32 @pr_err(i8*, i64, ...) #1

declare dso_local i32 @iscsit_reject_cmd(%struct.iscsi_cmd*, i32, i8*) #1

declare dso_local %struct.iscsi_datain_req* @iscsit_allocate_datain_req(...) #1

declare dso_local i32 @iscsit_attach_datain_req(%struct.iscsi_cmd*, %struct.iscsi_datain_req*) #1

declare dso_local i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd*, %struct.iscsi_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
