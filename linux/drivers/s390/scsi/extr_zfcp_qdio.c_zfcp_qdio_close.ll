; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { i32, i32, i32, i32, i32, %struct.zfcp_adapter* }
%struct.zfcp_adapter = type { i32, i32 }

@ZFCP_STATUS_ADAPTER_QDIOUP = common dso_local global i32 0, align 4
@QDIO_FLAG_CLEANUP_USING_CLEAR = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_qdio_close(%struct.zfcp_qdio* %0) #0 {
  %2 = alloca %struct.zfcp_qdio*, align 8
  %3 = alloca %struct.zfcp_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %2, align 8
  %6 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %7 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %6, i32 0, i32 5
  %8 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %7, align 8
  store %struct.zfcp_adapter* %8, %struct.zfcp_adapter** %3, align 8
  %9 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %9, i32 0, i32 1
  %11 = call i32 @atomic_read(i32* %10)
  %12 = load i32, i32* @ZFCP_STATUS_ADAPTER_QDIOUP, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %64

16:                                               ; preds = %1
  %17 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %18 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %17, i32 0, i32 4
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load i32, i32* @ZFCP_STATUS_ADAPTER_QDIOUP, align 4
  %21 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %21, i32 0, i32 1
  %23 = call i32 @atomic_andnot(i32 %20, i32* %22)
  %24 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %25 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %24, i32 0, i32 4
  %26 = call i32 @spin_unlock_irq(i32* %25)
  %27 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %28 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %27, i32 0, i32 3
  %29 = call i32 @wake_up(i32* %28)
  %30 = load %struct.zfcp_adapter*, %struct.zfcp_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.zfcp_adapter, %struct.zfcp_adapter* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @QDIO_FLAG_CLEANUP_USING_CLEAR, align 4
  %34 = call i32 @qdio_shutdown(i32 %32, i32 %33)
  %35 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %36 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %35, i32 0, i32 1
  %37 = call i32 @atomic_read(i32* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %16
  %42 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %43 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %44, %45
  %47 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %48 = srem i32 %46, %47
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %50 = load i32, i32* %5, align 4
  %51 = sub nsw i32 %49, %50
  store i32 %51, i32* %5, align 4
  %52 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %53 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @zfcp_qdio_zero_sbals(i32 %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %41, %16
  %59 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %60 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %62 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %61, i32 0, i32 1
  %63 = call i32 @atomic_set(i32* %62, i32 0)
  br label %64

64:                                               ; preds = %58, %15
  ret void
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @atomic_andnot(i32, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @qdio_shutdown(i32, i32) #1

declare dso_local i32 @zfcp_qdio_zero_sbals(i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
