; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c___qdio_outbound_processing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_qdio_main.c___qdio_outbound_processing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { i32, %struct.TYPE_5__, %struct.TYPE_6__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_6__ = type { i64 }

@tasklet_outbound = common dso_local global i32 0, align 4
@QDIO_ZFCP_QFMT = common dso_local global i64 0, align 8
@QDIO_IRQ_STATE_ACTIVE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_q*)* @__qdio_outbound_processing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__qdio_outbound_processing(%struct.qdio_q* %0) #0 {
  %2 = alloca %struct.qdio_q*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %2, align 8
  %5 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %6 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %9 = load i32, i32* @tasklet_outbound, align 4
  %10 = call i32 @qperf_inc(%struct.qdio_q* %8, i32 %9)
  %11 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %12 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %11, i32 0, i32 3
  %13 = call i64 @atomic_read(i32* %12)
  %14 = icmp slt i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @WARN_ON_ONCE(i32 %15)
  %17 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @qdio_outbound_q_moved(%struct.qdio_q* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @add_buf(i32 %23, i32 %24)
  %26 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %27 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @qdio_kick_handler(%struct.qdio_q* %28, i32 %29)
  br label %31

31:                                               ; preds = %22, %1
  %32 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %33 = call i64 @queue_type(%struct.qdio_q* %32)
  %34 = load i64, i64* @QDIO_ZFCP_QFMT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %31
  %37 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %38 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = call i32 @pci_out_supported(%struct.TYPE_6__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %36
  %43 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %44 = call i64 @qdio_outbound_q_done(%struct.qdio_q* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %42
  br label %96

47:                                               ; preds = %42, %36, %31
  %48 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %49 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %99

55:                                               ; preds = %47
  %56 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %57 = call i64 @qdio_outbound_q_done(%struct.qdio_q* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %61 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @del_timer_sync(i32* %63)
  br label %95

65:                                               ; preds = %55
  %66 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %67 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = call i32 @timer_pending(i32* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %94, label %72

72:                                               ; preds = %65
  %73 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %74 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @QDIO_IRQ_STATE_ACTIVE, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i64 @likely(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %72
  %84 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %85 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* @jiffies, align 8
  %89 = load i32, i32* @HZ, align 4
  %90 = mul nsw i32 10, %89
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %88, %91
  %93 = call i32 @mod_timer(i32* %87, i64 %92)
  br label %94

94:                                               ; preds = %83, %72, %65
  br label %95

95:                                               ; preds = %94, %59
  br label %99

96:                                               ; preds = %46
  %97 = load %struct.qdio_q*, %struct.qdio_q** %2, align 8
  %98 = call i32 @qdio_tasklet_schedule(%struct.qdio_q* %97)
  br label %99

99:                                               ; preds = %96, %95, %54
  ret void
}

declare dso_local i32 @qperf_inc(%struct.qdio_q*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @qdio_outbound_q_moved(%struct.qdio_q*, i32) #1

declare dso_local i32 @add_buf(i32, i32) #1

declare dso_local i32 @qdio_kick_handler(%struct.qdio_q*, i32) #1

declare dso_local i64 @queue_type(%struct.qdio_q*) #1

declare dso_local i32 @pci_out_supported(%struct.TYPE_6__*) #1

declare dso_local i64 @qdio_outbound_q_done(%struct.qdio_q*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @timer_pending(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @qdio_tasklet_schedule(%struct.qdio_q*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
