; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_send_iscsi_text.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_send_iscsi_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2i_conn = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.iscsi_task = type { i32, i64 }
%struct.bnx2i_text_request = type { i32, i32, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.iscsi_text = type { i32, i32, i32, i32, i32 }

@ISCSI_TASK_TYPE_MPATH = common dso_local global i32 0, align 4
@ISCSI_TEXT_REQUEST_TYPE_SHIFT = common dso_local global i32 0, align 4
@ISCSI_TEXT_REQUEST_NUM_RESP_BDS_SHIFT = common dso_local global i32 0, align 4
@ISCSI_TEXT_REQUEST_RESP_BUFFER_LENGTH_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2i_send_iscsi_text(%struct.bnx2i_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca %struct.bnx2i_conn*, align 8
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca %struct.bnx2i_text_request*, align 8
  %6 = alloca %struct.iscsi_text*, align 8
  %7 = alloca i8*, align 8
  store %struct.bnx2i_conn* %0, %struct.bnx2i_conn** %3, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %4, align 8
  %8 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %9 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.iscsi_text*
  store %struct.iscsi_text* %11, %struct.iscsi_text** %6, align 8
  %12 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %13 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.bnx2i_text_request*
  store %struct.bnx2i_text_request* %18, %struct.bnx2i_text_request** %5, align 8
  %19 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %5, align 8
  %20 = call i32 @memset(%struct.bnx2i_text_request* %19, i32 0, i32 88)
  %21 = load %struct.iscsi_text*, %struct.iscsi_text** %6, align 8
  %22 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %5, align 8
  %25 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %24, i32 0, i32 12
  store i32 %23, i32* %25, align 8
  %26 = load %struct.iscsi_text*, %struct.iscsi_text** %6, align 8
  %27 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %5, align 8
  %30 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %29, i32 0, i32 11
  store i32 %28, i32* %30, align 4
  %31 = load %struct.iscsi_text*, %struct.iscsi_text** %6, align 8
  %32 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntoh24(i32 %33)
  %35 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %5, align 8
  %36 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %35, i32 0, i32 10
  store i32 %34, i32* %36, align 8
  %37 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %38 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @ISCSI_TASK_TYPE_MPATH, align 4
  %41 = load i32, i32* @ISCSI_TEXT_REQUEST_TYPE_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %39, %42
  %44 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %5, align 8
  %45 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.iscsi_text*, %struct.iscsi_text** %6, align 8
  %47 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @be32_to_cpu(i32 %48)
  %50 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %5, align 8
  %51 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %50, i32 0, i32 9
  store i8* %49, i8** %51, align 8
  %52 = load %struct.iscsi_text*, %struct.iscsi_text** %6, align 8
  %53 = getelementptr inbounds %struct.iscsi_text, %struct.iscsi_text* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @be32_to_cpu(i32 %54)
  %56 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %5, align 8
  %57 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %56, i32 0, i32 8
  store i8* %55, i8** %57, align 8
  %58 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %59 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %5, align 8
  %64 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %63, i32 0, i32 7
  store i8* %62, i8** %64, align 8
  %65 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %66 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  %70 = ashr i32 %69, 32
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %5, align 8
  %74 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %73, i32 0, i32 6
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* @ISCSI_TEXT_REQUEST_NUM_RESP_BDS_SHIFT, align 4
  %76 = shl i32 1, %75
  %77 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %78 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @ISCSI_TEXT_REQUEST_RESP_BUFFER_LENGTH_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = or i32 %76, %82
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  store i8* %85, i8** %7, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %5, align 8
  %88 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %87, i32 0, i32 5
  store i8* %86, i8** %88, align 8
  %89 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %90 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %5, align 8
  %95 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %94, i32 0, i32 4
  store i8* %93, i8** %95, align 8
  %96 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %97 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = ashr i32 %100, 32
  %102 = sext i32 %101 to i64
  %103 = inttoptr i64 %102 to i8*
  %104 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %5, align 8
  %105 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %104, i32 0, i32 3
  store i8* %103, i8** %105, align 8
  %106 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %5, align 8
  %107 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  %108 = load %struct.bnx2i_text_request*, %struct.bnx2i_text_request** %5, align 8
  %109 = getelementptr inbounds %struct.bnx2i_text_request, %struct.bnx2i_text_request* %108, i32 0, i32 2
  store i64 0, i64* %109, align 8
  %110 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %3, align 8
  %111 = call i32 @bnx2i_ring_dbell_update_sq_params(%struct.bnx2i_conn* %110, i32 1)
  ret i32 0
}

declare dso_local i32 @memset(%struct.bnx2i_text_request*, i32, i32) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @bnx2i_ring_dbell_update_sq_params(%struct.bnx2i_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
