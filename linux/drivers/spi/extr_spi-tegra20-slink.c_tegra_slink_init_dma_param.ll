; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-slink.c_tegra_slink_init_dma_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-tegra20-slink.c_tegra_slink_init_dma_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_slink_data = type { i32, i32, i8*, i32*, %struct.dma_chan*, i8*, i32*, %struct.dma_chan*, i64 }
%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i64, i8*, i64, i64, i8*, i64 }

@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Dma channel is not available: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c" Not able to allocate the dma buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SLINK_RX_FIFO = common dso_local global i64 0, align 8
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i8* null, align 8
@SLINK_TX_FIFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_slink_data*, i32)* @tegra_slink_init_dma_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_slink_init_dma_param(%struct.tegra_slink_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_slink_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dma_slave_config, align 8
  store %struct.tegra_slink_data* %0, %struct.tegra_slink_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %12 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)
  %18 = call %struct.dma_chan* @dma_request_slave_channel_reason(i32 %13, i8* %17)
  store %struct.dma_chan* %18, %struct.dma_chan** %6, align 8
  %19 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %20 = call i64 @IS_ERR(%struct.dma_chan* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %24 = call i32 @PTR_ERR(%struct.dma_chan* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @EPROBE_DEFER, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %31 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29, %22
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %123

37:                                               ; preds = %2
  %38 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %42 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32* @dma_alloc_coherent(i32 %40, i32 %43, i8** %8, i32 %44)
  store i32* %45, i32** %7, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %57, label %48

48:                                               ; preds = %37
  %49 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %50 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %54 = call i32 @dma_release_channel(%struct.dma_chan* %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %123

57:                                               ; preds = %37
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %57
  %61 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %62 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SLINK_RX_FIFO, align 8
  %65 = add nsw i64 %63, %64
  %66 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 5
  store i64 %65, i64* %66, align 8
  %67 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %68 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 4
  store i8* %67, i8** %68, align 8
  %69 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 3
  store i64 0, i64* %69, align 8
  br label %80

70:                                               ; preds = %57
  %71 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %72 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %71, i32 0, i32 8
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @SLINK_TX_FIFO, align 8
  %75 = add nsw i64 %73, %74
  %76 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 2
  store i64 %75, i64* %76, align 8
  %77 = load i8*, i8** @DMA_SLAVE_BUSWIDTH_4_BYTES, align 8
  %78 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 1
  store i8* %77, i8** %78, align 8
  %79 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %10, i32 0, i32 0
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %70, %60
  %81 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %82 = call i32 @dmaengine_slave_config(%struct.dma_chan* %81, %struct.dma_slave_config* %10)
  store i32 %82, i32* %9, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %110

86:                                               ; preds = %80
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %91 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %92 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %91, i32 0, i32 7
  store %struct.dma_chan* %90, %struct.dma_chan** %92, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %95 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %94, i32 0, i32 6
  store i32* %93, i32** %95, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %98 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %97, i32 0, i32 5
  store i8* %96, i8** %98, align 8
  br label %109

99:                                               ; preds = %86
  %100 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %101 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %102 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %101, i32 0, i32 4
  store %struct.dma_chan* %100, %struct.dma_chan** %102, align 8
  %103 = load i32*, i32** %7, align 8
  %104 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %105 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %104, i32 0, i32 3
  store i32* %103, i32** %105, align 8
  %106 = load i8*, i8** %8, align 8
  %107 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %108 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %107, i32 0, i32 2
  store i8* %106, i8** %108, align 8
  br label %109

109:                                              ; preds = %99, %89
  store i32 0, i32* %3, align 4
  br label %123

110:                                              ; preds = %85
  %111 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %112 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.tegra_slink_data*, %struct.tegra_slink_data** %4, align 8
  %115 = getelementptr inbounds %struct.tegra_slink_data, %struct.tegra_slink_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32*, i32** %7, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 @dma_free_coherent(i32 %113, i32 %116, i32* %117, i8* %118)
  %120 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %121 = call i32 @dma_release_channel(%struct.dma_chan* %120)
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %110, %109, %48, %35
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.dma_chan* @dma_request_slave_channel_reason(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.dma_chan*) #1

declare dso_local i32 @PTR_ERR(%struct.dma_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32* @dma_alloc_coherent(i32, i32, i8**, i32) #1

declare dso_local i32 @dma_release_channel(%struct.dma_chan*) #1

declare dso_local i32 @dmaengine_slave_config(%struct.dma_chan*, %struct.dma_slave_config*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
