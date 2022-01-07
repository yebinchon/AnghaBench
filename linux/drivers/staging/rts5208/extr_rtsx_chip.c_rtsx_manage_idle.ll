; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_manage_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_chip.c_rtsx_manage_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i64, i32, i32, i64, i64 }

@IDLE_MAX_COUNT = common dso_local global i64 0, align 8
@RTSX_STAT_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"Idle state!\0A\00", align 1
@SSC_PDCTL = common dso_local global i32 0, align 4
@LED_GPIO = common dso_local global i32 0, align 4
@OC_PDCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtsx_chip*)* @rtsx_manage_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtsx_manage_idle(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %3 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %4 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @IDLE_MAX_COUNT, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %10 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* %10, align 8
  br label %52

13:                                               ; preds = %1
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %15 = call i64 @rtsx_get_stat(%struct.rtsx_chip* %14)
  %16 = load i64, i64* @RTSX_STAT_IDLE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %52

19:                                               ; preds = %13
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %21 = call i32 @rtsx_dev(%struct.rtsx_chip* %20)
  %22 = call i32 @dev_dbg(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %24 = load i64, i64* @RTSX_STAT_IDLE, align 8
  %25 = call i32 @rtsx_set_stat(%struct.rtsx_chip* %23, i64 %24)
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %27 = load i32, i32* @SSC_PDCTL, align 4
  %28 = call i32 @rtsx_force_power_on(%struct.rtsx_chip* %26, i32 %27)
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %30 = load i32, i32* @LED_GPIO, align 4
  %31 = call i32 @turn_off_led(%struct.rtsx_chip* %29, i32 %30)
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %33 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %19
  %37 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %38 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %36
  %42 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %43 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %41
  %47 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %48 = load i32, i32* @SSC_PDCTL, align 4
  %49 = load i32, i32* @OC_PDCTL, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @rtsx_force_power_down(%struct.rtsx_chip* %47, i32 %50)
  br label %52

52:                                               ; preds = %8, %18, %46, %41, %36, %19
  ret void
}

declare dso_local i64 @rtsx_get_stat(%struct.rtsx_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_set_stat(%struct.rtsx_chip*, i64) #1

declare dso_local i32 @rtsx_force_power_on(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @turn_off_led(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_force_power_down(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
