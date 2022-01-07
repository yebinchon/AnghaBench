; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_task_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_task_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { %struct.scsi_cmnd*, %struct.qedi_cmd*, %struct.iscsi_conn* }
%struct.scsi_cmnd = type { i32 }
%struct.qedi_cmd = type { i32, i32, %struct.scsi_cmnd*, i32, %struct.iscsi_task*, %struct.qedi_conn*, i64 }
%struct.qedi_conn = type { i32 }
%struct.iscsi_conn = type { %struct.qedi_conn* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_task*)* @qedi_task_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_task_xmit(%struct.iscsi_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_task*, align 8
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.qedi_conn*, align 8
  %6 = alloca %struct.qedi_cmd*, align 8
  %7 = alloca %struct.scsi_cmnd*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %3, align 8
  %8 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %9 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %8, i32 0, i32 2
  %10 = load %struct.iscsi_conn*, %struct.iscsi_conn** %9, align 8
  store %struct.iscsi_conn* %10, %struct.iscsi_conn** %4, align 8
  %11 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %12 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %11, i32 0, i32 0
  %13 = load %struct.qedi_conn*, %struct.qedi_conn** %12, align 8
  store %struct.qedi_conn* %13, %struct.qedi_conn** %5, align 8
  %14 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %14, i32 0, i32 1
  %16 = load %struct.qedi_cmd*, %struct.qedi_cmd** %15, align 8
  store %struct.qedi_cmd* %16, %struct.qedi_cmd** %6, align 8
  %17 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %18 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %17, i32 0, i32 0
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %18, align 8
  store %struct.scsi_cmnd* %19, %struct.scsi_cmnd** %7, align 8
  %20 = load %struct.qedi_cmd*, %struct.qedi_cmd** %6, align 8
  %21 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %20, i32 0, i32 6
  store i64 0, i64* %21, align 8
  %22 = load %struct.qedi_cmd*, %struct.qedi_cmd** %6, align 8
  %23 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %22, i32 0, i32 4
  store %struct.iscsi_task* null, %struct.iscsi_task** %23, align 8
  %24 = load %struct.qedi_cmd*, %struct.qedi_cmd** %6, align 8
  %25 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.qedi_conn*, %struct.qedi_conn** %5, align 8
  %27 = load %struct.qedi_cmd*, %struct.qedi_cmd** %6, align 8
  %28 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %27, i32 0, i32 5
  store %struct.qedi_conn* %26, %struct.qedi_conn** %28, align 8
  %29 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %30 = load %struct.qedi_cmd*, %struct.qedi_cmd** %6, align 8
  %31 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %30, i32 0, i32 4
  store %struct.iscsi_task* %29, %struct.iscsi_task** %31, align 8
  %32 = load %struct.qedi_cmd*, %struct.qedi_cmd** %6, align 8
  %33 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load %struct.qedi_cmd*, %struct.qedi_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %34, i32 0, i32 3
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %38 = icmp ne %struct.scsi_cmnd* %37, null
  br i1 %38, label %43, label %39

39:                                               ; preds = %1
  %40 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %41 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %42 = call i32 @qedi_mtask_xmit(%struct.iscsi_conn* %40, %struct.iscsi_task* %41)
  store i32 %42, i32* %2, align 4
  br label %49

43:                                               ; preds = %1
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %45 = load %struct.qedi_cmd*, %struct.qedi_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %45, i32 0, i32 2
  store %struct.scsi_cmnd* %44, %struct.scsi_cmnd** %46, align 8
  %47 = load %struct.iscsi_task*, %struct.iscsi_task** %3, align 8
  %48 = call i32 @qedi_iscsi_send_ioreq(%struct.iscsi_task* %47)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %43, %39
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @qedi_mtask_xmit(%struct.iscsi_conn*, %struct.iscsi_task*) #1

declare dso_local i32 @qedi_iscsi_send_ioreq(%struct.iscsi_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
