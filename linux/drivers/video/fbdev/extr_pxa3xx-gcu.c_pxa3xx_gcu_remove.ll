; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_pxa3xx_gcu_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_pxa3xx_gcu_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.pxa3xx_gcu_priv = type { i32, i32, i32 }

@SHARED_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pxa3xx_gcu_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa3xx_gcu_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.pxa3xx_gcu_priv*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.pxa3xx_gcu_priv* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.pxa3xx_gcu_priv* %6, %struct.pxa3xx_gcu_priv** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %3, align 8
  %10 = call i32 @pxa3xx_gcu_wait_idle(%struct.pxa3xx_gcu_priv* %9)
  %11 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %3, align 8
  %12 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %11, i32 0, i32 2
  %13 = call i32 @misc_deregister(i32* %12)
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* @SHARED_SIZE, align 4
  %16 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %3, align 8
  %17 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %3, align 8
  %20 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dma_free_coherent(%struct.device* %14, i32 %15, i32 %18, i32 %21)
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %3, align 8
  %25 = call i32 @pxa3xx_gcu_free_buffers(%struct.device* %23, %struct.pxa3xx_gcu_priv* %24)
  ret i32 0
}

declare dso_local %struct.pxa3xx_gcu_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pxa3xx_gcu_wait_idle(%struct.pxa3xx_gcu_priv*) #1

declare dso_local i32 @misc_deregister(i32*) #1

declare dso_local i32 @dma_free_coherent(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @pxa3xx_gcu_free_buffers(%struct.device*, %struct.pxa3xx_gcu_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
