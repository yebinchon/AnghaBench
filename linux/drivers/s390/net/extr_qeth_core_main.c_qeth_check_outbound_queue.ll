; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_check_outbound_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_check_outbound_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { i32, i32, i32, i32, i32 }

@QETH_LOW_WATERMARK_PACK = common dso_local global i64 0, align 8
@QETH_OUT_Q_LOCKED_FLUSH = common dso_local global i32 0, align 4
@QETH_OUT_Q_UNLOCKED = common dso_local global i64 0, align 8
@bufs_pack = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_qdio_out_q*)* @qeth_check_outbound_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_check_outbound_queue(%struct.qeth_qdio_out_q* %0) #0 {
  %2 = alloca %struct.qeth_qdio_out_q*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_q** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %7 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %6, i32 0, i32 4
  %8 = call i64 @atomic_read(i32* %7)
  %9 = load i64, i64* @QETH_LOW_WATERMARK_PACK, align 8
  %10 = icmp sle i64 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %13 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %12, i32 0, i32 3
  %14 = call i64 @atomic_read(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %73, label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %18 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %17, i32 0, i32 2
  %19 = load i32, i32* @QETH_OUT_Q_LOCKED_FLUSH, align 4
  %20 = call i64 @atomic_xchg(i32* %18, i32 %19)
  %21 = load i64, i64* @QETH_OUT_Q_UNLOCKED, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %72

23:                                               ; preds = %16
  %24 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %25 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  %27 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %28 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %5, align 4
  %30 = call i32 (...) @barrier()
  %31 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %32 = call i64 @qeth_switch_to_nonpacking_if_needed(%struct.qeth_qdio_out_q* %31)
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %32
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %23
  %40 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %41 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %40, i32 0, i32 3
  %42 = call i64 @atomic_read(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %46 = call i64 @qeth_prep_flush_pack_buffer(%struct.qeth_qdio_out_q* %45)
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %44, %39, %23
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %56 = load i32, i32* @bufs_pack, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @QETH_TXQ_STAT_ADD(%struct.qeth_qdio_out_q* %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %51
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @qeth_flush_buffers(%struct.qeth_qdio_out_q* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %59
  %68 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %2, align 8
  %69 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %68, i32 0, i32 2
  %70 = load i64, i64* @QETH_OUT_Q_UNLOCKED, align 8
  %71 = call i32 @atomic_set(i32* %69, i64 %70)
  br label %72

72:                                               ; preds = %67, %16
  br label %73

73:                                               ; preds = %72, %11
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @barrier(...) #1

declare dso_local i64 @qeth_switch_to_nonpacking_if_needed(%struct.qeth_qdio_out_q*) #1

declare dso_local i64 @qeth_prep_flush_pack_buffer(%struct.qeth_qdio_out_q*) #1

declare dso_local i32 @QETH_TXQ_STAT_ADD(%struct.qeth_qdio_out_q*, i32, i32) #1

declare dso_local i32 @qeth_flush_buffers(%struct.qeth_qdio_out_q*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
