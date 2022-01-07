; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_process_text_resp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bnx2i/extr_bnx2i_hwi.c_bnx2i_process_text_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session = type { i32 }
%struct.bnx2i_conn = type { %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64*, i64*, i32 }
%struct.TYPE_4__ = type { %struct.iscsi_conn* }
%struct.iscsi_conn = type { i32 }
%struct.cqe = type { i32 }
%struct.iscsi_task = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.bnx2i_text_response = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.iscsi_text_rsp = type { i8*, i8*, i32, i8*, i32, i32, i64, i32, i32 }
%struct.iscsi_hdr = type { i32 }

@ISCSI_LOGIN_RESPONSE_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_session*, %struct.bnx2i_conn*, %struct.cqe*)* @bnx2i_process_text_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2i_process_text_resp(%struct.iscsi_session* %0, %struct.bnx2i_conn* %1, %struct.cqe* %2) #0 {
  %4 = alloca %struct.iscsi_session*, align 8
  %5 = alloca %struct.bnx2i_conn*, align 8
  %6 = alloca %struct.cqe*, align 8
  %7 = alloca %struct.iscsi_conn*, align 8
  %8 = alloca %struct.iscsi_task*, align 8
  %9 = alloca %struct.bnx2i_text_response*, align 8
  %10 = alloca %struct.iscsi_text_rsp*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iscsi_session* %0, %struct.iscsi_session** %4, align 8
  store %struct.bnx2i_conn* %1, %struct.bnx2i_conn** %5, align 8
  store %struct.cqe* %2, %struct.cqe** %6, align 8
  %14 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %15 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.iscsi_conn*, %struct.iscsi_conn** %17, align 8
  store %struct.iscsi_conn* %18, %struct.iscsi_conn** %7, align 8
  %19 = load %struct.cqe*, %struct.cqe** %6, align 8
  %20 = bitcast %struct.cqe* %19 to %struct.bnx2i_text_response*
  store %struct.bnx2i_text_response* %20, %struct.bnx2i_text_response** %9, align 8
  %21 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %22 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %25 = load %struct.bnx2i_text_response*, %struct.bnx2i_text_response** %9, align 8
  %26 = getelementptr inbounds %struct.bnx2i_text_response, %struct.bnx2i_text_response* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ISCSI_LOGIN_RESPONSE_INDEX, align 4
  %29 = and i32 %27, %28
  %30 = call %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn* %24, i32 %29)
  store %struct.iscsi_task* %30, %struct.iscsi_task** %8, align 8
  %31 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %32 = icmp ne %struct.iscsi_task* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %3
  br label %157

