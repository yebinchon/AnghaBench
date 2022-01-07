; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_set_sdw_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_cadence_master.c_cdns_set_sdw_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.sdw_cdns_dma_data*, %struct.sdw_cdns_dma_data* }
%struct.sdw_cdns_dma_data = type { i8*, i32, i32*, i32 }
%struct.sdw_cdns = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SDW_STREAM_PCM = common dso_local global i32 0, align 4
@SDW_STREAM_PDM = common dso_local global i32 0, align 4
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cdns_set_sdw_stream(%struct.snd_soc_dai* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_soc_dai*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sdw_cdns*, align 8
  %11 = alloca %struct.sdw_cdns_dma_data*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %13 = call %struct.sdw_cdns* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %12)
  store %struct.sdw_cdns* %13, %struct.sdw_cdns** %10, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.sdw_cdns_dma_data* @kzalloc(i32 32, i32 %14)
  store %struct.sdw_cdns_dma_data* %15, %struct.sdw_cdns_dma_data** %11, align 8
  %16 = load %struct.sdw_cdns_dma_data*, %struct.sdw_cdns_dma_data** %11, align 8
  %17 = icmp ne %struct.sdw_cdns_dma_data* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %57

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @SDW_STREAM_PCM, align 4
  %26 = load %struct.sdw_cdns_dma_data*, %struct.sdw_cdns_dma_data** %11, align 8
  %27 = getelementptr inbounds %struct.sdw_cdns_dma_data, %struct.sdw_cdns_dma_data* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  br label %32

28:                                               ; preds = %21
  %29 = load i32, i32* @SDW_STREAM_PDM, align 4
  %30 = load %struct.sdw_cdns_dma_data*, %struct.sdw_cdns_dma_data** %11, align 8
  %31 = getelementptr inbounds %struct.sdw_cdns_dma_data, %struct.sdw_cdns_dma_data* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = load %struct.sdw_cdns*, %struct.sdw_cdns** %10, align 8
  %34 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %33, i32 0, i32 1
  %35 = load %struct.sdw_cdns_dma_data*, %struct.sdw_cdns_dma_data** %11, align 8
  %36 = getelementptr inbounds %struct.sdw_cdns_dma_data, %struct.sdw_cdns_dma_data* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load %struct.sdw_cdns*, %struct.sdw_cdns** %10, align 8
  %38 = getelementptr inbounds %struct.sdw_cdns, %struct.sdw_cdns* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sdw_cdns_dma_data*, %struct.sdw_cdns_dma_data** %11, align 8
  %41 = getelementptr inbounds %struct.sdw_cdns_dma_data, %struct.sdw_cdns_dma_data* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** %7, align 8
  %43 = load %struct.sdw_cdns_dma_data*, %struct.sdw_cdns_dma_data** %11, align 8
  %44 = getelementptr inbounds %struct.sdw_cdns_dma_data, %struct.sdw_cdns_dma_data* %43, i32 0, i32 0
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @SNDRV_PCM_STREAM_PLAYBACK, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %32
  %49 = load %struct.sdw_cdns_dma_data*, %struct.sdw_cdns_dma_data** %11, align 8
  %50 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %51 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %50, i32 0, i32 1
  store %struct.sdw_cdns_dma_data* %49, %struct.sdw_cdns_dma_data** %51, align 8
  br label %56

52:                                               ; preds = %32
  %53 = load %struct.sdw_cdns_dma_data*, %struct.sdw_cdns_dma_data** %11, align 8
  %54 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %6, align 8
  %55 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %54, i32 0, i32 0
  store %struct.sdw_cdns_dma_data* %53, %struct.sdw_cdns_dma_data** %55, align 8
  br label %56

56:                                               ; preds = %52, %48
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %56, %18
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local %struct.sdw_cdns* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local %struct.sdw_cdns_dma_data* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
