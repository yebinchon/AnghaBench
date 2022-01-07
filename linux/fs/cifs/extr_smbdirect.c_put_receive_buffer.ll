; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_put_receive_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_smbdirect.c_put_receive_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smbd_connection = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.smbd_response = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smbd_connection*, %struct.smbd_response*)* @put_receive_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_receive_buffer(%struct.smbd_connection* %0, %struct.smbd_response* %1) #0 {
  %3 = alloca %struct.smbd_connection*, align 8
  %4 = alloca %struct.smbd_response*, align 8
  %5 = alloca i64, align 8
  store %struct.smbd_connection* %0, %struct.smbd_connection** %3, align 8
  store %struct.smbd_response* %1, %struct.smbd_response** %4, align 8
  %6 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %7 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %6, i32 0, i32 6
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.smbd_response*, %struct.smbd_response** %4, align 8
  %12 = getelementptr inbounds %struct.smbd_response, %struct.smbd_response* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.smbd_response*, %struct.smbd_response** %4, align 8
  %16 = getelementptr inbounds %struct.smbd_response, %struct.smbd_response* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %20 = call i32 @ib_dma_unmap_single(i32 %10, i32 %14, i32 %18, i32 %19)
  %21 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %22 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %21, i32 0, i32 2
  %23 = load i64, i64* %5, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.smbd_response*, %struct.smbd_response** %4, align 8
  %26 = getelementptr inbounds %struct.smbd_response, %struct.smbd_response* %25, i32 0, i32 0
  %27 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %28 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %27, i32 0, i32 5
  %29 = call i32 @list_add_tail(i32* %26, i32* %28)
  %30 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %31 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  %34 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %35 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %39 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %38, i32 0, i32 2
  %40 = load i64, i64* %5, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %43 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.smbd_connection*, %struct.smbd_connection** %3, align 8
  %46 = getelementptr inbounds %struct.smbd_connection, %struct.smbd_connection* %45, i32 0, i32 0
  %47 = call i32 @queue_work(i32 %44, i32* %46)
  ret void
}

declare dso_local i32 @ib_dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
