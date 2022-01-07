; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_vc_vchi_audio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-audio/extr_bcm2835-vchiq.c_vc_vchi_audio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_audio_instance = type { i32, i32 }
%struct.service_creation = type { %struct.bcm2835_audio_instance*, i32, i32, i32 }

@audio_vchi_callback = common dso_local global i32 0, align 4
@VC_AUDIO_SERVER_NAME = common dso_local global i32 0, align 4
@VC_AUDIOSERV_VER = common dso_local global i32 0, align 4
@VC_AUDIOSERV_MIN_VER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"failed to open VCHI service connection (status=%d)\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.bcm2835_audio_instance*)* @vc_vchi_audio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc_vchi_audio_init(i32 %0, %struct.bcm2835_audio_instance* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm2835_audio_instance*, align 8
  %6 = alloca %struct.service_creation, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.bcm2835_audio_instance* %1, %struct.bcm2835_audio_instance** %5, align 8
  %8 = getelementptr inbounds %struct.service_creation, %struct.service_creation* %6, i32 0, i32 0
  %9 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  store %struct.bcm2835_audio_instance* %9, %struct.bcm2835_audio_instance** %8, align 8
  %10 = getelementptr inbounds %struct.service_creation, %struct.service_creation* %6, i32 0, i32 1
  %11 = load i32, i32* @audio_vchi_callback, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.service_creation, %struct.service_creation* %6, i32 0, i32 2
  %13 = load i32, i32* @VC_AUDIO_SERVER_NAME, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.service_creation, %struct.service_creation* %6, i32 0, i32 3
  %15 = load i32, i32* @VC_AUDIOSERV_VER, align 4
  %16 = load i32, i32* @VC_AUDIOSERV_MIN_VER, align 4
  %17 = call i32 @VCHI_VERSION_EX(i32 %15, i32 %16)
  store i32 %17, i32* %14, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %20 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %19, i32 0, i32 0
  %21 = call i32 @vchi_service_open(i32 %18, %struct.service_creation* %6, i32* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %2
  %25 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %26 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @EPERM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %37

32:                                               ; preds = %2
  %33 = load %struct.bcm2835_audio_instance*, %struct.bcm2835_audio_instance** %5, align 8
  %34 = getelementptr inbounds %struct.bcm2835_audio_instance, %struct.bcm2835_audio_instance* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @vchi_service_release(i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %24
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @VCHI_VERSION_EX(i32, i32) #1

declare dso_local i32 @vchi_service_open(i32, %struct.service_creation*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @vchi_service_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
