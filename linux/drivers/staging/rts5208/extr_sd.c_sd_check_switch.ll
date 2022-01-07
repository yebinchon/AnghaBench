; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_check_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_check_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@SD_CARD = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SD_NO_CARD = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@SD_CHECK_MODE = common dso_local global i32 0, align 4
@SD_SWITCH_MODE = common dso_local global i32 0, align 4
@SD_STAT1 = common dso_local global i32 0, align 4
@SD_CRC16_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"SD CRC16 error when switching mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32, i32)* @sd_check_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_check_switch(%struct.rtsx_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtsx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %73, %4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %76

17:                                               ; preds = %14
  %18 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %19 = load i32, i32* @SD_CARD, align 4
  %20 = call i32 @detect_card_cd(%struct.rtsx_chip* %18, i32 %19)
  %21 = load i32, i32* @STATUS_SUCCESS, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %25 = load i32, i32* @SD_NO_CARD, align 4
  %26 = call i32 @sd_set_err_code(%struct.rtsx_chip* %24, i32 %25)
  %27 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %27, i32* %5, align 4
  br label %83

28:                                               ; preds = %17
  %29 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %30 = load i32, i32* @SD_CHECK_MODE, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @sd_check_switch_mode(%struct.rtsx_chip* %29, i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @STATUS_SUCCESS, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %68

38:                                               ; preds = %28
  %39 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %40 = load i32, i32* @SD_SWITCH_MODE, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @sd_check_switch_mode(%struct.rtsx_chip* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @STATUS_SUCCESS, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  store i32 1, i32* %12, align 4
  br label %76

49:                                               ; preds = %38
  %50 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %51 = load i32, i32* @SD_STAT1, align 4
  %52 = call i32 @rtsx_read_register(%struct.rtsx_chip* %50, i32 %51, i32* %13)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %83

57:                                               ; preds = %49
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @SD_CRC16_ERR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %64 = call i32 @rtsx_dev(%struct.rtsx_chip* %63)
  %65 = call i32 @dev_dbg(i32 %64, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %66 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %66, i32* %5, align 4
  br label %83

67:                                               ; preds = %57
  br label %68

68:                                               ; preds = %67, %28
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @downgrade_switch_mode(i32 %69, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = call i32 @wait_timeout(i32 20)
  br label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %14

76:                                               ; preds = %48, %14
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %80, i32* %5, align 4
  br label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %79, %62, %55, %23
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @detect_card_cd(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_check_switch_mode(%struct.rtsx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_read_register(%struct.rtsx_chip*, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @downgrade_switch_mode(i32, i32) #1

declare dso_local i32 @wait_timeout(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
