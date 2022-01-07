; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_drain_output_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_drain_output_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { i32** }

@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@qeth_qdio_outbuf_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_qdio_out_q*, i32)* @qeth_drain_output_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_drain_output_queue(%struct.qeth_qdio_out_q* %0, i32 %1) #0 {
  %3 = alloca %struct.qeth_qdio_out_q*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_q** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %52, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %55

10:                                               ; preds = %6
  %11 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %12 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %11, i32 0, i32 0
  %13 = load i32**, i32*** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32*, i32** %13, i64 %15
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %10
  br label %52

20:                                               ; preds = %10
  %21 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @qeth_cleanup_handled_pending(%struct.qeth_qdio_out_q* %21, i32 %22, i32 1)
  %24 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %25 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %26 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @qeth_clear_output_buffer(%struct.qeth_qdio_out_q* %24, i32* %31, i32 1, i32 0)
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %20
  %36 = load i32, i32* @qeth_qdio_outbuf_cache, align 4
  %37 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %38 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @kmem_cache_free(i32 %36, i32* %43)
  %45 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %3, align 8
  %46 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %45, i32 0, i32 0
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  store i32* null, i32** %50, align 8
  br label %51

51:                                               ; preds = %35, %20
  br label %52

52:                                               ; preds = %51, %19
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %6

55:                                               ; preds = %6
  ret void
}

declare dso_local i32 @qeth_cleanup_handled_pending(%struct.qeth_qdio_out_q*, i32, i32) #1

declare dso_local i32 @qeth_clear_output_buffer(%struct.qeth_qdio_out_q*, i32*, i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
