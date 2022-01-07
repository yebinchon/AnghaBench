; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_intel.c_intel_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_intel.c_intel_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.sdw_cdns = type { i32 }
%struct.sdw_cdns_dma_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"remove master from stream %s failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_soc_dai*)* @intel_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_hw_free(%struct.snd_pcm_substream* %0, %struct.snd_soc_dai* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca %struct.sdw_cdns*, align 8
  %7 = alloca %struct.sdw_cdns_dma_data*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_soc_dai* %1, %struct.snd_soc_dai** %5, align 8
  %9 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %10 = call %struct.sdw_cdns* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %9)
  store %struct.sdw_cdns* %10, %struct.sdw_cdns** %6, align 8
  %11 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %12 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %13 = call %struct.sdw_cdns_dma_data* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai* %11, %struct.snd_pcm_substream* %12)
  store %struct.sdw_cdns_dma_data* %13, %struct.sdw_cdns_dma_data** %7, align 8
  %14 = load %struct.sdw_cdns_dma_data*, %struct.sdw_cdns_dma_data** %7, align 8
  %15 = icmp ne %struct.sdw_cdns_dma_data* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %47

19:                                               ; preds = %2
  %20 = load %struct.sdw_cdns*, %struct.sdw_cdns** %6, align 8
  %21 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %20, i32 0, i32 0
  %22 = load %struct.sdw_cdns_dma_data*, %struct.sdw_cdns_dma_data** %7, align 8
  %23 = getelementptr inbounds %struct.sdw_cdns_dma_data, %struct.sdw_cdns_dma_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call i32 @sdw_stream_remove_master(i32* %21, %struct.TYPE_2__* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %19
  %29 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sdw_cdns_dma_data*, %struct.sdw_cdns_dma_data** %7, align 8
  %33 = getelementptr inbounds %struct.sdw_cdns_dma_data, %struct.sdw_cdns_dma_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %28, %19
  %40 = load %struct.sdw_cdns_dma_data*, %struct.sdw_cdns_dma_data** %7, align 8
  %41 = call i32 @intel_port_cleanup(%struct.sdw_cdns_dma_data* %40)
  %42 = load %struct.sdw_cdns_dma_data*, %struct.sdw_cdns_dma_data** %7, align 8
  %43 = getelementptr inbounds %struct.sdw_cdns_dma_data, %struct.sdw_cdns_dma_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @kfree(i32 %44)
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %39, %16
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local %struct.sdw_cdns* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local %struct.sdw_cdns_dma_data* @snd_soc_dai_get_dma_data(%struct.snd_soc_dai*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @sdw_stream_remove_master(i32*, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @intel_port_cleanup(%struct.sdw_cdns_dma_data*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
