; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_card_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_card_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@SD_MS_2LUN = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i64 0, align 8
@MS_POWER_MASK = common dso_local global i64 0, align 8
@MS_POWER_OFF = common dso_local global i64 0, align 8
@SD_POWER_MASK = common dso_local global i64 0, align 8
@SD_POWER_OFF = common dso_local global i64 0, align 8
@CARD_PWR_CTL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @card_power_off(%struct.rtsx_chip* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %10 = load i32, i32* @SD_MS_2LUN, align 4
  %11 = call i64 @CHECK_LUN_MODE(%struct.rtsx_chip* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @MS_CARD, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i64, i64* @MS_POWER_MASK, align 8
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* @MS_POWER_OFF, align 8
  store i64 %19, i64* %8, align 8
  br label %23

20:                                               ; preds = %13, %2
  %21 = load i64, i64* @SD_POWER_MASK, align 8
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* @SD_POWER_OFF, align 8
  store i64 %22, i64* %8, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %25 = load i32, i32* @CARD_PWR_CTL, align 4
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @rtsx_write_register(%struct.rtsx_chip* %24, i32 %25, i64 %26, i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %35

33:                                               ; preds = %23
  %34 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i64 @CHECK_LUN_MODE(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
