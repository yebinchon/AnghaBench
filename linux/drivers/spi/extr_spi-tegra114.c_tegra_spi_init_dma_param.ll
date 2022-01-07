; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_init_dma_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra114.c_tegra_spi_init_dma_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_spi_data = type { i8*, i32*, %struct.dma_chan*, i8*, i32*, %struct.dma_chan*, i32, i32 }
%struct.dma_chan = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Dma channel is not available: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c" Not able to allocate the dma buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_spi_data*, i32)* @tegra_spi_init_dma_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_spi_init_dma_param(%struct.tegra_spi_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_spi_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.tegra_spi_data* %0, %struct.tegra_spi_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %17 = call %struct.dma_chan* @dma_request_slave_channel_reason(i32 %12, i8* %16)
  store %struct.dma_chan* %17, %struct.dma_chan** %6, align 8
  %18 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %19 = call i64 @IS_ERR(%struct.dma_chan* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %23 = call i32 @PTR_ERR(%struct.dma_chan* %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @EPROBE_DEFER, align 4
  %26 = sub nsw i32 0, %25
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %30 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %31, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %28, %21
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %3, align 4
  br label %80

36:                                               ; preds = %2
  %37 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %38 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %41 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %40, i32 0, i32 7
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32* @dma_alloc_coherent(i32 %39, i32 %42, i8** %8, i32 %43)
  store i32* %44, i32** %7, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %56, label %47

47:                                               ; preds = %36
  %48 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %49 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i32, i8*, ...) @dev_err(i32 %50, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %52 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %53 = call i32 @dma_release_channel(%struct.dma_chan* %52)
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %80

56:                                               ; preds = %36
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %61 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %62 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %61, i32 0, i32 5
  store %struct.dma_chan* %60, %struct.dma_chan** %62, align 8
  %63 = load i32*, i32** %7, align 8
  %64 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %65 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %64, i32 0, i32 4
  store i32* %63, i32** %65, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %68 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  br label %79

69:                                               ; preds = %56
  %70 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %71 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %72 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %71, i32 0, i32 2
  store %struct.dma_chan* %70, %struct.dma_chan** %72, align 8
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %75 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load %struct.tegra_spi_data*, %struct.tegra_spi_data** %4, align 8
  %78 = getelementptr inbounds %struct.tegra_spi_data, %struct.tegra_spi_data* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %69, %59
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %47, %34
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.dma_chan* @dma_request_slave_channel_reason(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.dma_chan*) #1

declare dso_local i32 @PTR_ERR(%struct.dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32* @dma_alloc_coherent(i32, i32, i8**, i32) #1

declare dso_local i32 @dma_release_channel(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
