; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_ddr_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_ddr_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32, i64 }

@SD_DDR_TX_PHASE_SET_BY_USER = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@TUNE_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @sd_ddr_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_ddr_tuning(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %5 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %6 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @SD_DDR_TX_PHASE_SET_BY_USER, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %1
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %13 = call i32 @sd_ddr_pre_tuning_tx(%struct.rtsx_chip* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @STATUS_SUCCESS, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %18, i32* %2, align 4
  br label %60

19:                                               ; preds = %11
  br label %34

20:                                               ; preds = %1
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %23 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @TUNE_TX, align 4
  %27 = call i32 @sd_change_phase(%struct.rtsx_chip* %21, i32 %25, i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @STATUS_SUCCESS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %32, i32* %2, align 4
  br label %60

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33, %19
  %35 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %36 = call i32 @sd_tuning_rx(%struct.rtsx_chip* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @STATUS_SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %41, i32* %2, align 4
  br label %60

42:                                               ; preds = %34
  %43 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %44 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @SD_DDR_TX_PHASE_SET_BY_USER, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %58, label %49

49:                                               ; preds = %42
  %50 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %51 = call i32 @sd_tuning_tx(%struct.rtsx_chip* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @STATUS_SUCCESS, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %56, i32* %2, align 4
  br label %60

57:                                               ; preds = %49
  br label %58

58:                                               ; preds = %57, %42
  %59 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %55, %40, %31, %17
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @sd_ddr_pre_tuning_tx(%struct.rtsx_chip*) #1

declare dso_local i32 @sd_change_phase(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @sd_tuning_rx(%struct.rtsx_chip*) #1

declare dso_local i32 @sd_tuning_tx(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
