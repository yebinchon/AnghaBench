; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc_dma/extr_dma.c_count_descriptors_available.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc_dma/extr_dma.c_count_descriptors_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpc_dma_device = type { %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor* }
%struct.kpc_dma_descriptor = type { %struct.kpc_dma_descriptor* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @count_descriptors_available(%struct.kpc_dma_device* %0) #0 {
  %2 = alloca %struct.kpc_dma_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.kpc_dma_descriptor*, align 8
  store %struct.kpc_dma_device* %0, %struct.kpc_dma_device** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %6 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %5, i32 0, i32 1
  %7 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %6, align 8
  store %struct.kpc_dma_descriptor* %7, %struct.kpc_dma_descriptor** %4, align 8
  br label %8

8:                                                ; preds = %14, %1
  %9 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %4, align 8
  %10 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %11 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %10, i32 0, i32 0
  %12 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %11, align 8
  %13 = icmp ne %struct.kpc_dma_descriptor* %9, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %4, align 8
  %16 = icmp eq %struct.kpc_dma_descriptor* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  %21 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %4, align 8
  %22 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %21, i32 0, i32 0
  %23 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %22, align 8
  store %struct.kpc_dma_descriptor* %23, %struct.kpc_dma_descriptor** %4, align 8
  br label %8

24:                                               ; preds = %8
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
