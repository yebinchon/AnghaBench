; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_sbal_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_sbal_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@HZ = common dso_local global i32 0, align 4
@ZFCP_STATUS_ADAPTER_QDIOUP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"qdsbg_1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_qdio_sbal_get(%struct.zfcp_qdio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_qdio*, align 8
  %4 = alloca i64, align 8
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %3, align 8
  %5 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %6 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %9 = call i32 @zfcp_qdio_sbal_check(%struct.zfcp_qdio* %8)
  %10 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %11 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @HZ, align 4
  %14 = mul nsw i32 5, %13
  %15 = call i64 @wait_event_interruptible_lock_irq_timeout(i32 %7, i32 %9, i32 %12, i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %17 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @atomic_read(i32* %19)
  %21 = load i32, i32* @ZFCP_STATUS_ADAPTER_QDIOUP, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @EIO, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %45

27:                                               ; preds = %1
  %28 = load i64, i64* %4, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %45

31:                                               ; preds = %27
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %42, label %34

34:                                               ; preds = %31
  %35 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %36 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %35, i32 0, i32 1
  %37 = call i32 @atomic_inc(i32* %36)
  %38 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %3, align 8
  %39 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = call i32 @zfcp_erp_adapter_reopen(%struct.TYPE_2__* %40, i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %34, %31
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %42, %30, %24
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @wait_event_interruptible_lock_irq_timeout(i32, i32, i32, i32) #1

declare dso_local i32 @zfcp_qdio_sbal_check(%struct.zfcp_qdio*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @zfcp_erp_adapter_reopen(%struct.TYPE_2__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
