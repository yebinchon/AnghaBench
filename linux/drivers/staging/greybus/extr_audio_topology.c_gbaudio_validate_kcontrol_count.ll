; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_topology.c_gbaudio_validate_kcontrol_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_audio_topology.c_gbaudio_validate_kcontrol_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_audio_widget = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_audio_widget*)* @gbaudio_validate_kcontrol_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbaudio_validate_kcontrol_count(%struct.gb_audio_widget* %0) #0 {
  %2 = alloca %struct.gb_audio_widget*, align 8
  %3 = alloca i32, align 4
  store %struct.gb_audio_widget* %0, %struct.gb_audio_widget** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.gb_audio_widget*, %struct.gb_audio_widget** %2, align 8
  %5 = getelementptr inbounds %struct.gb_audio_widget, %struct.gb_audio_widget* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %25 [
    i32 129, label %7
    i32 134, label %7
    i32 132, label %7
    i32 130, label %7
    i32 133, label %7
    i32 128, label %16
    i32 131, label %16
  ]

7:                                                ; preds = %1, %1, %1, %1, %1
  %8 = load %struct.gb_audio_widget*, %struct.gb_audio_widget** %2, align 8
  %9 = getelementptr inbounds %struct.gb_audio_widget, %struct.gb_audio_widget* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %12, %7
  br label %26

16:                                               ; preds = %1, %1
  %17 = load %struct.gb_audio_widget*, %struct.gb_audio_widget** %2, align 8
  %18 = getelementptr inbounds %struct.gb_audio_widget, %struct.gb_audio_widget* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 1
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %16
  br label %26

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %25, %24, %15
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
