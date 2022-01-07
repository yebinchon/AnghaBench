; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-pcm.c_snd_bcm2835_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-pcm.c_snd_bcm2835_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, %struct.bcm2835_alsa_stream* }
%struct.bcm2835_alsa_stream = type { i32, i32, i64, i32, i32, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.bcm2835_chip = type { i32 }

@IEC958_AES0_NONAUDIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_bcm2835_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bcm2835_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.bcm2835_chip*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.bcm2835_alsa_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.bcm2835_chip* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.bcm2835_chip* %10, %struct.bcm2835_chip** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %5, align 8
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %14, i32 0, i32 3
  %16 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %15, align 8
  store %struct.bcm2835_alsa_stream* %16, %struct.bcm2835_alsa_stream** %6, align 8
  %17 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %4, align 8
  %18 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEC958_AES0_NONAUDIO, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %28

24:                                               ; preds = %1
  %25 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %26 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %24, %23
  %29 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %35 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @snd_pcm_format_width(i32 %36)
  %38 = call i32 @bcm2835_audio_set_params(%struct.bcm2835_alsa_stream* %29, i32 %30, i32 %33, i32 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %2, align 4
  br label %73

43:                                               ; preds = %28
  %44 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %6, align 8
  %45 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %44, i32 0, i32 6
  %46 = call i32 @memset(%struct.TYPE_2__* %45, i32 0, i32 16)
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %48 = call i8* @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %47)
  %49 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %6, align 8
  %50 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %49, i32 0, i32 6
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i8* %48, i8** %51, align 8
  %52 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %6, align 8
  %53 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %52, i32 0, i32 6
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  store i8* %48, i8** %54, align 8
  %55 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %56 = call i8* @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %55)
  %57 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %6, align 8
  %58 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %57, i32 0, i32 5
  store i8* %56, i8** %58, align 8
  %59 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %60 = call i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %59)
  %61 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %6, align 8
  %62 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %61, i32 0, i32 4
  store i32 %60, i32* %62, align 4
  %63 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %6, align 8
  %64 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %63, i32 0, i32 3
  %65 = call i32 @atomic_set(i32* %64, i32 0)
  %66 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %6, align 8
  %67 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %66, i32 0, i32 2
  store i64 0, i64* %67, align 8
  %68 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %6, align 8
  %69 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = call i32 (...) @ktime_get()
  %71 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %6, align 8
  %72 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  store i32 0, i32* %2, align 4
  br label %73

73:                                               ; preds = %43, %41
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local %struct.bcm2835_chip* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @bcm2835_audio_set_params(%struct.bcm2835_alsa_stream*, i32, i32, i32) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @memset(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i8* @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
