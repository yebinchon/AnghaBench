; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc_dma/extr_dma.c_stop_dma_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/kpc2000/kpc_dma/extr_dma.c_stop_dma_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kpc_dma_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ENG_CTL_DMA_RUNNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"DMA_RUNNING still asserted!\0A\00", align 1
@ENG_CTL_DMA_RESET_REQUEST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"ENG_CTL_DMA_RESET_REQUEST still asserted!\0A\00", align 1
@ENG_CTL_DMA_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"DMA_RESET still asserted!\0A\00", align 1
@ENG_CTL_IRQ_ACTIVE = common dso_local global i32 0, align 4
@ENG_CTL_DESC_COMPLETE = common dso_local global i32 0, align 4
@ENG_CTL_DESC_ALIGN_ERR = common dso_local global i32 0, align 4
@ENG_CTL_DESC_FETCH_ERR = common dso_local global i32 0, align 4
@ENG_CTL_SW_ABORT_ERR = common dso_local global i32 0, align 4
@ENG_CTL_DESC_CHAIN_END = common dso_local global i32 0, align 4
@ENG_CTL_DMA_WAITING_PERSIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stop_dma_engine(%struct.kpc_dma_device* %0) #0 {
  %2 = alloca %struct.kpc_dma_device*, align 8
  %3 = alloca i64, align 8
  store %struct.kpc_dma_device* %0, %struct.kpc_dma_device** %2, align 8
  %4 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %5 = call i32 @WriteEngineControl(%struct.kpc_dma_device* %4, i32 0)
  %6 = load i32, i32* @jiffies, align 4
  %7 = load i32, i32* @HZ, align 4
  %8 = sdiv i32 %7, 2
  %9 = add nsw i32 %6, %8
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %3, align 8
  br label %11

11:                                               ; preds = %28, %1
  %12 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %13 = call i32 @GetEngineControl(%struct.kpc_dma_device* %12)
  %14 = load i32, i32* @ENG_CTL_DMA_RUNNING, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %11
  %18 = load i32, i32* @jiffies, align 4
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @time_after(i32 %18, i64 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %24 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @dev_crit(i32* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %29

28:                                               ; preds = %17
  br label %11

29:                                               ; preds = %22, %11
  %30 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %31 = load i32, i32* @ENG_CTL_DMA_RESET_REQUEST, align 4
  %32 = call i32 @WriteEngineControl(%struct.kpc_dma_device* %30, i32 %31)
  %33 = load i32, i32* @jiffies, align 4
  %34 = load i32, i32* @HZ, align 4
  %35 = sdiv i32 %34, 2
  %36 = add nsw i32 %33, %35
  %37 = sext i32 %36 to i64
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %57, %29
  %39 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %40 = call i32 @GetEngineControl(%struct.kpc_dma_device* %39)
  %41 = load i32, i32* @ENG_CTL_DMA_RUNNING, align 4
  %42 = load i32, i32* @ENG_CTL_DMA_RESET_REQUEST, align 4
  %43 = or i32 %41, %42
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %38
  %47 = load i32, i32* @jiffies, align 4
  %48 = load i64, i64* %3, align 8
  %49 = call i64 @time_after(i32 %47, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %53 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @dev_crit(i32* %55, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %58

57:                                               ; preds = %46
  br label %38

58:                                               ; preds = %51, %38
  %59 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %60 = load i32, i32* @ENG_CTL_DMA_RESET, align 4
  %61 = call i32 @WriteEngineControl(%struct.kpc_dma_device* %59, i32 %60)
  %62 = load i32, i32* @jiffies, align 4
  %63 = load i32, i32* @HZ, align 4
  %64 = sdiv i32 %63, 2
  %65 = add nsw i32 %62, %64
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %84, %58
  %68 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %69 = call i32 @GetEngineControl(%struct.kpc_dma_device* %68)
  %70 = load i32, i32* @ENG_CTL_DMA_RESET, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = load i32, i32* @jiffies, align 4
  %75 = load i64, i64* %3, align 8
  %76 = call i64 @time_after(i32 %74, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %80 = getelementptr inbounds %struct.kpc_dma_device, %struct.kpc_dma_device* %79, i32 0, i32 0
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = call i32 @dev_crit(i32* %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %85

84:                                               ; preds = %73
  br label %67

85:                                               ; preds = %78, %67
  %86 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %87 = load i32, i32* @ENG_CTL_IRQ_ACTIVE, align 4
  %88 = load i32, i32* @ENG_CTL_DESC_COMPLETE, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @ENG_CTL_DESC_ALIGN_ERR, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @ENG_CTL_DESC_FETCH_ERR, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @ENG_CTL_SW_ABORT_ERR, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @ENG_CTL_DESC_CHAIN_END, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @ENG_CTL_DMA_WAITING_PERSIST, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @SetClearEngineControl(%struct.kpc_dma_device* %86, i32 %99, i32 0)
  %101 = load %struct.kpc_dma_device*, %struct.kpc_dma_device** %2, align 8
  %102 = call i32 @WriteEngineControl(%struct.kpc_dma_device* %101, i32 0)
  ret void
}

declare dso_local i32 @WriteEngineControl(%struct.kpc_dma_device*, i32) #1

declare dso_local i32 @GetEngineControl(%struct.kpc_dma_device*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @dev_crit(i32*, i8*) #1

declare dso_local i32 @SetClearEngineControl(%struct.kpc_dma_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
