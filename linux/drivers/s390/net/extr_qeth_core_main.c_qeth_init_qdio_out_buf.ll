; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_init_qdio_out_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_init_qdio_out_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { %struct.qeth_qdio_out_buffer**, i32* }
%struct.qeth_qdio_out_buffer = type { i32, %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_q*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@qeth_qdio_outbuf_cache = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@qdio_out_skb_queue_key = common dso_local global i32 0, align 4
@QETH_QDIO_BUF_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qeth_qdio_out_q*, i32)* @qeth_init_qdio_out_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qeth_init_qdio_out_buf(%struct.qeth_qdio_out_q* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qeth_qdio_out_q*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qeth_qdio_out_buffer*, align 8
  store %struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_q** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @qeth_qdio_outbuf_cache, align 4
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.qeth_qdio_out_buffer* @kmem_cache_zalloc(i32 %7, i32 %8)
  store %struct.qeth_qdio_out_buffer* %9, %struct.qeth_qdio_out_buffer** %6, align 8
  %10 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %11 = icmp ne %struct.qeth_qdio_out_buffer* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %55

15:                                               ; preds = %2
  %16 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %17 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %24 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %26 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %25, i32 0, i32 3
  %27 = call i32 @skb_queue_head_init(%struct.TYPE_2__* %26)
  %28 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %29 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = call i32 @lockdep_set_class(i32* %30, i32* @qdio_out_skb_queue_key)
  %32 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %33 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %34 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %33, i32 0, i32 2
  store %struct.qeth_qdio_out_q* %32, %struct.qeth_qdio_out_q** %34, align 8
  %35 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %36 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %35, i32 0, i32 0
  %37 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %37, i64 %39
  %41 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %40, align 8
  %42 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %43 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %42, i32 0, i32 1
  store %struct.qeth_qdio_out_buffer* %41, %struct.qeth_qdio_out_buffer** %43, align 8
  %44 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %44, i32 0, i32 0
  %46 = load i32, i32* @QETH_QDIO_BUF_EMPTY, align 4
  %47 = call i32 @atomic_set(i32* %45, i32 %46)
  %48 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %6, align 8
  %49 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %50 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %49, i32 0, i32 0
  %51 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %51, i64 %53
  store %struct.qeth_qdio_out_buffer* %48, %struct.qeth_qdio_out_buffer** %54, align 8
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %15, %12
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.qeth_qdio_out_buffer* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(%struct.TYPE_2__*) #1

declare dso_local i32 @lockdep_set_class(i32*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
