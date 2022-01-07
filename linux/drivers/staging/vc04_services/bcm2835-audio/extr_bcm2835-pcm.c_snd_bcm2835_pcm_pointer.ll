; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-pcm.c_snd_bcm2835_pcm_pointer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-pcm.c_snd_bcm2835_pcm_pointer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, %struct.bcm2835_alsa_stream* }
%struct.bcm2835_alsa_stream = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_bcm2835_pcm_pointer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_bcm2835_pcm_pointer(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_pcm_runtime*, align 8
  %4 = alloca %struct.bcm2835_alsa_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %3, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 2
  %14 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %13, align 8
  store %struct.bcm2835_alsa_stream* %14, %struct.bcm2835_alsa_stream** %4, align 8
  %15 = call i32 (...) @ktime_get()
  store i32 %15, i32* %5, align 4
  %16 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %4, align 8
  %17 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ktime_to_ns(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %1
  %22 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %4, align 8
  %23 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @ktime_compare(i32 %24, i32 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %4, align 8
  %31 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ktime_sub(i32 %29, i32 %32)
  %34 = call i32 @ktime_to_ns(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %37 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = mul nsw i32 %35, %38
  %40 = call i32 @div_u64(i32 %39, i32 1000000000)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %3, align 8
  %45 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %28, %21, %1
  %47 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %48 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %4, align 8
  %49 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %48, i32 0, i32 1
  %50 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %4, align 8
  %51 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %50, i32 0, i32 0
  %52 = call i32 @atomic_read(i32* %51)
  %53 = call i32 @snd_pcm_indirect_playback_pointer(%struct.snd_pcm_substream* %47, i32* %49, i32 %52)
  ret i32 %53
}

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @ktime_to_ns(i32) #1

declare dso_local i64 @ktime_compare(i32, i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @snd_pcm_indirect_playback_pointer(%struct.snd_pcm_substream*, i32*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
