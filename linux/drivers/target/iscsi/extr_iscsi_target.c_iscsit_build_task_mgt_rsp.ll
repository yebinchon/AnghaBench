; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_build_task_mgt_rsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target.c_iscsit_build_task_mgt_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.se_tmr_req* }
%struct.se_tmr_req = type { i32 }
%struct.iscsi_conn = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.iscsi_tm_rsp = type { i32, i8*, i8*, i8*, i32, i32, i32 }

@ISCSI_OP_SCSI_TMFUNC_RSP = common dso_local global i32 0, align 4
@ISCSI_FLAG_CMD_FINAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [88 x i8] c"Built Task Management Response ITT: 0x%08x, StatSN: 0x%08x, Response: 0x%02x, CID: %hu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsit_build_task_mgt_rsp(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1, %struct.iscsi_tm_rsp* %2) #0 {
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca %struct.iscsi_tm_rsp*, align 8
  %7 = alloca %struct.se_tmr_req*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %5, align 8
  store %struct.iscsi_tm_rsp* %2, %struct.iscsi_tm_rsp** %6, align 8
  %8 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.se_tmr_req*, %struct.se_tmr_req** %10, align 8
  store %struct.se_tmr_req* %11, %struct.se_tmr_req** %7, align 8
  %12 = load i32, i32* @ISCSI_OP_SCSI_TMFUNC_RSP, align 4
  %13 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %6, align 8
  %14 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @ISCSI_FLAG_CMD_FINAL, align 4
  %16 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %6, align 8
  %17 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load %struct.se_tmr_req*, %struct.se_tmr_req** %7, align 8
  %19 = call i32 @iscsit_convert_tcm_tmr_rsp(%struct.se_tmr_req* %18)
  %20 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %6, align 8
  %21 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %6, align 8
  %26 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %25, i32 0, i32 4
  store i32 %24, i32* %26, align 8
  %27 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %28 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = sext i32 %29 to i64
  %32 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %33 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %35 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i8* @cpu_to_be32(i64 %36)
  %38 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %6, align 8
  %39 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %38, i32 0, i32 3
  store i8* %37, i8** %39, align 8
  %40 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %41 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %42 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = call i32 @iscsit_increment_maxcmdsn(%struct.iscsi_cmd* %40, %struct.TYPE_4__* %43)
  %45 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %46 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i8* @cpu_to_be32(i64 %49)
  %51 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %6, align 8
  %52 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %54 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %53, i32 0, i32 1
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = call i64 @atomic_read(i32* %56)
  %58 = call i8* @cpu_to_be32(i64 %57)
  %59 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %6, align 8
  %60 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %62 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %65 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.iscsi_tm_rsp*, %struct.iscsi_tm_rsp** %6, align 8
  %68 = getelementptr inbounds %struct.iscsi_tm_rsp, %struct.iscsi_tm_rsp* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %71 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @pr_debug(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %63, i64 %66, i32 %69, i32 %72)
  ret void
}

declare dso_local i32 @iscsit_convert_tcm_tmr_rsp(%struct.se_tmr_req*) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @iscsit_increment_maxcmdsn(%struct.iscsi_cmd*, %struct.TYPE_4__*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
