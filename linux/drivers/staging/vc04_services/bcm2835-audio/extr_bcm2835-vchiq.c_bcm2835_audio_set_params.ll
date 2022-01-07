; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_bcm2835_audio_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_bcm2835_audio_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_alsa_stream = type { i32 }
%struct.vc_audio_msg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@VC_AUDIO_MSG_TYPE_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm2835_audio_set_params(%struct.bcm2835_alsa_stream* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm2835_alsa_stream*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vc_audio_msg, align 4
  %11 = alloca i32, align 4
  store %struct.bcm2835_alsa_stream* %0, %struct.bcm2835_alsa_stream** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = getelementptr inbounds %struct.vc_audio_msg, %struct.vc_audio_msg* %10, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %18 = load i32, i32* %9, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.vc_audio_msg, %struct.vc_audio_msg* %10, i32 0, i32 1
  %20 = load i32, i32* @VC_AUDIO_MSG_TYPE_CONFIG, align 4
  store i32 %20, i32* %19, align 4
  %21 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %6, align 8
  %22 = call i32 @bcm2835_audio_set_ctls(%struct.bcm2835_alsa_stream* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %11, align 4
  store i32 %26, i32* %5, align 4
  br label %32

27:                                               ; preds = %4
  %28 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %6, align 8
  %29 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @bcm2835_audio_send_msg(i32 %30, %struct.vc_audio_msg* %10, i32 1)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %27, %25
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @bcm2835_audio_set_ctls(%struct.bcm2835_alsa_stream*) #1

declare dso_local i32 @bcm2835_audio_send_msg(i32, %struct.vc_audio_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
