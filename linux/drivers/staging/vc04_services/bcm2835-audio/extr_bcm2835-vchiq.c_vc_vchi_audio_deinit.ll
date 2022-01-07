; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_vc_vchi_audio_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_vc_vchi_audio_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_audio_instance = type { i32, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"failed to close VCHI service connection (status=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_audio_instance*)* @vc_vchi_audio_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vc_vchi_audio_deinit(%struct.bcm2835_audio_instance* %0) #0 {
  %2 = alloca %struct.bcm2835_audio_instance*, align 8
  %3 = alloca i32, align 4
  store %struct.bcm2835_audio_instance* %0, %struct.bcm2835_audio_instance** %2, align 8
  %4 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %2, align 8
  %5 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %4, i32 0, i32 0
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %2, align 8
  %8 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @vchi_service_use(i32 %9)
  %11 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %2, align 8
  %12 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @vchi_service_close(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %2, align 8
  %19 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %2, align 8
  %25 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %24, i32 0, i32 0
  %26 = call i32 @mutex_unlock(i32* %25)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vchi_service_use(i32) #1

declare dso_local i32 @vchi_service_close(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
