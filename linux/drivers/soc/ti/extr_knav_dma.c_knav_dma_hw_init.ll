; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_dma.c_knav_dma_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_dma.c_knav_dma_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_dma_device = type { i32, i32, i32, i32, i32, i32*, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i32*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@DMA_LOOPBACK = common dso_local global i32 0, align 4
@DMA_RX_TIMEOUT_MASK = common dso_local global i32 0, align 4
@DMA_RX_TIMEOUT_SHIFT = common dso_local global i32 0, align 4
@DMA_TX_PRIO_SHIFT = common dso_local global i32 0, align 4
@DMA_RX_PRIO_SHIFT = common dso_local global i32 0, align 4
@DMA_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.knav_dma_device*)* @knav_dma_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @knav_dma_hw_init(%struct.knav_dma_device* %0) #0 {
  %2 = alloca %struct.knav_dma_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.knav_dma_device* %0, %struct.knav_dma_device** %2, align 8
  %5 = load %struct.knav_dma_device*, %struct.knav_dma_device** %2, align 8
  %6 = getelementptr inbounds %struct.knav_dma_device, %struct.knav_dma_device* %5, i32 0, i32 6
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.knav_dma_device*, %struct.knav_dma_device** %2, align 8
  %9 = getelementptr inbounds %struct.knav_dma_device, %struct.knav_dma_device* %8, i32 0, i32 9
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @DMA_LOOPBACK, align 4
  br label %15

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i32 [ %13, %12 ], [ 0, %14 ]
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.knav_dma_device*, %struct.knav_dma_device** %2, align 8
  %19 = getelementptr inbounds %struct.knav_dma_device, %struct.knav_dma_device* %18, i32 0, i32 7
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 3
  %22 = call i32 @writel_relaxed(i32 %17, i32* %21)
  %23 = load %struct.knav_dma_device*, %struct.knav_dma_device** %2, align 8
  %24 = getelementptr inbounds %struct.knav_dma_device, %struct.knav_dma_device* %23, i32 0, i32 7
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = call i32 @readl_relaxed(i32* %26)
  store i32 %27, i32* %3, align 4
  %28 = load %struct.knav_dma_device*, %struct.knav_dma_device** %2, align 8
  %29 = getelementptr inbounds %struct.knav_dma_device, %struct.knav_dma_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @DMA_RX_TIMEOUT_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @DMA_RX_TIMEOUT_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.knav_dma_device*, %struct.knav_dma_device** %2, align 8
  %39 = getelementptr inbounds %struct.knav_dma_device, %struct.knav_dma_device* %38, i32 0, i32 7
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  %42 = call i32 @writel_relaxed(i32 %37, i32* %41)
  %43 = load %struct.knav_dma_device*, %struct.knav_dma_device** %2, align 8
  %44 = getelementptr inbounds %struct.knav_dma_device, %struct.knav_dma_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @DMA_TX_PRIO_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = load %struct.knav_dma_device*, %struct.knav_dma_device** %2, align 8
  %49 = getelementptr inbounds %struct.knav_dma_device, %struct.knav_dma_device* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @DMA_RX_PRIO_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = or i32 %47, %52
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load %struct.knav_dma_device*, %struct.knav_dma_device** %2, align 8
  %56 = getelementptr inbounds %struct.knav_dma_device, %struct.knav_dma_device* %55, i32 0, i32 7
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = call i32 @writel_relaxed(i32 %54, i32* %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %76, %15
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.knav_dma_device*, %struct.knav_dma_device** %2, align 8
  %63 = getelementptr inbounds %struct.knav_dma_device, %struct.knav_dma_device* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load i32, i32* @DMA_ENABLE, align 4
  %68 = load %struct.knav_dma_device*, %struct.knav_dma_device** %2, align 8
  %69 = getelementptr inbounds %struct.knav_dma_device, %struct.knav_dma_device* %68, i32 0, i32 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = call i32 @writel_relaxed(i32 %67, i32* %74)
  br label %76

76:                                               ; preds = %66
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %4, align 4
  br label %60

79:                                               ; preds = %60
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %103, %79
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.knav_dma_device*, %struct.knav_dma_device** %2, align 8
  %83 = getelementptr inbounds %struct.knav_dma_device, %struct.knav_dma_device* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %106

86:                                               ; preds = %80
  %87 = load %struct.knav_dma_device*, %struct.knav_dma_device** %2, align 8
  %88 = getelementptr inbounds %struct.knav_dma_device, %struct.knav_dma_device* %87, i32 0, i32 5
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.knav_dma_device*, %struct.knav_dma_device** %2, align 8
  %95 = getelementptr inbounds %struct.knav_dma_device, %struct.knav_dma_device* %94, i32 0, i32 7
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = call i32 @writel_relaxed(i32 %93, i32* %101)
  br label %103

103:                                              ; preds = %86
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %80

106:                                              ; preds = %80
  %107 = load %struct.knav_dma_device*, %struct.knav_dma_device** %2, align 8
  %108 = getelementptr inbounds %struct.knav_dma_device, %struct.knav_dma_device* %107, i32 0, i32 6
  %109 = call i32 @spin_unlock(i32* %108)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writel_relaxed(i32, i32*) #1

declare dso_local i32 @readl_relaxed(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
