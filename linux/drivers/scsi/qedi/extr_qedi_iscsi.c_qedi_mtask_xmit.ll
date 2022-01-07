; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_mtask_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_mtask_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.qedi_conn* }
%struct.qedi_conn = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.iscsi_task = type { i64, i32, %struct.qedi_cmd* }
%struct.qedi_cmd = type { i32*, %struct.qedi_conn* }

@ISCSI_DEF_MAX_RECV_SEG_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_task*)* @qedi_mtask_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_mtask_xmit(%struct.iscsi_conn* %0, %struct.iscsi_task* %1) #0 {
  %3 = alloca %struct.iscsi_conn*, align 8
  %4 = alloca %struct.iscsi_task*, align 8
  %5 = alloca %struct.qedi_conn*, align 8
  %6 = alloca %struct.qedi_cmd*, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %3, align 8
  store %struct.iscsi_task* %1, %struct.iscsi_task** %4, align 8
  %7 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %8 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %7, i32 0, i32 0
  %9 = load %struct.qedi_conn*, %struct.qedi_conn** %8, align 8
  store %struct.qedi_conn* %9, %struct.qedi_conn** %5, align 8
  %10 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %10, i32 0, i32 2
  %12 = load %struct.qedi_cmd*, %struct.qedi_cmd** %11, align 8
  store %struct.qedi_cmd* %12, %struct.qedi_cmd** %6, align 8
  %13 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %14 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @ISCSI_DEF_MAX_RECV_SEG_LEN, align 4
  %18 = call i32 @memset(i64 %16, i32 0, i32 %17)
  %19 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %20 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %23 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i64 %21, i64* %24, align 8
  %25 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %26 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %52

29:                                               ; preds = %2
  %30 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %31 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %35 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %38 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @memcpy(i64 %33, i32 %36, i64 %39)
  %41 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %42 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %46 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %44, %47
  %49 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %50 = getelementptr inbounds %struct.qedi_conn, %struct.qedi_conn* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i64 %48, i64* %51, align 8
  br label %52

52:                                               ; preds = %29, %2
  %53 = load %struct.iscsi_conn*, %struct.iscsi_conn** %3, align 8
  %54 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %53, i32 0, i32 0
  %55 = load %struct.qedi_conn*, %struct.qedi_conn** %54, align 8
  %56 = load %struct.qedi_cmd*, %struct.qedi_cmd** %6, align 8
  %57 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %56, i32 0, i32 1
  store %struct.qedi_conn* %55, %struct.qedi_conn** %57, align 8
  %58 = load %struct.qedi_cmd*, %struct.qedi_cmd** %6, align 8
  %59 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  %60 = load %struct.iscsi_task*, %struct.iscsi_task** %4, align 8
  %61 = call i32 @qedi_iscsi_send_generic_request(%struct.iscsi_task* %60)
  ret i32 %61
}

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i32 @qedi_iscsi_send_generic_request(%struct.iscsi_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
