; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_bcm2835_audio_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_bcm2835_audio_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_alsa_stream = type { %struct.bcm2835_audio_instance* }
%struct.bcm2835_audio_instance = type { i32 }

@VC_AUDIO_MSG_TYPE_CLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm2835_audio_close(%struct.bcm2835_alsa_stream* %0) #0 {
  %2 = alloca %struct.bcm2835_alsa_stream*, align 8
  %3 = alloca %struct.bcm2835_audio_instance*, align 8
  %4 = alloca i32, align 4
  store %struct.bcm2835_alsa_stream* %0, %struct.bcm2835_alsa_stream** %2, align 8
  %5 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %2, align 8
  %6 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %5, i32 0, i32 0
  %7 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %6, align 8
  store %struct.bcm2835_audio_instance* %7, %struct.bcm2835_audio_instance** %3, align 8
  %8 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %2, align 8
  %9 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %8, i32 0, i32 0
  %10 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %9, align 8
  %11 = load i32, i32* @VC_AUDIO_MSG_TYPE_CLOSE, align 4
  %12 = call i32 @bcm2835_audio_send_simple(%struct.bcm2835_audio_instance* %10, i32 %11, i32 1)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %3, align 8
  %14 = call i32 @vc_vchi_audio_deinit(%struct.bcm2835_audio_instance* %13)
  %15 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %2, align 8
  %16 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %15, i32 0, i32 0
  store %struct.bcm2835_audio_instance* null, %struct.bcm2835_audio_instance** %16, align 8
  %17 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %3, align 8
  %18 = call i32 @kfree(%struct.bcm2835_audio_instance* %17)
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

declare dso_local i32 @bcm2835_audio_send_simple(%struct.bcm2835_audio_instance*, i32, i32) #1

declare dso_local i32 @vc_vchi_audio_deinit(%struct.bcm2835_audio_instance*) #1

declare dso_local i32 @kfree(%struct.bcm2835_audio_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
