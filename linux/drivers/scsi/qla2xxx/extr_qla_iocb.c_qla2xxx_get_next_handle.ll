; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2xxx_get_next_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2xxx_get_next_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_que = type { i64, i64, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @qla2xxx_get_next_handle(%struct.req_que* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.req_que*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.req_que* %0, %struct.req_que** %3, align 8
  %6 = load %struct.req_que*, %struct.req_que** %3, align 8
  %7 = getelementptr inbounds %struct.req_que, %struct.req_que* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  store i64 1, i64* %4, align 8
  br label %9

9:                                                ; preds = %35, %1
  %10 = load i64, i64* %4, align 8
  %11 = load %struct.req_que*, %struct.req_que** %3, align 8
  %12 = getelementptr inbounds %struct.req_que, %struct.req_que* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %10, %13
  br i1 %14, label %15, label %38

15:                                               ; preds = %9
  %16 = load i64, i64* %5, align 8
  %17 = add i64 %16, 1
  store i64 %17, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = load %struct.req_que*, %struct.req_que** %3, align 8
  %20 = getelementptr inbounds %struct.req_que, %struct.req_que* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  store i64 1, i64* %5, align 8
  br label %24

24:                                               ; preds = %23, %15
  %25 = load %struct.req_que*, %struct.req_que** %3, align 8
  %26 = getelementptr inbounds %struct.req_que, %struct.req_que* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = load i64, i64* %5, align 8
  store i64 %33, i64* %2, align 8
  br label %39

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %4, align 8
  br label %9

38:                                               ; preds = %9
  store i64 0, i64* %2, align 8
  br label %39

39:                                               ; preds = %38, %32
  %40 = load i64, i64* %2, align 8
  ret i64 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
