; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_account_sbals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c_account_sbals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@QDIO_MAX_BUFFERS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*, i32)* @account_sbals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @account_sbals(%struct.qdio_q* %0, i32 %1) #0 {
  %3 = alloca %struct.qdio_q*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %8 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add i32 %10, %6
  store i32 %11, i32* %9, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @QDIO_MAX_BUFFERS_MASK, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %17 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 7
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %35

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @ilog2(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load %struct.qdio_q*, %struct.qdio_q** %3, align 8
  %27 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %23, %15
  ret void
}

declare dso_local i32 @ilog2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
