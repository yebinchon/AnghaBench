; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_prep_cont_type1_iocb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_mr.c_qlafx00_prep_cont_type1_iocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.req_que = type { i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }

@CONTINUE_A64_TYPE_FX00 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (%struct.req_que*, %struct.TYPE_4__*)* @qlafx00_prep_cont_type1_iocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @qlafx00_prep_cont_type1_iocb(%struct.req_que* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.req_que*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  store %struct.req_que* %0, %struct.req_que** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %6 = load %struct.req_que*, %struct.req_que** %3, align 8
  %7 = getelementptr inbounds %struct.req_que, %struct.req_que* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* %7, align 8
  %10 = load %struct.req_que*, %struct.req_que** %3, align 8
  %11 = getelementptr inbounds %struct.req_que, %struct.req_que* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.req_que*, %struct.req_que** %3, align 8
  %14 = getelementptr inbounds %struct.req_que, %struct.req_que* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.req_que*, %struct.req_que** %3, align 8
  %19 = getelementptr inbounds %struct.req_que, %struct.req_que* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = load %struct.req_que*, %struct.req_que** %3, align 8
  %21 = getelementptr inbounds %struct.req_que, %struct.req_que* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.req_que*, %struct.req_que** %3, align 8
  %24 = getelementptr inbounds %struct.req_que, %struct.req_que* %23, i32 0, i32 2
  store i64 %22, i64* %24, align 8
  br label %30

25:                                               ; preds = %2
  %26 = load %struct.req_que*, %struct.req_que** %3, align 8
  %27 = getelementptr inbounds %struct.req_que, %struct.req_que* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  br label %30

30:                                               ; preds = %25, %17
  %31 = load %struct.req_que*, %struct.req_que** %3, align 8
  %32 = getelementptr inbounds %struct.req_que, %struct.req_que* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %5, align 8
  %35 = load i32, i32* @CONTINUE_A64_TYPE_FX00, align 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
