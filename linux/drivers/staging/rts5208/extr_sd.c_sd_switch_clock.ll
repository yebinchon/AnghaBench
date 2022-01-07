; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_switch_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_switch_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.sd_info }
%struct.sd_info = type { i32 }

@SD_CARD = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sd_switch_clock(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.sd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %8 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %7, i32 0, i32 0
  store %struct.sd_info* %8, %struct.sd_info** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %10 = load i32, i32* @SD_CARD, align 4
  %11 = call i32 @select_card(%struct.rtsx_chip* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @STATUS_SUCCESS, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %16, i32* %2, align 4
  br label %63

17:                                               ; preds = %1
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %19 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %20 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @switch_clock(%struct.rtsx_chip* %18, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @STATUS_SUCCESS, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %17
  %27 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %27, i32* %2, align 4
  br label %63

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %28
  %32 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %33 = call i64 @CHK_SD(%struct.sd_info* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %31
  %36 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %37 = call i64 @CHK_SD_DDR50(%struct.sd_info* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %41 = call i32 @sd_ddr_tuning(%struct.rtsx_chip* %40)
  store i32 %41, i32* %5, align 4
  br label %45

42:                                               ; preds = %35
  %43 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %44 = call i32 @sd_sdr_tuning(%struct.rtsx_chip* %43)
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %42, %39
  br label %54

46:                                               ; preds = %31
  %47 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %48 = call i64 @CHK_MMC_DDR52(%struct.sd_info* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %52 = call i32 @mmc_ddr_tuning(%struct.rtsx_chip* %51)
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53, %45
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @STATUS_SUCCESS, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %59, i32* %2, align 4
  br label %63

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60, %28
  %62 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %58, %26, %15
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @select_card(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @switch_clock(%struct.rtsx_chip*, i32) #1

declare dso_local i64 @CHK_SD(%struct.sd_info*) #1

declare dso_local i64 @CHK_SD_DDR50(%struct.sd_info*) #1

declare dso_local i32 @sd_ddr_tuning(%struct.rtsx_chip*) #1

declare dso_local i32 @sd_sdr_tuning(%struct.rtsx_chip*) #1

declare dso_local i64 @CHK_MMC_DDR52(%struct.sd_info*) #1

declare dso_local i32 @mmc_ddr_tuning(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
