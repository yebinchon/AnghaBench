; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_pxa3xx_gcu_add_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_pxa3xx_gcu_add_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pxa3xx_gcu_priv = type { %struct.pxa3xx_gcu_batch* }
%struct.pxa3xx_gcu_batch = type { %struct.pxa3xx_gcu_batch*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PXA3XX_GCU_BATCH_WORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.pxa3xx_gcu_priv*)* @pxa3xx_gcu_add_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa3xx_gcu_add_buffer(%struct.device* %0, %struct.pxa3xx_gcu_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pxa3xx_gcu_priv*, align 8
  %6 = alloca %struct.pxa3xx_gcu_batch*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.pxa3xx_gcu_priv* %1, %struct.pxa3xx_gcu_priv** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.pxa3xx_gcu_batch* @kzalloc(i32 16, i32 %7)
  store %struct.pxa3xx_gcu_batch* %8, %struct.pxa3xx_gcu_batch** %6, align 8
  %9 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %6, align 8
  %10 = icmp ne %struct.pxa3xx_gcu_batch* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* @PXA3XX_GCU_BATCH_WORDS, align 4
  %17 = mul nsw i32 %16, 4
  %18 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %6, align 8
  %19 = getelementptr inbounds %struct.pxa3xx_gcu_batch, %struct.pxa3xx_gcu_batch* %18, i32 0, i32 2
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32 @dma_alloc_coherent(%struct.device* %15, i32 %17, i32* %19, i32 %20)
  %22 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %6, align 8
  %23 = getelementptr inbounds %struct.pxa3xx_gcu_batch, %struct.pxa3xx_gcu_batch* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %6, align 8
  %25 = getelementptr inbounds %struct.pxa3xx_gcu_batch, %struct.pxa3xx_gcu_batch* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %14
  %29 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %6, align 8
  %30 = call i32 @kfree(%struct.pxa3xx_gcu_batch* %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %42

33:                                               ; preds = %14
  %34 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %5, align 8
  %35 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %34, i32 0, i32 0
  %36 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %35, align 8
  %37 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %6, align 8
  %38 = getelementptr inbounds %struct.pxa3xx_gcu_batch, %struct.pxa3xx_gcu_batch* %37, i32 0, i32 0
  store %struct.pxa3xx_gcu_batch* %36, %struct.pxa3xx_gcu_batch** %38, align 8
  %39 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %6, align 8
  %40 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %5, align 8
  %41 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %40, i32 0, i32 0
  store %struct.pxa3xx_gcu_batch* %39, %struct.pxa3xx_gcu_batch** %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %33, %28, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.pxa3xx_gcu_batch* @kzalloc(i32, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @kfree(%struct.pxa3xx_gcu_batch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
