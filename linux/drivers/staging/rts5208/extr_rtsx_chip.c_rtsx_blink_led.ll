; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_blink_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_blink_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i64, i64, i64 }

@LED_TOGGLE_INTERVAL = common dso_local global i64 0, align 8
@LED_GPIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*)* @rtsx_blink_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsx_blink_led(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %3 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %4 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %30

7:                                                ; preds = %1
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %9 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %30

12:                                               ; preds = %7
  %13 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %14 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @LED_TOGGLE_INTERVAL, align 8
  %17 = icmp slt i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %12
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %20 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, i64* %20, align 8
  br label %29

23:                                               ; preds = %12
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %25 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %27 = load i32, i32* @LED_GPIO, align 4
  %28 = call i32 @toggle_gpio(%struct.rtsx_chip* %26, i32 %27)
  br label %29

29:                                               ; preds = %23, %18
  br label %30

30:                                               ; preds = %29, %7, %1
  ret void
}

declare dso_local i32 @toggle_gpio(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
