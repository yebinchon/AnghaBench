; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_request_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-rspi.c_rspi_request_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.spi_controller = type { i32, i32*, i8* }
%struct.resource = type { i64 }
%struct.rspi_plat_data = type { i32, i32 }

@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@RSPI_SPDR = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@rspi_can_dma = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"DMA available\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.spi_controller*, %struct.resource*)* @rspi_request_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rspi_request_dma(%struct.device* %0, %struct.spi_controller* %1, %struct.resource* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.spi_controller*, align 8
  %7 = alloca %struct.resource*, align 8
  %8 = alloca %struct.rspi_plat_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.spi_controller* %1, %struct.spi_controller** %6, align 8
  store %struct.resource* %2, %struct.resource** %7, align 8
  %11 = load %struct.device*, %struct.device** %5, align 8
  %12 = call %struct.rspi_plat_data* @dev_get_platdata(%struct.device* %11)
  store %struct.rspi_plat_data* %12, %struct.rspi_plat_data** %8, align 8
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %40

18:                                               ; preds = %3
  %19 = load %struct.rspi_plat_data*, %struct.rspi_plat_data** %8, align 8
  %20 = icmp ne %struct.rspi_plat_data* %19, null
  br i1 %20, label %21, label %38

21:                                               ; preds = %18
  %22 = load %struct.rspi_plat_data*, %struct.rspi_plat_data** %8, align 8
  %23 = getelementptr inbounds %struct.rspi_plat_data, %struct.rspi_plat_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %21
  %27 = load %struct.rspi_plat_data*, %struct.rspi_plat_data** %8, align 8
  %28 = getelementptr inbounds %struct.rspi_plat_data, %struct.rspi_plat_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.rspi_plat_data*, %struct.rspi_plat_data** %8, align 8
  %33 = getelementptr inbounds %struct.rspi_plat_data, %struct.rspi_plat_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  %35 = load %struct.rspi_plat_data*, %struct.rspi_plat_data** %8, align 8
  %36 = getelementptr inbounds %struct.rspi_plat_data, %struct.rspi_plat_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %10, align 4
  br label %39

38:                                               ; preds = %26, %21, %18
  store i32 0, i32* %4, align 4
  br label %91

39:                                               ; preds = %31
  br label %40

40:                                               ; preds = %39, %17
  %41 = load %struct.device*, %struct.device** %5, align 8
  %42 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load %struct.resource*, %struct.resource** %7, align 8
  %45 = getelementptr inbounds %struct.resource, %struct.resource* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @RSPI_SPDR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i8* @rspi_request_dma_chan(%struct.device* %41, i32 %42, i32 %43, i64 %48)
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %52 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %51, i32 0, i32 1
  store i32* %50, i32** %52, align 8
  %53 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %54 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %40
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %91

60:                                               ; preds = %40
  %61 = load %struct.device*, %struct.device** %5, align 8
  %62 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.resource*, %struct.resource** %7, align 8
  %65 = getelementptr inbounds %struct.resource, %struct.resource* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RSPI_SPDR, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i8* @rspi_request_dma_chan(%struct.device* %61, i32 %62, i32 %63, i64 %68)
  %70 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %71 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %73 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %72, i32 0, i32 2
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %85, label %76

76:                                               ; preds = %60
  %77 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %78 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @dma_release_channel(i32* %79)
  %81 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %82 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %81, i32 0, i32 1
  store i32* null, i32** %82, align 8
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %91

85:                                               ; preds = %60
  %86 = load i32, i32* @rspi_can_dma, align 4
  %87 = load %struct.spi_controller*, %struct.spi_controller** %6, align 8
  %88 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 8
  %89 = load %struct.device*, %struct.device** %5, align 8
  %90 = call i32 @dev_info(%struct.device* %89, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %85, %76, %57, %38
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.rspi_plat_data* @dev_get_platdata(%struct.device*) #1

declare dso_local i8* @rspi_request_dma_chan(%struct.device*, i32, i32, i64) #1

declare dso_local i32 @dma_release_channel(i32*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
