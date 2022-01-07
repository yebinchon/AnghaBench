; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-au1550.c_au1550_spi_dma_rxtmp_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-au1550.c_au1550_spi_dma_rxtmp_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.au1550_spi = type { i32, i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.au1550_spi*, i32)* @au1550_spi_dma_rxtmp_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1550_spi_dma_rxtmp_alloc(%struct.au1550_spi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.au1550_spi*, align 8
  %5 = alloca i32, align 4
  store %struct.au1550_spi* %0, %struct.au1550_spi** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call i64 @kmalloc(i32 %6, i32 %7)
  %9 = load %struct.au1550_spi*, %struct.au1550_spi** %4, align 8
  %10 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %9, i32 0, i32 1
  store i64 %8, i64* %10, align 8
  %11 = load %struct.au1550_spi*, %struct.au1550_spi** %4, align 8
  %12 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %53

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.au1550_spi*, %struct.au1550_spi** %4, align 8
  %21 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.au1550_spi*, %struct.au1550_spi** %4, align 8
  %23 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.au1550_spi*, %struct.au1550_spi** %4, align 8
  %26 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %30 = call i32 @dma_map_single(i32 %24, i64 %27, i32 %28, i32 %29)
  %31 = load %struct.au1550_spi*, %struct.au1550_spi** %4, align 8
  %32 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.au1550_spi*, %struct.au1550_spi** %4, align 8
  %34 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.au1550_spi*, %struct.au1550_spi** %4, align 8
  %37 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @dma_mapping_error(i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %18
  %42 = load %struct.au1550_spi*, %struct.au1550_spi** %4, align 8
  %43 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @kfree(i64 %44)
  %46 = load %struct.au1550_spi*, %struct.au1550_spi** %4, align 8
  %47 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.au1550_spi*, %struct.au1550_spi** %4, align 8
  %49 = getelementptr inbounds %struct.au1550_spi, %struct.au1550_spi* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  %50 = load i32, i32* @EFAULT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %41, %15
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @dma_map_single(i32, i64, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @kfree(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
