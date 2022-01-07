; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_codec.c_gbcodec_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_codec.c_gbcodec_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.gbaudio_codec_info = type { %struct.snd_soc_codec*, i32, i32, i32, i32 }
%struct.snd_soc_codec = type { i32 }
%struct.gbaudio_codec_dai = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gbaudio_dai = common dso_local global %struct.TYPE_3__* null, align 8
@gbcodec = common dso_local global %struct.gbaudio_codec_info* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_codec*)* @gbcodec_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbcodec_probe(%struct.snd_soc_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_codec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gbaudio_codec_info*, align 8
  %6 = alloca %struct.gbaudio_codec_dai*, align 8
  store %struct.snd_soc_codec* %0, %struct.snd_soc_codec** %3, align 8
  %7 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %8 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i8* @devm_kzalloc(i32 %9, i32 24, i32 %10)
  %12 = bitcast i8* %11 to %struct.gbaudio_codec_info*
  store %struct.gbaudio_codec_info* %12, %struct.gbaudio_codec_info** %5, align 8
  %13 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %5, align 8
  %14 = icmp ne %struct.gbaudio_codec_info* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %79

18:                                               ; preds = %1
  %19 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %20 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %5, align 8
  %23 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %5, align 8
  %25 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %24, i32 0, i32 3
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %5, align 8
  %28 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %27, i32 0, i32 2
  %29 = call i32 @mutex_init(i32* %28)
  %30 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %5, align 8
  %31 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %30, i32 0, i32 1
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %64, %18
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gbaudio_dai, align 8
  %36 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %35)
  %37 = icmp slt i32 %34, %36
  br i1 %37, label %38, label %67

38:                                               ; preds = %33
  %39 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %40 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call i8* @devm_kzalloc(i32 %41, i32 8, i32 %42)
  %44 = bitcast i8* %43 to %struct.gbaudio_codec_dai*
  store %struct.gbaudio_codec_dai* %44, %struct.gbaudio_codec_dai** %6, align 8
  %45 = load %struct.gbaudio_codec_dai*, %struct.gbaudio_codec_dai** %6, align 8
  %46 = icmp ne %struct.gbaudio_codec_dai* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %38
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %79

50:                                               ; preds = %38
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** @gbaudio_dai, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.gbaudio_codec_dai*, %struct.gbaudio_codec_dai** %6, align 8
  %58 = getelementptr inbounds %struct.gbaudio_codec_dai, %struct.gbaudio_codec_dai* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  %59 = load %struct.gbaudio_codec_dai*, %struct.gbaudio_codec_dai** %6, align 8
  %60 = getelementptr inbounds %struct.gbaudio_codec_dai, %struct.gbaudio_codec_dai* %59, i32 0, i32 0
  %61 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %5, align 8
  %62 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %61, i32 0, i32 1
  %63 = call i32 @list_add(i32* %60, i32* %62)
  br label %64

64:                                               ; preds = %50
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %33

67:                                               ; preds = %33
  %68 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %69 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %5, align 8
  %70 = getelementptr inbounds %struct.gbaudio_codec_info, %struct.gbaudio_codec_info* %69, i32 0, i32 0
  store %struct.snd_soc_codec* %68, %struct.snd_soc_codec** %70, align 8
  %71 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %72 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %5, align 8
  %73 = call i32 @snd_soc_codec_set_drvdata(%struct.snd_soc_codec* %71, %struct.gbaudio_codec_info* %72)
  %74 = load %struct.gbaudio_codec_info*, %struct.gbaudio_codec_info** %5, align 8
  store %struct.gbaudio_codec_info* %74, %struct.gbaudio_codec_info** @gbcodec, align 8
  %75 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %3, align 8
  %76 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @device_init_wakeup(i32 %77, i32 1)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %67, %47, %15
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i8* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @snd_soc_codec_set_drvdata(%struct.snd_soc_codec*, %struct.gbaudio_codec_info*) #1

declare dso_local i32 @device_init_wakeup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
