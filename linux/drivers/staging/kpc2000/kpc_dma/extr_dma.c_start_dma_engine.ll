; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc_dma/extr_dma.c_start_dma_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc_dma/extr_dma.c_start_dma_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpc_dma_device = type { i32, i32, i32, i32 }

@ENG_CTL_DMA_ENABLE = common dso_local global i32 0, align 4
@ENG_CTL_IRQ_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_dma_engine(%struct.kpc_dma_device* %0) #0 {
  %2 = alloca %struct.kpc_dma_device*, align 8
  store %struct.kpc_dma_device* %0, %struct.kpc_dma_device** %2, align 8
  %3 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %4 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %7 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %6, i32 0, i32 3
  store i32 %5, i32* %7, align 4
  %8 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %9 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %12 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %14 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %15 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @SetEngineNextPtr(%struct.kpc_dma_device* %13, i32 %16)
  %18 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %19 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %20 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @SetEngineSWPtr(%struct.kpc_dma_device* %18, i32 %21)
  %23 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %24 = call i32 @ClearEngineCompletePtr(%struct.kpc_dma_device* %23)
  %25 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %26 = load i32, i32* @ENG_CTL_DMA_ENABLE, align 4
  %27 = load i32, i32* @ENG_CTL_IRQ_ENABLE, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @WriteEngineControl(%struct.kpc_dma_device* %25, i32 %28)
  ret void
}

declare dso_local i32 @SetEngineNextPtr(%struct.kpc_dma_device*, i32) #1

declare dso_local i32 @SetEngineSWPtr(%struct.kpc_dma_device*, i32) #1

declare dso_local i32 @ClearEngineCompletePtr(%struct.kpc_dma_device*) #1

declare dso_local i32 @WriteEngineControl(%struct.kpc_dma_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
