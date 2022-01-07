; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_send_iscsi_logout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_send_iscsi_logout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_conn = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.iscsi_task = type { i64, i64 }
%struct.bnx2i_logout_request = type { i32, i32, i32, i64, i8*, i8*, i64, i64, i32, i32 }
%struct.iscsi_logout = type { i32, i32, i32 }

@ISCSI_LOGOUT_REQUEST_ALWAYS_ONE = common dso_local global i32 0, align 4
@ISCSI_TASK_TYPE_MPATH = common dso_local global i32 0, align 4
@ISCSI_LOGOUT_REQUEST_TYPE_SHIFT = common dso_local global i32 0, align 4
@EP_STATE_LOGOUT_SENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2i_send_iscsi_logout(%struct.bnx2i_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca %struct.bnx2i_conn*, align 8
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca %struct.bnx2i_logout_request*, align 8
  %6 = alloca %struct.iscsi_logout*, align 8
  store %struct.bnx2i_conn* %0, %struct.bnx2i_conn** %3, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %4, align 8
  %7 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %8 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.iscsi_logout*
  store %struct.iscsi_logout* %10, %struct.iscsi_logout** %6, align 8
  %11 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %12 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.bnx2i_logout_request*
  store %struct.bnx2i_logout_request* %17, %struct.bnx2i_logout_request** %5, align 8
  %18 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %5, align 8
  %19 = call i32 @memset(%struct.bnx2i_logout_request* %18, i32 0, i32 64)
  %20 = load %struct.iscsi_logout*, %struct.iscsi_logout** %6, align 8
  %21 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %5, align 8
  %24 = getelementptr inbounds %struct.bnx2i_logout_request, %struct.bnx2i_logout_request* %23, i32 0, i32 9
  store i32 %22, i32* %24, align 4
  %25 = load %struct.iscsi_logout*, %struct.iscsi_logout** %6, align 8
  %26 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @be32_to_cpu(i32 %27)
  %29 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %5, align 8
  %30 = getelementptr inbounds %struct.bnx2i_logout_request, %struct.bnx2i_logout_request* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load %struct.iscsi_logout*, %struct.iscsi_logout** %6, align 8
  %32 = getelementptr inbounds %struct.iscsi_logout, %struct.iscsi_logout* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ISCSI_LOGOUT_REQUEST_ALWAYS_ONE, align 4
  %35 = or i32 %33, %34
  %36 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %5, align 8
  %37 = getelementptr inbounds %struct.bnx2i_logout_request, %struct.bnx2i_logout_request* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %39 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @ISCSI_TASK_TYPE_MPATH, align 4
  %43 = load i32, i32* @ISCSI_LOGOUT_REQUEST_TYPE_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = or i32 %41, %44
  %46 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %5, align 8
  %47 = getelementptr inbounds %struct.bnx2i_logout_request, %struct.bnx2i_logout_request* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %5, align 8
  %49 = getelementptr inbounds %struct.bnx2i_logout_request, %struct.bnx2i_logout_request* %48, i32 0, i32 7
  store i64 0, i64* %49, align 8
  %50 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %5, align 8
  %51 = getelementptr inbounds %struct.bnx2i_logout_request, %struct.bnx2i_logout_request* %50, i32 0, i32 6
  store i64 0, i64* %51, align 8
  %52 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %53 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %5, align 8
  %59 = getelementptr inbounds %struct.bnx2i_logout_request, %struct.bnx2i_logout_request* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %61 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %60, i32 0, i32 1
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = ashr i32 %65, 32
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %5, align 8
  %70 = getelementptr inbounds %struct.bnx2i_logout_request, %struct.bnx2i_logout_request* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %5, align 8
  %72 = getelementptr inbounds %struct.bnx2i_logout_request, %struct.bnx2i_logout_request* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  %73 = load %struct.bnx2i_logout_request*, %struct.bnx2i_logout_request** %5, align 8
  %74 = getelementptr inbounds %struct.bnx2i_logout_request, %struct.bnx2i_logout_request* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @EP_STATE_LOGOUT_SENT, align 4
  %76 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %77 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %76, i32 0, i32 0
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 8
  %80 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %81 = call i32 @bnx2i_ring_dbell_update_sq_params(%struct.bnx2i_conn* %80, i32 1)
  ret i32 0
}

declare dso_local i32 @memset(%struct.bnx2i_logout_request*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @bnx2i_ring_dbell_update_sq_params(%struct.bnx2i_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
