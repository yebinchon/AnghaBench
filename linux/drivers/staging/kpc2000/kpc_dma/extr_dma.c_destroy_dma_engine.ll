; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc_dma/extr_dma.c_destroy_dma_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc_dma/extr_dma.c_destroy_dma_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpc_dma_device = type { i32, i32, i32, %struct.kpc_dma_descriptor* }
%struct.kpc_dma_descriptor = type { i32, %struct.kpc_dma_descriptor*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @destroy_dma_engine(%struct.kpc_dma_device* %0) #0 {
  %2 = alloca %struct.kpc_dma_device*, align 8
  %3 = alloca %struct.kpc_dma_descriptor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.kpc_dma_descriptor*, align 8
  %7 = alloca i32, align 4
  store %struct.kpc_dma_device* %0, %struct.kpc_dma_device** %2, align 8
  %8 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %9 = call i32 @stop_dma_engine(%struct.kpc_dma_device* %8)
  %10 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %11 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %10, i32 0, i32 3
  %12 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %11, align 8
  store %struct.kpc_dma_descriptor* %12, %struct.kpc_dma_descriptor** %3, align 8
  %13 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %14 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %13, i32 0, i32 3
  %15 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %14, align 8
  %16 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %39, %1
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %21 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %18
  %25 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %3, align 8
  %26 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %25, i32 0, i32 1
  %27 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %26, align 8
  store %struct.kpc_dma_descriptor* %27, %struct.kpc_dma_descriptor** %6, align 8
  %28 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %3, align 8
  %29 = getelementptr inbounds %struct.kpc_dma_descriptor, %struct.kpc_dma_descriptor* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %7, align 4
  %31 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %32 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @dma_pool_free(i32 %33, %struct.kpc_dma_descriptor* %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %4, align 4
  %38 = load %struct.kpc_dma_descriptor*, %struct.kpc_dma_descriptor** %6, align 8
  store %struct.kpc_dma_descriptor* %38, %struct.kpc_dma_descriptor** %3, align 8
  br label %39

39:                                               ; preds = %24
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %40, 1
  store i32 %41, i32* %5, align 4
  br label %18

42:                                               ; preds = %18
  %43 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %44 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dma_pool_destroy(i32 %45)
  %47 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %48 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %51 = call i32 @free_irq(i32 %49, %struct.kpc_dma_device* %50)
  ret void
}

declare dso_local i32 @stop_dma_engine(%struct.kpc_dma_device*) #1

declare dso_local i32 @dma_pool_free(i32, %struct.kpc_dma_descriptor*, i32) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

declare dso_local i32 @free_irq(i32, %struct.kpc_dma_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
