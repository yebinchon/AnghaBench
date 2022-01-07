; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_alloc_output_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_alloc_output_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qeth_qdio_out_q* ()* @qeth_alloc_output_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qeth_qdio_out_q* @qeth_alloc_output_queue() #0 {
  %1 = alloca %struct.qeth_qdio_out_q*, align 8
  %2 = alloca %struct.qeth_qdio_out_q*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call %struct.qeth_qdio_out_q* @kzalloc(i32 4, i32 %3)
  store %struct.qeth_qdio_out_q* %4, %struct.qeth_qdio_out_q** %2, align 8
  %5 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %6 = icmp ne %struct.qeth_qdio_out_q* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  store %struct.qeth_qdio_out_q* null, %struct.qeth_qdio_out_q** %1, align 8
  br label %20

8:                                                ; preds = %0
  %9 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %10 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %13 = call i64 @qdio_alloc_buffers(i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %8
  %16 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %17 = call i32 @kfree(%struct.qeth_qdio_out_q* %16)
  store %struct.qeth_qdio_out_q* null, %struct.qeth_qdio_out_q** %1, align 8
  br label %20

18:                                               ; preds = %8
  %19 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  store %struct.qeth_qdio_out_q* %19, %struct.qeth_qdio_out_q** %1, align 8
  br label %20

20:                                               ; preds = %18, %15, %7
  %21 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %1, align 8
  ret %struct.qeth_qdio_out_q* %21
}

declare dso_local %struct.qeth_qdio_out_q* @kzalloc(i32, i32) #1

declare dso_local i64 @qdio_alloc_buffers(i32, i32) #1

declare dso_local i32 @kfree(%struct.qeth_qdio_out_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
