; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_send_iscsi_login.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_send_iscsi_login.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_conn = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.iscsi_task = type { i32, i64 }
%struct.bnx2i_login_request = type { i32, i32, i64, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i32 }
%struct.iscsi_login_req = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }

@ISCSI_TASK_TYPE_MPATH = common dso_local global i32 0, align 4
@ISCSI_LOGIN_REQUEST_TYPE_SHIFT = common dso_local global i32 0, align 4
@ISCSI_LOGIN_REQUEST_UPDATE_EXP_STAT_SN = common dso_local global i32 0, align 4
@ISCSI_LOGIN_REQUEST_NUM_RESP_BDS_SHIFT = common dso_local global i32 0, align 4
@ISCSI_LOGIN_REQUEST_RESP_BUFFER_LENGTH_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2i_send_iscsi_login(%struct.bnx2i_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca %struct.bnx2i_conn*, align 8
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca %struct.bnx2i_login_request*, align 8
  %6 = alloca %struct.iscsi_login_req*, align 8
  %7 = alloca i8*, align 8
  store %struct.bnx2i_conn* %0, %struct.bnx2i_conn** %3, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %4, align 8
  %8 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.iscsi_login_req*
  store %struct.iscsi_login_req* %11, %struct.iscsi_login_req** %6, align 8
  %12 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %13 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.bnx2i_login_request*
  store %struct.bnx2i_login_request* %18, %struct.bnx2i_login_request** %5, align 8
  %19 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %20 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %5, align 8
  %23 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %22, i32 0, i32 19
  store i32 %21, i32* %23, align 8
  %24 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %25 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %5, align 8
  %28 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %27, i32 0, i32 18
  store i32 %26, i32* %28, align 4
  %29 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %30 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %5, align 8
  %33 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %32, i32 0, i32 17
  store i32 %31, i32* %33, align 8
  %34 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %35 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %5, align 8
  %38 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %37, i32 0, i32 16
  store i32 %36, i32* %38, align 4
  %39 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %40 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @ntoh24(i32 %41)
  %43 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %5, align 8
  %44 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %43, i32 0, i32 15
  store i32 %42, i32* %44, align 8
  %45 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %46 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8**
  %49 = load i8*, i8** %48, align 8
  %50 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %5, align 8
  %51 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %50, i32 0, i32 14
  store i8* %49, i8** %51, align 8
  %52 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %53 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to i32*
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %5, align 8
  %59 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %58, i32 0, i32 13
  store i32 %57, i32* %59, align 8
  %60 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %61 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %5, align 8
  %64 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %63, i32 0, i32 12
  store i32 %62, i32* %64, align 4
  %65 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %66 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ISCSI_TASK_TYPE_MPATH, align 4
  %69 = load i32, i32* @ISCSI_LOGIN_REQUEST_TYPE_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %67, %70
  %72 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %5, align 8
  %73 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %75 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %5, align 8
  %78 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %77, i32 0, i32 11
  store i32 %76, i32* %78, align 8
  %79 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %80 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @be32_to_cpu(i32 %81)
  %83 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %5, align 8
  %84 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %83, i32 0, i32 10
  store i8* %82, i8** %84, align 8
  %85 = load %struct.iscsi_login_req*, %struct.iscsi_login_req** %6, align 8
  %86 = getelementptr inbounds %struct.iscsi_login_req, %struct.iscsi_login_req* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i8* @be32_to_cpu(i32 %87)
  %89 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %5, align 8
  %90 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %89, i32 0, i32 9
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* @ISCSI_LOGIN_REQUEST_UPDATE_EXP_STAT_SN, align 4
  %92 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %5, align 8
  %93 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %92, i32 0, i32 8
  store i32 %91, i32* %93, align 8
  %94 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %95 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = inttoptr i64 %97 to i8*
  %99 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %5, align 8
  %100 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %99, i32 0, i32 7
  store i8* %98, i8** %100, align 8
  %101 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %102 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = ashr i32 %105, 32
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %5, align 8
  %110 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %109, i32 0, i32 6
  store i8* %108, i8** %110, align 8
  %111 = load i32, i32* @ISCSI_LOGIN_REQUEST_NUM_RESP_BDS_SHIFT, align 4
  %112 = shl i32 1, %111
  %113 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %114 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @ISCSI_LOGIN_REQUEST_RESP_BUFFER_LENGTH_SHIFT, align 4
  %118 = shl i32 %116, %117
  %119 = or i32 %112, %118
  %120 = sext i32 %119 to i64
  %121 = inttoptr i64 %120 to i8*
  store i8* %121, i8** %7, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %5, align 8
  %124 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %123, i32 0, i32 5
  store i8* %122, i8** %124, align 8
  %125 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %126 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %5, align 8
  %131 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %130, i32 0, i32 4
  store i8* %129, i8** %131, align 8
  %132 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %133 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = trunc i64 %135 to i32
  %137 = ashr i32 %136, 32
  %138 = sext i32 %137 to i64
  %139 = inttoptr i64 %138 to i8*
  %140 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %5, align 8
  %141 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %140, i32 0, i32 3
  store i8* %139, i8** %141, align 8
  %142 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %5, align 8
  %143 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %142, i32 0, i32 1
  store i32 1, i32* %143, align 4
  %144 = load %struct.bnx2i_login_request*, %struct.bnx2i_login_request** %5, align 8
  %145 = getelementptr inbounds %struct.bnx2i_login_request, %struct.bnx2i_login_request* %144, i32 0, i32 2
  store i64 0, i64* %145, align 8
  %146 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %147 = call i32 @bnx2i_ring_dbell_update_sq_params(%struct.bnx2i_conn* %146, i32 1)
  ret i32 0
}

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @bnx2i_ring_dbell_update_sq_params(%struct.bnx2i_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
