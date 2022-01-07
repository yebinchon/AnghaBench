; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_pxa3xx_gcu_free_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_pxa3xx_gcu_free_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pxa3xx_gcu_priv = type { %struct.pxa3xx_gcu_batch* }
%struct.pxa3xx_gcu_batch = type { i32, i32, %struct.pxa3xx_gcu_batch* }

@PXA3XX_GCU_BATCH_WORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.pxa3xx_gcu_priv*)* @pxa3xx_gcu_free_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxa3xx_gcu_free_buffers(%struct.device* %0, %struct.pxa3xx_gcu_priv* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.pxa3xx_gcu_priv*, align 8
  %5 = alloca %struct.pxa3xx_gcu_batch*, align 8
  %6 = alloca %struct.pxa3xx_gcu_batch*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.pxa3xx_gcu_priv* %1, %struct.pxa3xx_gcu_priv** %4, align 8
  %7 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %4, align 8
  %8 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %7, i32 0, i32 0
  %9 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %8, align 8
  store %struct.pxa3xx_gcu_batch* %9, %struct.pxa3xx_gcu_batch** %6, align 8
  br label %10

10:                                               ; preds = %13, %2
  %11 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %6, align 8
  %12 = icmp ne %struct.pxa3xx_gcu_batch* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %10
  %14 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %6, align 8
  %15 = getelementptr inbounds %struct.pxa3xx_gcu_batch, %struct.pxa3xx_gcu_batch* %14, i32 0, i32 2
  %16 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %15, align 8
  store %struct.pxa3xx_gcu_batch* %16, %struct.pxa3xx_gcu_batch** %5, align 8
  %17 = load %struct.device*, %struct.device** %3, align 8
  %18 = load i32, i32* @PXA3XX_GCU_BATCH_WORDS, align 4
  %19 = mul nsw i32 %18, 4
  %20 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %6, align 8
  %21 = getelementptr inbounds %struct.pxa3xx_gcu_batch, %struct.pxa3xx_gcu_batch* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %6, align 8
  %24 = getelementptr inbounds %struct.pxa3xx_gcu_batch, %struct.pxa3xx_gcu_batch* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @dma_free_coherent(%struct.device* %17, i32 %19, i32 %22, i32 %25)
  %27 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %6, align 8
  %28 = call i32 @kfree(%struct.pxa3xx_gcu_batch* %27)
  %29 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %5, align 8
  store %struct.pxa3xx_gcu_batch* %29, %struct.pxa3xx_gcu_batch** %6, align 8
  br label %10

30:                                               ; preds = %10
  %31 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %4, align 8
  %32 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %31, i32 0, i32 0
  store %struct.pxa3xx_gcu_batch* null, %struct.pxa3xx_gcu_batch** %32, align 8
  ret void
}

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.pxa3xx_gcu_batch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
