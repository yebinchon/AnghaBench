; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_destroy_header.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_smbd_destroy_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbd_connection = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.smbd_request = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smbd_connection*, %struct.smbd_request*)* @smbd_destroy_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smbd_destroy_header(%struct.smbd_connection* %0, %struct.smbd_request* %1) #0 {
  %3 = alloca %struct.smbd_connection*, align 8
  %4 = alloca %struct.smbd_request*, align 8
  store %struct.smbd_connection* %0, %struct.smbd_connection** %3, align 8
  store %struct.smbd_request* %1, %struct.smbd_request** %4, align 8
  %5 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %6 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.smbd_request*, %struct.smbd_request** %4, align 8
  %11 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.smbd_request*, %struct.smbd_request** %4, align 8
  %17 = getelementptr inbounds %struct.smbd_request, %struct.smbd_request* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @DMA_TO_DEVICE, align 4
  %23 = call i32 @ib_dma_unmap_single(i32 %9, i32 %15, i32 %21, i32 %22)
  %24 = load %struct.smbd_request*, %struct.smbd_request** %4, align 8
  %25 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %26 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mempool_free(%struct.smbd_request* %24, i32 %27)
  %29 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %30 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %29, i32 0, i32 0
  %31 = call i32 @atomic_inc(i32* %30)
  ret void
}

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @mempool_free(%struct.smbd_request*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