34:                                               ; preds = %3
  %35 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %36 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = bitcast i32* %37 to %struct.iscsi_text_rsp*
  store %struct.iscsi_text_rsp* %38, %struct.iscsi_text_rsp** %10, align 8
  %39 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %10, align 8
  %40 = call i32 @memset(%struct.iscsi_text_rsp* %39, i32 0, i32 4)
  %41 = load %struct.bnx2i_text_response*, %struct.bnx2i_text_response** %9, align 8
  %42 = getelementptr inbounds %struct.bnx2i_text_response, %struct.bnx2i_text_response* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %10, align 8
  %45 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %44, i32 0, i32 8
  store i32 %43, i32* %45, align 4
  %46 = load %struct.bnx2i_text_response*, %struct.bnx2i_text_response** %9, align 8
  %47 = getelementptr inbounds %struct.bnx2i_text_response, %struct.bnx2i_text_response* %46, i32 0, i32 5
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %10, align 8
  %50 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %10, align 8
  %52 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %51, i32 0, i32 6
  store i64 0, i64* %52, align 8
  %53 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %10, align 8
  %54 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.bnx2i_text_response*, %struct.bnx2i_text_response** %9, align 8
  %57 = getelementptr inbounds %struct.bnx2i_text_response, %struct.bnx2i_text_response* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @hton24(i32 %55, i32 %58)
  %60 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %61 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %60, i32 0, i32 0
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %10, align 8
  %66 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.bnx2i_text_response*, %struct.bnx2i_text_response** %9, align 8
  %68 = getelementptr inbounds %struct.bnx2i_text_response, %struct.bnx2i_text_response* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @cpu_to_be32(i32 %69)
  %71 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %10, align 8
  %72 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.iscsi_task*, %struct.iscsi_task** %8, align 8
  %74 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %73, i32 0, i32 0
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %10, align 8
  %79 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.bnx2i_text_response*, %struct.bnx2i_text_response** %9, align 8
  %81 = getelementptr inbounds %struct.bnx2i_text_response, %struct.bnx2i_text_response* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @cpu_to_be32(i32 %82)
  %84 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %10, align 8
  %85 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load %struct.bnx2i_text_response*, %struct.bnx2i_text_response** %9, align 8
  %87 = getelementptr inbounds %struct.bnx2i_text_response, %struct.bnx2i_text_response* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @cpu_to_be32(i32 %88)
  %90 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %10, align 8
  %91 = getelementptr inbounds %struct.iscsi_text_rsp, %struct.iscsi_text_rsp* %90, i32 0, i32 0
  store i8* %89, i8** %91, align 8
  %92 = load %struct.bnx2i_text_response*, %struct.bnx2i_text_response** %9, align 8
  %93 = getelementptr inbounds %struct.bnx2i_text_response, %struct.bnx2i_text_response* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  store i32 %94, i32* %11, align 4
  %95 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %96 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64*, i64** %97, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %98, i64 %100
  %102 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %103 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  store i64* %101, i64** %104, align 8
  store i32 0, i32* %12, align 4
  %105 = load i32, i32* %11, align 4
  %106 = and i32 %105, 3
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %34
  %109 = load i32, i32* %11, align 4
  %110 = srem i32 %109, 4
  %111 = sub nsw i32 4, %110
  store i32 %111, i32* %12, align 4
  br label %112

112:                                              ; preds = %108, %34
  %113 = load i32, i32* %12, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %135

115:                                              ; preds = %112
  store i32 0, i32* %13, align 4
  store i32 0, i32* %13, align 4
  br label %116

116:                                              ; preds = %131, %115
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %12, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %134

120:                                              ; preds = %116
  %121 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %122 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 1
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 0
  store i64 0, i64* %125, align 8
  %126 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %127 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i64*, i64** %128, align 8
  %130 = getelementptr inbounds i64, i64* %129, i32 1
  store i64* %130, i64** %128, align 8
  br label %131

131:                                              ; preds = %120
  %132 = load i32, i32* %13, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %13, align 4
  br label %116

134:                                              ; preds = %116
  br label %135

135:                                              ; preds = %134, %112
  %136 = load %struct.iscsi_conn*, %struct.iscsi_conn** %7, align 8
  %137 = load %struct.iscsi_text_rsp*, %struct.iscsi_text_rsp** %10, align 8
  %138 = bitcast %struct.iscsi_text_rsp* %137 to %struct.iscsi_hdr*
  %139 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %140 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i64*, i64** %141, align 8
  %143 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %144 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 1
  %146 = load i64*, i64** %145, align 8
  %147 = load %struct.bnx2i_conn*, %struct.bnx2i_conn** %5, align 8
  %148 = getelementptr inbounds %struct.bnx2i_conn, %struct.bnx2i_conn* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i64*, i64** %149, align 8
  %151 = ptrtoint i64* %146 to i64
  %152 = ptrtoint i64* %150 to i64
  %153 = sub i64 %151, %152
  %154 = sdiv exact i64 %153, 8
  %155 = inttoptr i64 %154 to i64*
  %156 = call i32 @__iscsi_complete_pdu(%struct.iscsi_conn* %136, %struct.iscsi_hdr* %138, i64* %142, i64* %155)
  br label %157

157:                                              ; preds = %135, %33
  %158 = load %struct.iscsi_session*, %struct.iscsi_session** %4, align 8
  %159 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %158, i32 0, i32 0
  %160 = call i32 @spin_unlock(i32* %159)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.iscsi_task* @iscsi_itt_to_task(%struct.iscsi_conn*, i32) #1

declare dso_local i32 @memset(%struct.iscsi_text_rsp*, i32, i32) #1

declare dso_local i32 @hton24(i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @__iscsi_complete_pdu(%struct.iscsi_conn*, %struct.iscsi_hdr*, i64*, i64*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
