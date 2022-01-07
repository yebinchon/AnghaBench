; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_inline.h_qla_qpair_to_hint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_inline.h_qla_qpair_to_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_qpair_hint = type { %struct.qla_qpair* }
%struct.qla_tgt = type { %struct.qla_qpair_hint*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.qla_qpair = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qla_qpair_hint* (%struct.qla_tgt*, %struct.qla_qpair*)* @qla_qpair_to_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qla_qpair_hint* @qla_qpair_to_hint(%struct.qla_tgt* %0, %struct.qla_qpair* %1) #0 {
  %3 = alloca %struct.qla_qpair_hint*, align 8
  %4 = alloca %struct.qla_tgt*, align 8
  %5 = alloca %struct.qla_qpair*, align 8
  %6 = alloca %struct.qla_qpair_hint*, align 8
  %7 = alloca i64, align 8
  store %struct.qla_tgt* %0, %struct.qla_tgt** %4, align 8
  store %struct.qla_qpair* %1, %struct.qla_qpair** %5, align 8
  store i64 0, i64* %7, align 8
  br label %8

8:                                                ; preds = %31, %2
  %9 = load i64, i64* %7, align 8
  %10 = load %struct.qla_tgt*, %struct.qla_tgt** %4, align 8
  %11 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, 1
  %16 = icmp ult i64 %9, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %8
  %18 = load %struct.qla_tgt*, %struct.qla_tgt** %4, align 8
  %19 = getelementptr inbounds %struct.qla_tgt, %struct.qla_tgt* %18, i32 0, i32 0
  %20 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.qla_qpair_hint, %struct.qla_qpair_hint* %20, i64 %21
  store %struct.qla_qpair_hint* %22, %struct.qla_qpair_hint** %6, align 8
  %23 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %6, align 8
  %24 = getelementptr inbounds %struct.qla_qpair_hint, %struct.qla_qpair_hint* %23, i32 0, i32 0
  %25 = load %struct.qla_qpair*, %struct.qla_qpair** %24, align 8
  %26 = load %struct.qla_qpair*, %struct.qla_qpair** %5, align 8
  %27 = icmp eq %struct.qla_qpair* %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %6, align 8
  store %struct.qla_qpair_hint* %29, %struct.qla_qpair_hint** %3, align 8
  br label %35

30:                                               ; preds = %17
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* %7, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %7, align 8
  br label %8

34:                                               ; preds = %8
  store %struct.qla_qpair_hint* null, %struct.qla_qpair_hint** %3, align 8
  br label %35

35:                                               ; preds = %34, %28
  %36 = load %struct.qla_qpair_hint*, %struct.qla_qpair_hint** %3, align 8
  ret %struct.qla_qpair_hint* %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
