; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_get_cmd_from_tid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_get_cmd_from_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_cmd = type { i64 }
%struct.qedi_ctx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qedi_cmd* }

@MAX_ISCSI_TASK_ENTRIES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.qedi_cmd* @qedi_get_cmd_from_tid(%struct.qedi_ctx* %0, i64 %1) #0 {
  %3 = alloca %struct.qedi_cmd*, align 8
  %4 = alloca %struct.qedi_ctx*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.qedi_cmd*, align 8
  store %struct.qedi_ctx* %0, %struct.qedi_ctx** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.qedi_cmd* null, %struct.qedi_cmd** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @MAX_ISCSI_TASK_ENTRIES, align 8
  %9 = icmp uge i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.qedi_cmd* null, %struct.qedi_cmd** %3, align 8
  br label %33

11:                                               ; preds = %2
  %12 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.qedi_cmd*, %struct.qedi_cmd** %17, align 8
  store %struct.qedi_cmd* %18, %struct.qedi_cmd** %6, align 8
  %19 = load %struct.qedi_cmd*, %struct.qedi_cmd** %6, align 8
  %20 = getelementptr inbounds %struct.qedi_cmd, %struct.qedi_cmd* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %11
  store %struct.qedi_cmd* null, %struct.qedi_cmd** %3, align 8
  br label %33

25:                                               ; preds = %11
  %26 = load %struct.qedi_ctx*, %struct.qedi_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.qedi_ctx, %struct.qedi_ctx* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store %struct.qedi_cmd* null, %struct.qedi_cmd** %31, align 8
  %32 = load %struct.qedi_cmd*, %struct.qedi_cmd** %6, align 8
  store %struct.qedi_cmd* %32, %struct.qedi_cmd** %3, align 8
  br label %33

33:                                               ; preds = %25, %24, %10
  %34 = load %struct.qedi_cmd*, %struct.qedi_cmd** %3, align 8
  ret %struct.qedi_cmd* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
