; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_process_tcp_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_process_tcp_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_endpoint = type { %struct.TYPE_2__*, %struct.qedi_conn* }
%struct.TYPE_2__ = type { i32 }
%struct.qedi_conn = type { i32 }
%struct.iscsi_eqe_data = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"async event TCP error:0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedi_process_tcp_error(%struct.qedi_endpoint* %0, %struct.iscsi_eqe_data* %1) #0 {
  %3 = alloca %struct.qedi_endpoint*, align 8
  %4 = alloca %struct.iscsi_eqe_data*, align 8
  %5 = alloca %struct.qedi_conn*, align 8
  store %struct.qedi_endpoint* %0, %struct.qedi_endpoint** %3, align 8
  store %struct.iscsi_eqe_data* %1, %struct.iscsi_eqe_data** %4, align 8
  %6 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %7 = icmp ne %struct.qedi_endpoint* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %2
  br label %30

9:                                                ; preds = %2
  %10 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %11 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %10, i32 0, i32 1
  %12 = load %struct.qedi_conn*, %struct.qedi_conn** %11, align 8
  store %struct.qedi_conn* %12, %struct.qedi_conn** %5, align 8
  %13 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %14 = icmp ne %struct.qedi_conn* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  br label %30

16:                                               ; preds = %9
  %17 = load %struct.qedi_endpoint*, %struct.qedi_endpoint** %3, align 8
  %18 = getelementptr inbounds %struct.qedi_endpoint, %struct.qedi_endpoint* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.iscsi_eqe_data*, %struct.iscsi_eqe_data** %4, align 8
  %22 = getelementptr inbounds %struct.iscsi_eqe_data, %struct.iscsi_eqe_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @QEDI_ERR(i32* %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %26 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %29 = call i32 @qedi_start_conn_recovery(i32 %27, %struct.qedi_conn* %28)
  br label %30

30:                                               ; preds = %16, %15, %8
  ret void
}

declare dso_local i32 @QEDI_ERR(i32*, i8*, i32) #1

declare dso_local i32 @qedi_start_conn_recovery(i32, %struct.qedi_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
