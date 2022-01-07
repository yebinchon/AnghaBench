; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_uac1_legacy.c_playback_default_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_uac1_legacy.c_playback_default_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gaudio_snd_dev = type { i32, i32, i32, i32, i32, %struct.snd_pcm_substream* }
%struct.snd_pcm_substream = type { i32 }
%struct.snd_pcm_hw_params = type { i32 }

@SNDRV_PCM_ACCESS_RW_INTERLEAVED = common dso_local global i32 0, align 4
@SNDRV_PCM_FORMAT_S16_LE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_ACCESS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_FORMAT = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_CHANNELS = common dso_local global i32 0, align 4
@SNDRV_PCM_HW_PARAM_RATE = common dso_local global i32 0, align 4
@SNDRV_PCM_IOCTL_DROP = common dso_local global i32 0, align 4
@SNDRV_PCM_IOCTL_HW_PARAMS = common dso_local global i32 0, align 4
@SNDRV_PCM_IOCTL_PREPARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Preparing sound card failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"Hardware params: access %x, format %x, channels %d, rate %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gaudio_snd_dev*)* @playback_default_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @playback_default_hw_params(%struct.gaudio_snd_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gaudio_snd_dev*, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca i64, align 8
  store %struct.gaudio_snd_dev* %0, %struct.gaudio_snd_dev** %3, align 8
  %7 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %8 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %7, i32 0, i32 5
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %8, align 8
  store %struct.snd_pcm_substream* %9, %struct.snd_pcm_substream** %4, align 8
  %10 = load i32, i32* @SNDRV_PCM_ACCESS_RW_INTERLEAVED, align 4
  %11 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %12 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @SNDRV_PCM_FORMAT_S16_LE, align 4
  %14 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %15 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %17 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %16, i32 0, i32 2
  store i32 2, i32* %17, align 8
  %18 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %19 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %18, i32 0, i32 3
  store i32 48000, i32* %19, align 4
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.snd_pcm_hw_params* @kzalloc(i32 4, i32 %20)
  store %struct.snd_pcm_hw_params* %21, %struct.snd_pcm_hw_params** %5, align 8
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %23 = icmp ne %struct.snd_pcm_hw_params* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %112

27:                                               ; preds = %1
  %28 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %29 = call i32 @_snd_pcm_hw_params_any(%struct.snd_pcm_hw_params* %28)
  %30 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %31 = load i32, i32* @SNDRV_PCM_HW_PARAM_ACCESS, align 4
  %32 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %33 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @_snd_pcm_hw_param_set(%struct.snd_pcm_hw_params* %30, i32 %31, i32 %34, i32 0)
  %36 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %37 = load i32, i32* @SNDRV_PCM_HW_PARAM_FORMAT, align 4
  %38 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %39 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @_snd_pcm_hw_param_set(%struct.snd_pcm_hw_params* %36, i32 %37, i32 %40, i32 0)
  %42 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %43 = load i32, i32* @SNDRV_PCM_HW_PARAM_CHANNELS, align 4
  %44 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %45 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @_snd_pcm_hw_param_set(%struct.snd_pcm_hw_params* %42, i32 %43, i32 %46, i32 0)
  %48 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %49 = load i32, i32* @SNDRV_PCM_HW_PARAM_RATE, align 4
  %50 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %51 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @_snd_pcm_hw_param_set(%struct.snd_pcm_hw_params* %48, i32 %49, i32 %52, i32 0)
  %54 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %55 = load i32, i32* @SNDRV_PCM_IOCTL_DROP, align 4
  %56 = call i64 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream* %54, i32 %55, %struct.snd_pcm_hw_params* null)
  %57 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %58 = load i32, i32* @SNDRV_PCM_IOCTL_HW_PARAMS, align 4
  %59 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %60 = call i64 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream* %57, i32 %58, %struct.snd_pcm_hw_params* %59)
  %61 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %62 = load i32, i32* @SNDRV_PCM_IOCTL_PREPARE, align 4
  %63 = call i64 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream* %61, i32 %62, %struct.snd_pcm_hw_params* null)
  store i64 %63, i64* %6, align 8
  %64 = load i64, i64* %6, align 8
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %27
  %67 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %68 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load i64, i64* %6, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 @ERROR(i32 %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %74 = call i32 @kfree(%struct.snd_pcm_hw_params* %73)
  %75 = load i64, i64* %6, align 8
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %2, align 4
  br label %112

77:                                               ; preds = %27
  %78 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %79 = call i32 @params_access(%struct.snd_pcm_hw_params* %78)
  %80 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %81 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %83 = call i32 @params_format(%struct.snd_pcm_hw_params* %82)
  %84 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %85 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %87 = call i32 @params_channels(%struct.snd_pcm_hw_params* %86)
  %88 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %89 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %91 = call i32 @params_rate(%struct.snd_pcm_hw_params* %90)
  %92 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %93 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %95 = call i32 @kfree(%struct.snd_pcm_hw_params* %94)
  %96 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %97 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %100 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %103 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %106 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.gaudio_snd_dev*, %struct.gaudio_snd_dev** %3, align 8
  %109 = getelementptr inbounds %struct.gaudio_snd_dev, %struct.gaudio_snd_dev* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @INFO(i32 %98, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %104, i32 %107, i32 %110)
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %77, %66, %24
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.snd_pcm_hw_params* @kzalloc(i32, i32) #1

declare dso_local i32 @_snd_pcm_hw_params_any(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @_snd_pcm_hw_param_set(%struct.snd_pcm_hw_params*, i32, i32, i32) #1

declare dso_local i64 @snd_pcm_kernel_ioctl(%struct.snd_pcm_substream*, i32, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @ERROR(i32, i8*, i32) #1

declare dso_local i32 @kfree(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_access(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @INFO(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
