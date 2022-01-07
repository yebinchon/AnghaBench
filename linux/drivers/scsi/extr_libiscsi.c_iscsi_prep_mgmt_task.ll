; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_prep_mgmt_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi.c_iscsi_prep_mgmt_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i64, i32, %struct.iscsi_session* }
%struct.iscsi_session = type { i64, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i64 (%struct.iscsi_task*)* }
%struct.iscsi_task = type { i32, i32, %struct.iscsi_hdr* }
%struct.iscsi_hdr = type { i64, i64 }
%struct.iscsi_nopout = type { i8*, i8* }

@ISCSI_OPCODE_MASK = common dso_local global i64 0, align 8
@ISCSI_STATE_LOGGING_OUT = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4
@ISCSI_OP_LOGIN = common dso_local global i64 0, align 8
@ISCSI_OP_TEXT = common dso_local global i64 0, align 8
@RESERVED_ITT = common dso_local global i64 0, align 8
@ISCSI_CONN_STARTED = common dso_local global i64 0, align 8
@ISCSI_OP_IMMEDIATE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ISCSI_OP_LOGOUT = common dso_local global i64 0, align 8
@ISCSI_TASK_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"mgmtpdu [op 0x%x hdr->itt 0x%x datalen %d]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_task*)* @iscsi_prep_mgmt_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_prep_mgmt_task(%struct.iscsi_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_task*, align 8
  %6 = alloca %struct.iscsi_session*, align 8
  %7 = alloca %struct.iscsi_hdr*, align 8
  %8 = alloca %struct.iscsi_nopout*, align 8
  %9 = alloca i64, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %5, align 8
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %10, i32 0, i32 2
  %12 = load %struct.iscsi_session*, %struct.iscsi_session** %11, align 8
  store %struct.iscsi_session* %12, %struct.iscsi_session** %6, align 8
  %13 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %14 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %13, i32 0, i32 2
  %15 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %14, align 8
  store %struct.iscsi_hdr* %15, %struct.iscsi_hdr** %7, align 8
  %16 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %17 = bitcast %struct.iscsi_hdr* %16 to %struct.iscsi_nopout*
  store %struct.iscsi_nopout* %17, %struct.iscsi_nopout** %8, align 8
  %18 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %19 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ISCSI_OPCODE_MASK, align 8
  %22 = and i64 %20, %21
  store i64 %22, i64* %9, align 8
  %23 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %24 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %23, i32 0, i32 2
  %25 = load %struct.iscsi_session*, %struct.iscsi_session** %24, align 8
  %26 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ISCSI_STATE_LOGGING_OUT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @ENOTCONN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %132

33:                                               ; preds = %2
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* @ISCSI_OP_LOGIN, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* @ISCSI_OP_TEXT, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %43 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i8* @cpu_to_be32(i32 %44)
  %46 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %8, align 8
  %47 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %46, i32 0, i32 1
  store i8* %45, i8** %47, align 8
  br label %48

48:                                               ; preds = %41, %37, %33
  %49 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %50 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i8* @cpu_to_be32(i32 %51)
  %53 = load %struct.iscsi_nopout*, %struct.iscsi_nopout** %8, align 8
  %54 = getelementptr inbounds %struct.iscsi_nopout, %struct.iscsi_nopout* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  %55 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %56 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @RESERVED_ITT, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %84

60:                                               ; preds = %48
  %61 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %62 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ISCSI_CONN_STARTED, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %60
  %67 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %68 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* @ISCSI_OP_IMMEDIATE, align 4
  %71 = sext i32 %70 to i64
  %72 = and i64 %69, %71
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %66
  %75 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %76 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %80 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %74, %66, %60
  br label %84

84:                                               ; preds = %83, %48
  %85 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %86 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %85, i32 0, i32 1
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64 (%struct.iscsi_task*)*, i64 (%struct.iscsi_task*)** %88, align 8
  %90 = icmp ne i64 (%struct.iscsi_task*)* %89, null
  br i1 %90, label %91, label %103

91:                                               ; preds = %84
  %92 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %93 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %92, i32 0, i32 1
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i64 (%struct.iscsi_task*)*, i64 (%struct.iscsi_task*)** %95, align 8
  %97 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %98 = call i64 %96(%struct.iscsi_task* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %91
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %132

103:                                              ; preds = %91, %84
  %104 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %105 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @ISCSI_OPCODE_MASK, align 8
  %108 = and i64 %106, %107
  %109 = load i64, i64* @ISCSI_OP_LOGOUT, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %103
  %112 = load i64, i64* @ISCSI_STATE_LOGGING_OUT, align 8
  %113 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %114 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  br label %115

115:                                              ; preds = %111, %103
  %116 = load i32, i32* @ISCSI_TASK_RUNNING, align 4
  %117 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %118 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.iscsi_session*, %struct.iscsi_session** %6, align 8
  %120 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %121 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @ISCSI_OPCODE_MASK, align 8
  %124 = and i64 %122, %123
  %125 = load %struct.iscsi_hdr*, %struct.iscsi_hdr** %7, align 8
  %126 = getelementptr inbounds %struct.iscsi_hdr, %struct.iscsi_hdr* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.iscsi_task*, %struct.iscsi_task** %5, align 8
  %129 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @ISCSI_DBG_SESSION(%struct.iscsi_session* %119, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %124, i64 %127, i32 %130)
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %115, %100, %30
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @ISCSI_DBG_SESSION(%struct.iscsi_session*, i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
