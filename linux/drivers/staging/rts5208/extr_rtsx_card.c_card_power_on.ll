; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_card_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_card_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@SD_MS_2LUN = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i64 0, align 8
@MS_POWER_MASK = common dso_local global i64 0, align 8
@MS_PARTIAL_POWER_ON = common dso_local global i64 0, align 8
@MS_POWER_ON = common dso_local global i64 0, align 8
@SD_POWER_MASK = common dso_local global i64 0, align 8
@SD_PARTIAL_POWER_ON = common dso_local global i64 0, align 8
@SD_POWER_ON = common dso_local global i64 0, align 8
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@CARD_PWR_CTL = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @card_power_on(%struct.rtsx_chip* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %11 = load i32, i32* @SD_MS_2LUN, align 4
  %12 = call i64 @CHECK_LUN_MODE(%struct.rtsx_chip* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @MS_CARD, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i64, i64* @MS_POWER_MASK, align 8
  store i64 %19, i64* %7, align 8
  %20 = load i64, i64* @MS_PARTIAL_POWER_ON, align 8
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* @MS_POWER_ON, align 8
  store i64 %21, i64* %9, align 8
  br label %26

22:                                               ; preds = %14, %2
  %23 = load i64, i64* @SD_POWER_MASK, align 8
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* @SD_PARTIAL_POWER_ON, align 8
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* @SD_POWER_ON, align 8
  store i64 %25, i64* %9, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %28 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %27)
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %30 = load i32, i32* @WRITE_REG_CMD, align 4
  %31 = load i32, i32* @CARD_PWR_CTL, align 4
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %29, i32 %30, i32 %31, i64 %32, i64 %33)
  %35 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %36 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %35, i32 0, i32 100)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @STATUS_SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %41, i32* %3, align 4
  br label %64

42:                                               ; preds = %26
  %43 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %44 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @udelay(i32 %45)
  %47 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %48 = call i32 @rtsx_init_cmd(%struct.rtsx_chip* %47)
  %49 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %50 = load i32, i32* @WRITE_REG_CMD, align 4
  %51 = load i32, i32* @CARD_PWR_CTL, align 4
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %49, i32 %50, i32 %51, i64 %52, i64 %53)
  %55 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %56 = call i32 @rtsx_send_cmd(%struct.rtsx_chip* %55, i32 0, i32 100)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @STATUS_SUCCESS, align 4
  %59 = icmp ne i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %42
  %61 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %61, i32* %3, align 4
  br label %64

62:                                               ; preds = %42
  %63 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %60, %40
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @CHECK_LUN_MODE(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_init_cmd(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i64, i64) #1

declare dso_local i32 @rtsx_send_cmd(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
