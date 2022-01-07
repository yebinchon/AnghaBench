; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_omap2_mcspi_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-omap2-mcspi.c_omap2_mcspi_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, i32, %struct.TYPE_2__*, %struct.omap2_mcspi_cs* }
%struct.TYPE_2__ = type { i64 }
%struct.omap2_mcspi_cs = type { i32 }
%struct.omap2_mcspi = type { %struct.omap2_mcspi_dma* }
%struct.omap2_mcspi_dma = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @omap2_mcspi_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2_mcspi_cleanup(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.omap2_mcspi*, align 8
  %4 = alloca %struct.omap2_mcspi_dma*, align 8
  %5 = alloca %struct.omap2_mcspi_cs*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call %struct.omap2_mcspi* @spi_master_get_devdata(%struct.TYPE_2__* %8)
  store %struct.omap2_mcspi* %9, %struct.omap2_mcspi** %3, align 8
  %10 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 3
  %12 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %11, align 8
  %13 = icmp ne %struct.omap2_mcspi_cs* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 3
  %17 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %16, align 8
  store %struct.omap2_mcspi_cs* %17, %struct.omap2_mcspi_cs** %5, align 8
  %18 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %5, align 8
  %19 = getelementptr inbounds %struct.omap2_mcspi_cs, %struct.omap2_mcspi_cs* %18, i32 0, i32 0
  %20 = call i32 @list_del(i32* %19)
  %21 = load %struct.omap2_mcspi_cs*, %struct.omap2_mcspi_cs** %5, align 8
  %22 = call i32 @kfree(%struct.omap2_mcspi_cs* %21)
  br label %23

23:                                               ; preds = %14, %1
  %24 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %25 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ult i64 %26, %31
  br i1 %32, label %33, label %65

33:                                               ; preds = %23
  %34 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %3, align 8
  %35 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %34, i32 0, i32 0
  %36 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %35, align 8
  %37 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %38 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %36, i64 %39
  store %struct.omap2_mcspi_dma* %40, %struct.omap2_mcspi_dma** %4, align 8
  %41 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %4, align 8
  %42 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %33
  %46 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %4, align 8
  %47 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @dma_release_channel(i32* %48)
  %50 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %4, align 8
  %51 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %50, i32 0, i32 1
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %45, %33
  %53 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %4, align 8
  %54 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %4, align 8
  %59 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @dma_release_channel(i32* %60)
  %62 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %4, align 8
  %63 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %57, %52
  br label %65

65:                                               ; preds = %64, %23
  %66 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %67 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @gpio_is_valid(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %65
  %72 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %73 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @gpio_free(i32 %74)
  br label %76

76:                                               ; preds = %71, %65
  ret void
}

declare dso_local %struct.omap2_mcspi* @spi_master_get_devdata(%struct.TYPE_2__*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.omap2_mcspi_cs*) #1

declare dso_local i32 @dma_release_channel(i32*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
