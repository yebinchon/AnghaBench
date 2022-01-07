; ModuleID = '/home/carl/AnghaBench/linux/drivers/soundwire/extr_intel.c_intel_config_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soundwire/extr_intel.c_intel_config_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdw_intel = type { %struct.sdw_intel_link_res* }
%struct.sdw_intel_link_res = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i64, %struct.snd_pcm_substream*, %struct.snd_soc_dai*, %struct.snd_pcm_hw_params*, i32)* }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_soc_dai = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdw_intel*, %struct.snd_pcm_substream*, %struct.snd_soc_dai*, %struct.snd_pcm_hw_params*, i32)* @intel_config_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_config_stream(%struct.sdw_intel* %0, %struct.snd_pcm_substream* %1, %struct.snd_soc_dai* %2, %struct.snd_pcm_hw_params* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sdw_intel*, align 8
  %8 = alloca %struct.snd_pcm_substream*, align 8
  %9 = alloca %struct.snd_soc_dai*, align 8
  %10 = alloca %struct.snd_pcm_hw_params*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sdw_intel_link_res*, align 8
  store %struct.sdw_intel* %0, %struct.sdw_intel** %7, align 8
  store %struct.snd_pcm_substream* %1, %struct.snd_pcm_substream** %8, align 8
  store %struct.snd_soc_dai* %2, %struct.snd_soc_dai** %9, align 8
  store %struct.snd_pcm_hw_params* %3, %struct.snd_pcm_hw_params** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load %struct.sdw_intel*, %struct.sdw_intel** %7, align 8
  %14 = getelementptr inbounds %struct.sdw_intel, %struct.sdw_intel* %13, i32 0, i32 0
  %15 = load %struct.sdw_intel_link_res*, %struct.sdw_intel_link_res** %14, align 8
  store %struct.sdw_intel_link_res* %15, %struct.sdw_intel_link_res** %12, align 8
  %16 = load %struct.sdw_intel_link_res*, %struct.sdw_intel_link_res** %12, align 8
  %17 = getelementptr inbounds %struct.sdw_intel_link_res, %struct.sdw_intel_link_res* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %46

20:                                               ; preds = %5
  %21 = load %struct.sdw_intel_link_res*, %struct.sdw_intel_link_res** %12, align 8
  %22 = getelementptr inbounds %struct.sdw_intel_link_res, %struct.sdw_intel_link_res* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (i64, %struct.snd_pcm_substream*, %struct.snd_soc_dai*, %struct.snd_pcm_hw_params*, i32)*, i32 (i64, %struct.snd_pcm_substream*, %struct.snd_soc_dai*, %struct.snd_pcm_hw_params*, i32)** %24, align 8
  %26 = icmp ne i32 (i64, %struct.snd_pcm_substream*, %struct.snd_soc_dai*, %struct.snd_pcm_hw_params*, i32)* %25, null
  br i1 %26, label %27, label %46

27:                                               ; preds = %20
  %28 = load %struct.sdw_intel_link_res*, %struct.sdw_intel_link_res** %12, align 8
  %29 = getelementptr inbounds %struct.sdw_intel_link_res, %struct.sdw_intel_link_res* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %27
  %33 = load %struct.sdw_intel_link_res*, %struct.sdw_intel_link_res** %12, align 8
  %34 = getelementptr inbounds %struct.sdw_intel_link_res, %struct.sdw_intel_link_res* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (i64, %struct.snd_pcm_substream*, %struct.snd_soc_dai*, %struct.snd_pcm_hw_params*, i32)*, i32 (i64, %struct.snd_pcm_substream*, %struct.snd_soc_dai*, %struct.snd_pcm_hw_params*, i32)** %36, align 8
  %38 = load %struct.sdw_intel_link_res*, %struct.sdw_intel_link_res** %12, align 8
  %39 = getelementptr inbounds %struct.sdw_intel_link_res, %struct.sdw_intel_link_res* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  %42 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %9, align 8
  %43 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %10, align 8
  %44 = load i32, i32* %11, align 4
  %45 = call i32 %37(i64 %40, %struct.snd_pcm_substream* %41, %struct.snd_soc_dai* %42, %struct.snd_pcm_hw_params* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %49

46:                                               ; preds = %27, %20, %5
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %46, %32
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
