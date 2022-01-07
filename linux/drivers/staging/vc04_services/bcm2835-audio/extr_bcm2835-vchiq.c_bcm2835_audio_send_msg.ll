; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_bcm2835_audio_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_bcm2835_audio_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_audio_instance = type { i32 }
%struct.vc_audio_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm2835_audio_instance*, %struct.vc_audio_msg*, i32)* @bcm2835_audio_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_audio_send_msg(%struct.bcm2835_audio_instance* %0, %struct.vc_audio_msg* %1, i32 %2) #0 {
  %4 = alloca %struct.bcm2835_audio_instance*, align 8
  %5 = alloca %struct.vc_audio_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bcm2835_audio_instance* %0, %struct.bcm2835_audio_instance** %4, align 8
  store %struct.vc_audio_msg* %1, %struct.vc_audio_msg** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %4, align 8
  %9 = call i32 @bcm2835_audio_lock(%struct.bcm2835_audio_instance* %8)
  %10 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %4, align 8
  %11 = load %struct.vc_audio_msg*, %struct.vc_audio_msg** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @bcm2835_audio_send_msg_locked(%struct.bcm2835_audio_instance* %10, %struct.vc_audio_msg* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %4, align 8
  %15 = call i32 @bcm2835_audio_unlock(%struct.bcm2835_audio_instance* %14)
  %16 = load i32, i32* %7, align 4
  ret i32 %16
}

declare dso_local i32 @bcm2835_audio_lock(%struct.bcm2835_audio_instance*) #1

declare dso_local i32 @bcm2835_audio_send_msg_locked(%struct.bcm2835_audio_instance*, %struct.vc_audio_msg*, i32) #1

declare dso_local i32 @bcm2835_audio_unlock(%struct.bcm2835_audio_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
