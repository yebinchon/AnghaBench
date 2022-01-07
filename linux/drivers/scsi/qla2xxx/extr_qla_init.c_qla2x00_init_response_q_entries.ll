; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_init_response_q_entries.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_init_response_q_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsp_que = type { i64, %struct.TYPE_2__*, i32*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RESPONSE_PROCESSED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_init_response_q_entries(%struct.rsp_que* %0) #0 {
  %2 = alloca %struct.rsp_que*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  store %struct.rsp_que* %0, %struct.rsp_que** %2, align 8
  %5 = load %struct.rsp_que*, %struct.rsp_que** %2, align 8
  %6 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %5, i32 0, i32 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = load %struct.rsp_que*, %struct.rsp_que** %2, align 8
  %9 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %8, i32 0, i32 1
  store %struct.TYPE_2__* %7, %struct.TYPE_2__** %9, align 8
  %10 = load %struct.rsp_que*, %struct.rsp_que** %2, align 8
  %11 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %10, i32 0, i32 3
  store i64 0, i64* %11, align 8
  %12 = load %struct.rsp_que*, %struct.rsp_que** %2, align 8
  %13 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %12, i32 0, i32 2
  store i32* null, i32** %13, align 8
  %14 = load %struct.rsp_que*, %struct.rsp_que** %2, align 8
  %15 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %4, align 8
  store i64 0, i64* %3, align 8
  br label %17

17:                                               ; preds = %29, %1
  %18 = load i64, i64* %3, align 8
  %19 = load %struct.rsp_que*, %struct.rsp_que** %2, align 8
  %20 = getelementptr inbounds %struct.rsp_que, %struct.rsp_que* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %18, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load i32, i32* @RESPONSE_PROCESSED, align 4
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 1
  store %struct.TYPE_2__* %28, %struct.TYPE_2__** %4, align 8
  br label %29

29:                                               ; preds = %23
  %30 = load i64, i64* %3, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %3, align 8
  br label %17

32:                                               ; preds = %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
