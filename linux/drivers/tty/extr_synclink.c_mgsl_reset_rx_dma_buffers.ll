; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_mgsl_reset_rx_dma_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_mgsl_reset_rx_dma_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DMABUFFERSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*)* @mgsl_reset_rx_dma_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgsl_reset_rx_dma_buffers(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %20, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %7 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %4
  %11 = load i64, i64* @DMABUFFERSIZE, align 8
  %12 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %13 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to i64*
  store i64 %11, i64* %19, align 4
  br label %20

20:                                               ; preds = %10
  %21 = load i32, i32* %3, align 4
  %22 = add i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %4

23:                                               ; preds = %4
  %24 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %25 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
