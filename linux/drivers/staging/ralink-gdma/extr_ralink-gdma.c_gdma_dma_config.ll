; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_gdma_dma_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ralink-gdma/extr_ralink-gdma.c_gdma_dma_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.gdma_dmaengine_chan = type { i8*, i32, i32 }
%struct.gdma_dma_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"not support flow controller\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DMA_SLAVE_BUSWIDTH_4_BYTES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"only support 4 byte buswidth\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"direction type %d error\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*, %struct.dma_slave_config*)* @gdma_dma_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdma_dma_config(%struct.dma_chan* %0, %struct.dma_slave_config* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.dma_slave_config*, align 8
  %6 = alloca %struct.gdma_dmaengine_chan*, align 8
  %7 = alloca %struct.gdma_dma_dev*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %4, align 8
  store %struct.dma_slave_config* %1, %struct.dma_slave_config** %5, align 8
  %8 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %9 = call %struct.gdma_dmaengine_chan* @to_gdma_dma_chan(%struct.dma_chan* %8)
  store %struct.gdma_dmaengine_chan* %9, %struct.gdma_dmaengine_chan** %6, align 8
  %10 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %6, align 8
  %11 = call %struct.gdma_dma_dev* @gdma_dma_chan_get_dev(%struct.gdma_dmaengine_chan* %10)
  store %struct.gdma_dma_dev* %11, %struct.gdma_dma_dev** %7, align 8
  %12 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %13 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %12, i32 0, i32 8
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %7, align 8
  %18 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i32, i8*, ...) @dev_err(i32 %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %102

24:                                               ; preds = %2
  %25 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %26 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %90 [
    i32 128, label %28
    i32 129, label %59
  ]

28:                                               ; preds = %24
  %29 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %30 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %7, align 8
  %36 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @dev_err(i32 %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %102

42:                                               ; preds = %28
  %43 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %44 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %6, align 8
  %47 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %49 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %6, align 8
  %52 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %54 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @gdma_dma_maxburst(i32 %55)
  %57 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %6, align 8
  %58 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  br label %101

59:                                               ; preds = %24
  %60 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %61 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @DMA_SLAVE_BUSWIDTH_4_BYTES, align 4
  %64 = icmp ne i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %7, align 8
  %67 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32, i8*, ...) @dev_err(i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %102

73:                                               ; preds = %59
  %74 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %75 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %6, align 8
  %78 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %80 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %6, align 8
  %83 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  %84 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %85 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @gdma_dma_maxburst(i32 %86)
  %88 = load %struct.gdma_dmaengine_chan*, %struct.gdma_dmaengine_chan** %6, align 8
  %89 = getelementptr inbounds %struct.gdma_dmaengine_chan, %struct.gdma_dmaengine_chan* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  br label %101

90:                                               ; preds = %24
  %91 = load %struct.gdma_dma_dev*, %struct.gdma_dma_dev** %7, align 8
  %92 = getelementptr inbounds %struct.gdma_dma_dev, %struct.gdma_dma_dev* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.dma_slave_config*, %struct.dma_slave_config** %5, align 8
  %96 = getelementptr inbounds %struct.dma_slave_config, %struct.dma_slave_config* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i32, i8*, ...) @dev_err(i32 %94, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %102

101:                                              ; preds = %73, %42
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %101, %90, %65, %34, %16
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.gdma_dmaengine_chan* @to_gdma_dma_chan(%struct.dma_chan*) #1

declare dso_local %struct.gdma_dma_dev* @gdma_dma_chan_get_dev(%struct.gdma_dmaengine_chan*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i8* @gdma_dma_maxburst(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
