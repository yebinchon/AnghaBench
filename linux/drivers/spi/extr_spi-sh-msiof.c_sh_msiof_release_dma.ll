; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_release_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-sh-msiof.c_sh_msiof_release_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_msiof_spi_priv = type { i64, i64, i32, i32, %struct.spi_controller* }
%struct.spi_controller = type { %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_msiof_spi_priv*)* @sh_msiof_release_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_msiof_release_dma(%struct.sh_msiof_spi_priv* %0) #0 {
  %2 = alloca %struct.sh_msiof_spi_priv*, align 8
  %3 = alloca %struct.spi_controller*, align 8
  store %struct.sh_msiof_spi_priv* %0, %struct.sh_msiof_spi_priv** %2, align 8
  %4 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %2, align 8
  %5 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %4, i32 0, i32 4
  %6 = load %struct.spi_controller*, %struct.spi_controller** %5, align 8
  store %struct.spi_controller* %6, %struct.spi_controller** %3, align 8
  %7 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %8 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = icmp ne %struct.TYPE_4__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %55

12:                                               ; preds = %1
  %13 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %14 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %2, align 8
  %21 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PAGE_SIZE, align 4
  %24 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %25 = call i32 @dma_unmap_single(i32 %19, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %27 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %2, align 8
  %34 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = load i32, i32* @DMA_TO_DEVICE, align 4
  %38 = call i32 @dma_unmap_single(i32 %32, i32 %35, i32 %36, i32 %37)
  %39 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %2, align 8
  %40 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @free_page(i64 %41)
  %43 = load %struct.sh_msiof_spi_priv*, %struct.sh_msiof_spi_priv** %2, align 8
  %44 = getelementptr inbounds %struct.sh_msiof_spi_priv, %struct.sh_msiof_spi_priv* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @free_page(i64 %45)
  %47 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %48 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = call i32 @dma_release_channel(%struct.TYPE_4__* %49)
  %51 = load %struct.spi_controller*, %struct.spi_controller** %3, align 8
  %52 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = call i32 @dma_release_channel(%struct.TYPE_4__* %53)
  br label %55

55:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @dma_release_channel(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
