; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfcp_qdio_destroy(%struct.zfcp_qdio* %0) #0 {
  %2 = alloca %struct.zfcp_qdio*, align 8
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %2, align 8
  %3 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %4 = icmp ne %struct.zfcp_qdio* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %33

6:                                                ; preds = %1
  %7 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %8 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %6
  %14 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %15 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @qdio_free(i64 %18)
  br label %20

20:                                               ; preds = %13, %6
  %21 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %22 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %25 = call i32 @qdio_free_buffers(i32 %23, i32 %24)
  %26 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %27 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %30 = call i32 @qdio_free_buffers(i32 %28, i32 %29)
  %31 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %32 = call i32 @kfree(%struct.zfcp_qdio* %31)
  br label %33

33:                                               ; preds = %20, %5
  ret void
}

declare dso_local i32 @qdio_free(i64) #1

declare dso_local i32 @qdio_free_buffers(i32, i32) #1

declare dso_local i32 @kfree(%struct.zfcp_qdio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
