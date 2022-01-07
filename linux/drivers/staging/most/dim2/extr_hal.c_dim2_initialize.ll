; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_dim2_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/dim2/extr_hal.c_dim2_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32 }

@MLBC0_MLBPEN_BIT = common dso_local global i32 0, align 4
@MLBC0_MLBCLK_SHIFT = common dso_local global i32 0, align 4
@g = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MLBC0_FCNT_SHIFT = common dso_local global i32 0, align 4
@MLBC0_MLBEN_BIT = common dso_local global i32 0, align 4
@HCTL_EN_BIT = common dso_local global i32 0, align 4
@ACTL_DMA_MODE_VAL_DMA_MODE_1 = common dso_local global i32 0, align 4
@ACTL_DMA_MODE_BIT = common dso_local global i32 0, align 4
@ACTL_SCE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @dim2_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dim2_initialize(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @dim2_cleanup()
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @MLBC0_MLBPEN_BIT, align 4
  %8 = shl i32 %6, %7
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @MLBC0_MLBCLK_SHIFT, align 4
  %11 = shl i32 %9, %10
  %12 = or i32 %8, %11
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 0), align 8
  %14 = load i32, i32* @MLBC0_FCNT_SHIFT, align 4
  %15 = shl i32 %13, %14
  %16 = or i32 %12, %15
  %17 = load i32, i32* @MLBC0_MLBEN_BIT, align 4
  %18 = shl i32 1, %17
  %19 = or i32 %16, %18
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 1), align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 4
  %22 = call i32 @writel(i32 %19, i32* %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 1), align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  %25 = call i32 @writel(i32 -1, i32* %24)
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 1), align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = call i32 @writel(i32 -1, i32* %27)
  %29 = load i32, i32* @HCTL_EN_BIT, align 4
  %30 = call i32 @bit_mask(i32 %29)
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 1), align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = call i32 @writel(i32 %30, i32* %32)
  %34 = load i32, i32* @ACTL_DMA_MODE_VAL_DMA_MODE_1, align 4
  %35 = load i32, i32* @ACTL_DMA_MODE_BIT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* @ACTL_SCE_BIT, align 4
  %38 = shl i32 1, %37
  %39 = or i32 %36, %38
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g, i32 0, i32 1), align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = call i32 @writel(i32 %39, i32* %41)
  ret void
}

declare dso_local i32 @dim2_cleanup(...) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @bit_mask(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
