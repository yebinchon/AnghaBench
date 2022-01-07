; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_account.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_qdio.c_zfcp_qdio_account.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_qdio = type { i64, i32, i32 }

@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_qdio*)* @zfcp_qdio_account to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_qdio_account(%struct.zfcp_qdio* %0) #0 {
  %2 = alloca %struct.zfcp_qdio*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.zfcp_qdio* %0, %struct.zfcp_qdio** %2, align 8
  %6 = call i64 (...) @get_tod_clock_monotonic()
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %9 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = sub i64 %7, %10
  %12 = lshr i64 %11, 12
  store i64 %12, i64* %4, align 8
  %13 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %14 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %15 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %14, i32 0, i32 2
  %16 = call i32 @atomic_read(i32* %15)
  %17 = sub nsw i32 %13, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %4, align 8
  %21 = mul i64 %19, %20
  %22 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %23 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = add i64 %25, %21
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %23, align 8
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.zfcp_qdio*, %struct.zfcp_qdio** %2, align 8
  %30 = getelementptr inbounds %struct.zfcp_qdio, %struct.zfcp_qdio* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  ret void
}

declare dso_local i64 @get_tod_clock_monotonic(...) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
