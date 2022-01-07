; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_bcm2835_audio_set_ctls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_bcm2835_audio_set_ctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_alsa_stream = type { i32, %struct.bcm2835_chip* }
%struct.bcm2835_chip = type { i32, i32, i32 }
%struct.vc_audio_msg = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@VC_AUDIO_MSG_TYPE_CONTROL = common dso_local global i32 0, align 4
@CHIP_MIN_VOLUME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm2835_audio_set_ctls(%struct.bcm2835_alsa_stream* %0) #0 {
  %2 = alloca %struct.bcm2835_alsa_stream*, align 8
  %3 = alloca %struct.bcm2835_chip*, align 8
  %4 = alloca %struct.vc_audio_msg, align 4
  store %struct.bcm2835_alsa_stream* %0, %struct.bcm2835_alsa_stream** %2, align 8
  %5 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %2, align 8
  %6 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %5, i32 0, i32 1
  %7 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %6, align 8
  store %struct.bcm2835_chip* %7, %struct.bcm2835_chip** %3, align 8
  %8 = bitcast %struct.vc_audio_msg* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 12, i1 false)
  %9 = load i32, i32* @VC_AUDIO_MSG_TYPE_CONTROL, align 4
  %10 = getelementptr inbounds %struct.vc_audio_msg, %struct.vc_audio_msg* %4, i32 0, i32 1
  store i32 %9, i32* %10, align 4
  %11 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %3, align 8
  %12 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.vc_audio_msg, %struct.vc_audio_msg* %4, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %3, align 8
  %17 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @CHIP_MIN_VOLUME, align 4
  %22 = getelementptr inbounds %struct.vc_audio_msg, %struct.vc_audio_msg* %4, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %31

24:                                               ; preds = %1
  %25 = load %struct.bcm2835_chip*, %struct.bcm2835_chip** %3, align 8
  %26 = getelementptr inbounds %struct.bcm2835_chip, %struct.bcm2835_chip* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @alsa2chip(i32 %27)
  %29 = getelementptr inbounds %struct.vc_audio_msg, %struct.vc_audio_msg* %4, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %24, %20
  %32 = load %struct.bcm2835_alsa_stream*, %struct.bcm2835_alsa_stream** %2, align 8
  %33 = getelementptr inbounds %struct.bcm2835_alsa_stream, %struct.bcm2835_alsa_stream* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @bcm2835_audio_send_msg(i32 %34, %struct.vc_audio_msg* %4, i32 1)
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @alsa2chip(i32) #2

declare dso_local i32 @bcm2835_audio_send_msg(i32, %struct.vc_audio_msg*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
