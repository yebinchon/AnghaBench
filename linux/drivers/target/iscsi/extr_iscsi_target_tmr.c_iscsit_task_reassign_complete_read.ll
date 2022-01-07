; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tmr.c_iscsit_task_reassign_complete_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tmr.c_iscsit_task_reassign_complete_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, %struct.se_cmd, i32, i64, i32, %struct.iscsi_conn* }
%struct.se_cmd = type { i32, i32 }
%struct.iscsi_conn = type { i32 }
%struct.iscsi_tmr_req = type { i64 }
%struct.iscsi_datain_req = type { i32, i32, i64, i64, i64 }

@ICF_GOT_DATACK_SNACK = common dso_local global i32 0, align 4
@CMD_T_SENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"READ ITT: 0x%08x: t_state: %d never sent to transport\0A\00", align 1
@CMD_T_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"READ ITT: 0x%08x: t_state: %d, never returned from transport\0A\00", align 1
@DATAIN_CONNECTION_RECOVERY = common dso_local global i32 0, align 4
@ISTATE_SEND_DATAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, %struct.iscsi_tmr_req*)* @iscsit_task_reassign_complete_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_task_reassign_complete_read(%struct.iscsi_cmd* %0, %struct.iscsi_tmr_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_tmr_req*, align 8
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.iscsi_datain_req*, align 8
  %8 = alloca %struct.se_cmd*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_tmr_req* %1, %struct.iscsi_tmr_req** %5, align 8
  %9 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %10 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %9, i32 0, i32 5
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %10, align 8
  store %struct.iscsi_conn* %11, %struct.iscsi_conn** %6, align 8
  %12 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %12, i32 0, i32 1
  store %struct.se_cmd* %13, %struct.se_cmd** %8, align 8
  %14 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %5, align 8
  %15 = getelementptr inbounds %struct.iscsi_tmr_req, %struct.iscsi_tmr_req* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ICF_GOT_DATACK_SNACK, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %22 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %26 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  br label %39

27:                                               ; preds = %2
  %28 = load i32, i32* @ICF_GOT_DATACK_SNACK, align 4
  %29 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %5, align 8
  %34 = getelementptr inbounds %struct.iscsi_tmr_req, %struct.iscsi_tmr_req* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %35, 1
  %37 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %38 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %27, %18
  %40 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %41 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CMD_T_SENT, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %39
  %48 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %49 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %52 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pr_debug(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %54)
  %56 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %57 = call i32 @transport_handle_cdb_direct(%struct.se_cmd* %56)
  store i32 0, i32* %3, align 4
  br label %106

58:                                               ; preds = %39
  %59 = load %struct.se_cmd*, %struct.se_cmd** %8, align 8
  %60 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CMD_T_COMPLETE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %74, label %65

65:                                               ; preds = %58
  %66 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %67 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %70 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %68, i32 %72)
  store i32 -1, i32* %3, align 4
  br label %106

74:                                               ; preds = %58
  %75 = call %struct.iscsi_datain_req* (...) @iscsit_allocate_datain_req()
  store %struct.iscsi_datain_req* %75, %struct.iscsi_datain_req** %7, align 8
  %76 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %7, align 8
  %77 = icmp ne %struct.iscsi_datain_req* %76, null
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  store i32 -1, i32* %3, align 4
  br label %106

79:                                               ; preds = %74
  %80 = load %struct.iscsi_tmr_req*, %struct.iscsi_tmr_req** %5, align 8
  %81 = getelementptr inbounds %struct.iscsi_tmr_req, %struct.iscsi_tmr_req* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %7, align 8
  %84 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %83, i32 0, i32 3
  store i64 %82, i64* %84, align 8
  %85 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %7, align 8
  %86 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %85, i32 0, i32 4
  store i64 %82, i64* %86, align 8
  %87 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %7, align 8
  %88 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %87, i32 0, i32 2
  store i64 0, i64* %88, align 8
  %89 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %7, align 8
  %90 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %89, i32 0, i32 0
  store i32 1, i32* %90, align 8
  %91 = load i32, i32* @DATAIN_CONNECTION_RECOVERY, align 4
  %92 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %7, align 8
  %93 = getelementptr inbounds %struct.iscsi_datain_req, %struct.iscsi_datain_req* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %95 = load %struct.iscsi_datain_req*, %struct.iscsi_datain_req** %7, align 8
  %96 = call i32 @iscsit_attach_datain_req(%struct.iscsi_cmd* %94, %struct.iscsi_datain_req* %95)
  %97 = load i32, i32* @ISTATE_SEND_DATAIN, align 4
  %98 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %99 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  %100 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %101 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %102 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %103 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd* %100, %struct.iscsi_conn* %101, i32 %104)
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %79, %78, %65, %47
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @transport_handle_cdb_direct(%struct.se_cmd*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local %struct.iscsi_datain_req* @iscsit_allocate_datain_req(...) #1

declare dso_local i32 @iscsit_attach_datain_req(%struct.iscsi_cmd*, %struct.iscsi_datain_req*) #1

declare dso_local i32 @iscsit_add_cmd_to_response_queue(%struct.iscsi_cmd*, %struct.iscsi_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
