; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_audio.c_g_audio_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_u_audio.c_g_audio_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_audio = type { %struct.snd_uac_chip* }
%struct.snd_uac_chip = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.snd_card* }
%struct.TYPE_4__ = type { %struct.snd_uac_chip*, %struct.snd_uac_chip* }
%struct.TYPE_3__ = type { %struct.snd_uac_chip*, %struct.snd_uac_chip* }
%struct.snd_card = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @g_audio_cleanup(%struct.g_audio* %0) #0 {
  %2 = alloca %struct.g_audio*, align 8
  %3 = alloca %struct.snd_uac_chip*, align 8
  %4 = alloca %struct.snd_card*, align 8
  store %struct.g_audio* %0, %struct.g_audio** %2, align 8
  %5 = load %struct.g_audio*, %struct.g_audio** %2, align 8
  %6 = icmp ne %struct.g_audio* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.g_audio*, %struct.g_audio** %2, align 8
  %9 = getelementptr inbounds %struct.g_audio, %struct.g_audio* %8, i32 0, i32 0
  %10 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %9, align 8
  %11 = icmp ne %struct.snd_uac_chip* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %1
  br label %48

13:                                               ; preds = %7
  %14 = load %struct.g_audio*, %struct.g_audio** %2, align 8
  %15 = getelementptr inbounds %struct.g_audio, %struct.g_audio* %14, i32 0, i32 0
  %16 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %15, align 8
  store %struct.snd_uac_chip* %16, %struct.snd_uac_chip** %3, align 8
  %17 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %3, align 8
  %18 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %17, i32 0, i32 2
  %19 = load %struct.snd_card*, %struct.snd_card** %18, align 8
  store %struct.snd_card* %19, %struct.snd_card** %4, align 8
  %20 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %21 = icmp ne %struct.snd_card* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %24 = call i32 @snd_card_free(%struct.snd_card* %23)
  br label %25

25:                                               ; preds = %22, %13
  %26 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %3, align 8
  %27 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %28, align 8
  %30 = call i32 @kfree(%struct.snd_uac_chip* %29)
  %31 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %3, align 8
  %32 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %33, align 8
  %35 = call i32 @kfree(%struct.snd_uac_chip* %34)
  %36 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %3, align 8
  %37 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %38, align 8
  %40 = call i32 @kfree(%struct.snd_uac_chip* %39)
  %41 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %3, align 8
  %42 = getelementptr inbounds %struct.snd_uac_chip, %struct.snd_uac_chip* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %43, align 8
  %45 = call i32 @kfree(%struct.snd_uac_chip* %44)
  %46 = load %struct.snd_uac_chip*, %struct.snd_uac_chip** %3, align 8
  %47 = call i32 @kfree(%struct.snd_uac_chip* %46)
  br label %48

48:                                               ; preds = %25, %12
  ret void
}

declare dso_local i32 @snd_card_free(%struct.snd_card*) #1

declare dso_local i32 @kfree(%struct.snd_uac_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
