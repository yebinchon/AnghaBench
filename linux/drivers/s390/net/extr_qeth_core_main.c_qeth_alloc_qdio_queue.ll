; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_alloc_qdio_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_alloc_qdio_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_q = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qeth_qdio_q* ()* @qeth_alloc_qdio_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qeth_qdio_q* @qeth_alloc_qdio_queue() #0 {
  %1 = alloca %struct.qeth_qdio_q*, align 8
  %2 = alloca %struct.qeth_qdio_q*, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GFP_KERNEL, align 4
  %5 = call %struct.qeth_qdio_q* @kzalloc(i32 16, i32 %4)
  store %struct.qeth_qdio_q* %5, %struct.qeth_qdio_q** %2, align 8
  %6 = load %struct.qeth_qdio_q*, %struct.qeth_qdio_q** %2, align 8
  %7 = icmp ne %struct.qeth_qdio_q* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  store %struct.qeth_qdio_q* null, %struct.qeth_qdio_q** %1, align 8
  br label %46

9:                                                ; preds = %0
  %10 = load %struct.qeth_qdio_q*, %struct.qeth_qdio_q** %2, align 8
  %11 = getelementptr inbounds %struct.qeth_qdio_q, %struct.qeth_qdio_q* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %14 = call i64 @qdio_alloc_buffers(i32* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %9
  %17 = load %struct.qeth_qdio_q*, %struct.qeth_qdio_q** %2, align 8
  %18 = call i32 @kfree(%struct.qeth_qdio_q* %17)
  store %struct.qeth_qdio_q* null, %struct.qeth_qdio_q** %1, align 8
  br label %46

19:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %39, %19
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load %struct.qeth_qdio_q*, %struct.qeth_qdio_q** %2, align 8
  %26 = getelementptr inbounds %struct.qeth_qdio_q, %struct.qeth_qdio_q* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.qeth_qdio_q*, %struct.qeth_qdio_q** %2, align 8
  %33 = getelementptr inbounds %struct.qeth_qdio_q, %struct.qeth_qdio_q* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 %31, i32* %38, align 4
  br label %39

39:                                               ; preds = %24
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %20

42:                                               ; preds = %20
  %43 = load i32, i32* @SETUP, align 4
  %44 = call i32 @QETH_DBF_HEX(i32 %43, i32 2, %struct.qeth_qdio_q** %2, i32 8)
  %45 = load %struct.qeth_qdio_q*, %struct.qeth_qdio_q** %2, align 8
  store %struct.qeth_qdio_q* %45, %struct.qeth_qdio_q** %1, align 8
  br label %46

46:                                               ; preds = %42, %16, %8
  %47 = load %struct.qeth_qdio_q*, %struct.qeth_qdio_q** %1, align 8
  ret %struct.qeth_qdio_q* %47
}

declare dso_local %struct.qeth_qdio_q* @kzalloc(i32, i32) #1

declare dso_local i64 @qdio_alloc_buffers(i32*, i32) #1

declare dso_local i32 @kfree(%struct.qeth_qdio_q*) #1

declare dso_local i32 @QETH_DBF_HEX(i32, i32, %struct.qeth_qdio_q**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
