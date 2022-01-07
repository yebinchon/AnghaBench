; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_switch_rf_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/extr_trf7970a.c_trf7970a_switch_rf_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trf7970a = type { i64, i32, i32, i32 }

@TRF7970A_ST_PWR_OFF = common dso_local global i64 0, align 8
@TRF7970A_ST_RF_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Switching rf off\0A\00", align 1
@TRF7970A_CHIP_STATUS_RF_ON = common dso_local global i32 0, align 4
@TRF7970A_CHIP_STATUS_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trf7970a*)* @trf7970a_switch_rf_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trf7970a_switch_rf_off(%struct.trf7970a* %0) #0 {
  %2 = alloca %struct.trf7970a*, align 8
  store %struct.trf7970a* %0, %struct.trf7970a** %2, align 8
  %3 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %4 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @TRF7970A_ST_PWR_OFF, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %10 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @TRF7970A_ST_RF_OFF, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8, %1
  br label %45

15:                                               ; preds = %8
  %16 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %17 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @TRF7970A_CHIP_STATUS_RF_ON, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %23 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %27 = load i32, i32* @TRF7970A_CHIP_STATUS_CTRL, align 4
  %28 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %29 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @trf7970a_write(%struct.trf7970a* %26, i32 %27, i32 %30)
  %32 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %33 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %32, i32 0, i32 1
  store i32 0, i32* %33, align 8
  %34 = load i64, i64* @TRF7970A_ST_RF_OFF, align 8
  %35 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %36 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %38 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pm_runtime_mark_last_busy(i32 %39)
  %41 = load %struct.trf7970a*, %struct.trf7970a** %2, align 8
  %42 = getelementptr inbounds %struct.trf7970a, %struct.trf7970a* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pm_runtime_put_autosuspend(i32 %43)
  br label %45

45:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @trf7970a_write(%struct.trf7970a*, i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
