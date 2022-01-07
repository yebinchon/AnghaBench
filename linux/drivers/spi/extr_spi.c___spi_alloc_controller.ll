; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c___spi_alloc_controller.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi.c___spi_alloc_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device*, i32* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@CONFIG_SPI_SLAVE = common dso_local global i32 0, align 4
@spi_slave_class = common dso_local global i32 0, align 4
@spi_master_class = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.spi_controller* @__spi_alloc_controller(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.spi_controller*, align 8
  %9 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i32 (...) @dma_get_cache_alignment()
  %11 = call i64 @ALIGN(i32 32, i32 %10)
  store i64 %11, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = icmp ne %struct.device* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  store %struct.spi_controller* null, %struct.spi_controller** %4, align 8
  br label %66

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = load i64, i64* %9, align 8
  %19 = add i64 %17, %18
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.spi_controller* @kzalloc(i32 %20, i32 %21)
  store %struct.spi_controller* %22, %struct.spi_controller** %8, align 8
  %23 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  %24 = icmp ne %struct.spi_controller* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %15
  store %struct.spi_controller* null, %struct.spi_controller** %4, align 8
  br label %66

26:                                               ; preds = %15
  %27 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  %28 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %27, i32 0, i32 3
  %29 = call i32 @device_initialize(%struct.TYPE_3__* %28)
  %30 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  %31 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %30, i32 0, i32 0
  store i32 -1, i32* %31, align 8
  %32 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  %33 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  %36 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @CONFIG_SPI_SLAVE, align 4
  %38 = call i64 @IS_ENABLED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %26
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  %45 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32* @spi_slave_class, i32** %46, align 8
  br label %51

47:                                               ; preds = %40, %26
  %48 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  %49 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  store i32* @spi_master_class, i32** %50, align 8
  br label %51

51:                                               ; preds = %47, %43
  %52 = load %struct.device*, %struct.device** %5, align 8
  %53 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  %54 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store %struct.device* %52, %struct.device** %55, align 8
  %56 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  %57 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %56, i32 0, i32 3
  %58 = call i32 @pm_suspend_ignore_children(%struct.TYPE_3__* %57, i32 1)
  %59 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  %60 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  %61 = bitcast %struct.spi_controller* %60 to i8*
  %62 = load i64, i64* %9, align 8
  %63 = getelementptr i8, i8* %61, i64 %62
  %64 = call i32 @spi_controller_set_devdata(%struct.spi_controller* %59, i8* %63)
  %65 = load %struct.spi_controller*, %struct.spi_controller** %8, align 8
  store %struct.spi_controller* %65, %struct.spi_controller** %4, align 8
  br label %66

66:                                               ; preds = %51, %25, %14
  %67 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  ret %struct.spi_controller* %67
}

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @dma_get_cache_alignment(...) #1

declare dso_local %struct.spi_controller* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_3__*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @pm_suspend_ignore_children(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @spi_controller_set_devdata(%struct.spi_controller*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
