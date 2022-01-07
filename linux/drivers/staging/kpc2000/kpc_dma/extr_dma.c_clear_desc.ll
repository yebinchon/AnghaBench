; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc_dma/extr_dma.c_clear_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc_dma/extr_dma.c_clear_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpc_dma_descriptor = type { i32*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_desc(%struct.kpc_dma_descriptor* %0) #0 {
  %2 = alloca %struct.kpc_dma_descriptor*, align 8
  store %struct.kpc_dma_descriptor* %0, %struct.kpc_dma_descriptor** %2, align 8
  %3 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %2, align 8
  %4 = icmp ne %struct.kpc_dma_descriptor* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %31

6:                                                ; preds = %1
  %7 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %2, align 8
  %8 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %7, i32 0, i32 11
  store i64 0, i64* %8, align 8
  %9 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %2, align 8
  %10 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %9, i32 0, i32 10
  store i64 0, i64* %10, align 8
  %11 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %2, align 8
  %12 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %11, i32 0, i32 9
  store i64 0, i64* %12, align 8
  %13 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %2, align 8
  %14 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %13, i32 0, i32 8
  store i64 0, i64* %14, align 8
  %15 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %2, align 8
  %16 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %15, i32 0, i32 7
  store i64 0, i64* %16, align 8
  %17 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %2, align 8
  %18 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %17, i32 0, i32 6
  store i64 0, i64* %18, align 8
  %19 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %2, align 8
  %20 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %2, align 8
  %22 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %2, align 8
  %24 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %2, align 8
  %26 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %2, align 8
  %28 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %2, align 8
  %30 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %6, %5
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
