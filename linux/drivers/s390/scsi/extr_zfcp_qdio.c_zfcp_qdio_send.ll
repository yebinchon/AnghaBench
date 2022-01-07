; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.zfcp_qdio_req = type { i32, i64 }

@QDIO_FLAG_SYNC_OUTPUT = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfcp_qdio_send(%struct.zfcp_qdio* %0, %struct.zfcp_qdio_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.zfcp_qdio*, align 8
  %5 = alloca %struct.zfcp_qdio_req*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %4, align 8
  store %struct.zfcp_qdio_req* %1, %struct.zfcp_qdio_req** %5, align 8
  %8 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %5, align 8
  %9 = getelementptr inbounds %struct.zfcp_qdio_req, %struct.zfcp_qdio_req* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %12 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %11, i32 0, i32 4
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %15 = call i32 @zfcp_qdio_account(%struct.zfcp_qdio* %14)
  %16 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %17 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %16, i32 0, i32 4
  %18 = call i32 @spin_unlock(i32* %17)
  %19 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %20 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @QDIO_FLAG_SYNC_OUTPUT, align 4
  %25 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %5, align 8
  %26 = getelementptr inbounds %struct.zfcp_qdio_req, %struct.zfcp_qdio_req* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @do_QDIO(i32 %23, i32 %24, i32 0, i32 %27, i64 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %2
  %34 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %35 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.zfcp_qdio_req*, %struct.zfcp_qdio_req** %5, align 8
  %38 = getelementptr inbounds %struct.zfcp_qdio_req, %struct.zfcp_qdio_req* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @zfcp_qdio_zero_sbals(i32 %36, i32 %39, i64 %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %60

43:                                               ; preds = %2
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %46 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %45, i32 0, i32 1
  %47 = call i32 @atomic_sub(i64 %44, i32* %46)
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %50 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 8
  %55 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %56 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %4, align 8
  %57 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = srem i32 %58, %55
  store i32 %59, i32* %57, align 8
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %43, %33
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @zfcp_qdio_account(%struct.zfcp_qdio*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @do_QDIO(i32, i32, i32, i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @zfcp_qdio_zero_sbals(i32, i32, i64) #1

declare dso_local i32 @atomic_sub(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
