; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_cleanup_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_iscsi.c_qedi_cleanup_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i64, i32, i32, i32 }

@ISCSI_TASK_PENDING = common dso_local global i64 0, align 8
@QEDI_LOG_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Returning ref_cnt=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iscsi_task*)* @qedi_cleanup_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_cleanup_task(%struct.iscsi_task* %0) #0 {
  %2 = alloca %struct.iscsi_task*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %2, align 8
  %3 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %4 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %3, i32 0, i32 3
  %5 = load i32, i32* %4, align 8
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %9 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ISCSI_TASK_PENDING, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %7, %1
  %14 = load i32, i32* @QEDI_LOG_IO, align 4
  %15 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %16 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %15, i32 0, i32 2
  %17 = call i32 @refcount_read(i32* %16)
  %18 = call i32 @QEDI_INFO(i32* null, i32 %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %24

19:                                               ; preds = %7
  %20 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %21 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @qedi_iscsi_unmap_sg_list(i32 %22)
  br label %24

24:                                               ; preds = %19, %13
  ret void
}

declare dso_local i32 @QEDI_INFO(i32*, i32, i8*, i32) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @qedi_iscsi_unmap_sg_list(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
