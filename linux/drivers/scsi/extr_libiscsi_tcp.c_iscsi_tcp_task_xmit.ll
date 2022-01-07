; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_task_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_task_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.iscsi_conn* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.iscsi_conn = type { %struct.iscsi_session* }
%struct.iscsi_session = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { {}*, i32 (%struct.iscsi_task*, i32)*, i32 (%struct.iscsi_task*, i64, i64)* }
%struct.iscsi_r2t_info = type { i64, i64, i64, i64 }
%struct.iscsi_data = type { i32 }

@RESERVED_ITT = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"no R2Ts yet\0A\00", align 1
@ISCSI_OP_SCSI_DATA_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"sol dout %p [dsn %d itt 0x%x doff %d dlen %d]\0A\00", align 1
@ISCSI_ERR_XMIT_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_tcp_task_xmit(%struct.iscsi_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_session*, align 8
  %6 = alloca %struct.iscsi_r2t_info*, align 8
  %7 = alloca i32, align 4
  store %struct.iscsi_task* %0, %struct.iscsi_task** %3, align 8
  %8 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %9 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %8, i32 0, i32 2
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  store %struct.iscsi_conn* %10, %struct.iscsi_conn** %4, align 8
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %11, i32 0, i32 0
  %13 = load %struct.iscsi_session*, %struct.iscsi_session** %12, align 8
  store %struct.iscsi_session* %13, %struct.iscsi_session** %5, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %132, %1
  %15 = load %struct.iscsi_session*, %struct.iscsi_session** %5, align 8
  %16 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.iscsi_task*)**
  %20 = load i32 (%struct.iscsi_task*)*, i32 (%struct.iscsi_task*)** %19, align 8
  %21 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %22 = call i32 %20(%struct.iscsi_task* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %14
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %140

27:                                               ; preds = %14
  %28 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %29 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %28, i32 0, i32 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = icmp ne %struct.TYPE_4__* %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %27
  %33 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %34 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %33, i32 0, i32 0
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RESERVED_ITT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %42 = call i32 @iscsi_put_task(%struct.iscsi_task* %41)
  br label %43

43:                                               ; preds = %40, %32
  store i32 0, i32* %2, align 4
  br label %140

44:                                               ; preds = %27
  %45 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %46 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DMA_TO_DEVICE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %140

53:                                               ; preds = %44
  %54 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %55 = call %struct.iscsi_r2t_info* @iscsi_tcp_get_curr_r2t(%struct.iscsi_task* %54)
  store %struct.iscsi_r2t_info* %55, %struct.iscsi_r2t_info** %6, align 8
  %56 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %6, align 8
  %57 = icmp eq %struct.iscsi_r2t_info* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %60 = call i32 (%struct.iscsi_conn*, i8*, ...) @ISCSI_DBG_TCP(%struct.iscsi_conn* %59, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %140

61:                                               ; preds = %53
  %62 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %63 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %62, i32 0, i32 0
  %64 = load %struct.iscsi_session*, %struct.iscsi_session** %63, align 8
  %65 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32 (%struct.iscsi_task*, i32)*, i32 (%struct.iscsi_task*, i32)** %67, align 8
  %69 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %70 = load i32, i32* @ISCSI_OP_SCSI_DATA_OUT, align 4
  %71 = call i32 %68(%struct.iscsi_task* %69, i32 %70)
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %7, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %2, align 4
  br label %140

76:                                               ; preds = %61
  %77 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %78 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %6, align 8
  %79 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %80 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %79, i32 0, i32 0
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = bitcast %struct.TYPE_5__* %81 to %struct.iscsi_data*
  %83 = call i32 @iscsi_prep_data_out_pdu(%struct.iscsi_task* %77, %struct.iscsi_r2t_info* %78, %struct.iscsi_data* %82)
  %84 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %85 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %6, align 8
  %86 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %6, align 8
  %87 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %88, 1
  %90 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %91 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %6, align 8
  %96 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %6, align 8
  %99 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %97, %100
  %102 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %6, align 8
  %103 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 (%struct.iscsi_conn*, i8*, ...) @ISCSI_DBG_TCP(%struct.iscsi_conn* %84, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), %struct.iscsi_r2t_info* %85, i64 %89, i64 %94, i64 %101, i64 %104)
  %106 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %107 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %106, i32 0, i32 0
  %108 = load %struct.iscsi_session*, %struct.iscsi_session** %107, align 8
  %109 = getelementptr inbounds %struct.iscsi_session, %struct.iscsi_session* %108, i32 0, i32 0
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  %112 = load i32 (%struct.iscsi_task*, i64, i64)*, i32 (%struct.iscsi_task*, i64, i64)** %111, align 8
  %113 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %114 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %6, align 8
  %115 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %6, align 8
  %118 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add nsw i64 %116, %119
  %121 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %6, align 8
  %122 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = call i32 %112(%struct.iscsi_task* %113, i64 %120, i64 %123)
  store i32 %124, i32* %7, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %76
  %128 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %129 = load i32, i32* @ISCSI_ERR_XMIT_FAILED, align 4
  %130 = call i32 @iscsi_conn_failure(%struct.iscsi_conn* %128, i32 %129)
  %131 = load i32, i32* %7, align 4
  store i32 %131, i32* %2, align 4
  br label %140

132:                                              ; preds = %76
  %133 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %6, align 8
  %134 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %6, align 8
  %137 = getelementptr inbounds %struct.iscsi_r2t_info, %struct.iscsi_r2t_info* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = add nsw i64 %138, %135
  store i64 %139, i64* %137, align 8
  br label %14

140:                                              ; preds = %127, %74, %58, %52, %43, %25
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @iscsi_put_task(%struct.iscsi_task*) #1

declare dso_local %struct.iscsi_r2t_info* @iscsi_tcp_get_curr_r2t(%struct.iscsi_task*) #1

declare dso_local i32 @ISCSI_DBG_TCP(%struct.iscsi_conn*, i8*, ...) #1

declare dso_local i32 @iscsi_prep_data_out_pdu(%struct.iscsi_task*, %struct.iscsi_r2t_info*, %struct.iscsi_data*) #1

declare dso_local i32 @iscsi_conn_failure(%struct.iscsi_conn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
