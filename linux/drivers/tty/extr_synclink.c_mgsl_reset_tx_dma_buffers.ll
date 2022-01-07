; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_mgsl_reset_tx_dma_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_mgsl_reset_tx_dma_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i32, i64, i64, i64, i64, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*)* @mgsl_reset_tx_dma_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgsl_reset_tx_dma_buffers(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %19, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %7 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ult i32 %5, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %4
  %11 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %12 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %11, i32 0, i32 7
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = bitcast i32* %17 to i64*
  store i64 0, i64* %18, align 4
  br label %19

19:                                               ; preds = %10
  %20 = load i32, i32* %3, align 4
  %21 = add i32 %20, 1
  store i32 %21, i32* %3, align 4
  br label %4

22:                                               ; preds = %4
  %23 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %24 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %26 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %28 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %30 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %29, i32 0, i32 3
  store i64 0, i64* %30, align 8
  %31 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %32 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %34 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %33, i32 0, i32 1
  store i64 0, i64* %34, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
