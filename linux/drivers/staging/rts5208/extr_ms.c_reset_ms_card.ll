; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_reset_ms_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_ms.c_reset_ms_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.ms_info }
%struct.ms_info = type { i32, i64, i64 }

@MS_CARD = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"ms_card->ms_type = 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reset_ms_card(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.ms_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %8 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %7, i32 0, i32 0
  store %struct.ms_info* %8, %struct.ms_info** %4, align 8
  %9 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %10 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sdiv i32 %11, 512
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %15 = call i32 @memset(%struct.ms_info* %14, i32 0, i32 24)
  %16 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %17 = load i32, i32* @MS_CARD, align 4
  %18 = call i32 @enable_card_clock(%struct.rtsx_chip* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @STATUS_SUCCESS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %23, i32* %2, align 4
  br label %88

24:                                               ; preds = %1
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %26 = load i32, i32* @MS_CARD, align 4
  %27 = call i32 @select_card(%struct.rtsx_chip* %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @STATUS_SUCCESS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %32, i32* %2, align 4
  br label %88

33:                                               ; preds = %24
  %34 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %35 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %34, i32 0, i32 1
  store i64 0, i64* %35, align 8
  %36 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %37 = call i32 @reset_ms_pro(%struct.rtsx_chip* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @STATUS_SUCCESS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %33
  %42 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %43 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %48 = call i32 @reset_ms(%struct.rtsx_chip* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @STATUS_SUCCESS, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %53, i32* %2, align 4
  br label %88

54:                                               ; preds = %46
  br label %57

55:                                               ; preds = %41
  %56 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %56, i32* %2, align 4
  br label %88

57:                                               ; preds = %54
  br label %58

58:                                               ; preds = %57, %33
  %59 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %60 = call i32 @ms_set_init_para(%struct.rtsx_chip* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @STATUS_SUCCESS, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %65, i32* %2, align 4
  br label %88

66:                                               ; preds = %58
  %67 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %68 = call i32 @CHK_MSPRO(%struct.ms_info* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %80, label %70

70:                                               ; preds = %66
  %71 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @ms_build_l2p_tbl(%struct.rtsx_chip* %71, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @STATUS_SUCCESS, align 4
  %76 = icmp ne i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %78, i32* %2, align 4
  br label %88

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %66
  %81 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %82 = call i32 @rtsx_dev(%struct.rtsx_chip* %81)
  %83 = load %struct.ms_info*, %struct.ms_info** %4, align 8
  %84 = getelementptr inbounds %struct.ms_info, %struct.ms_info* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @dev_dbg(i32 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %85)
  %87 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %80, %77, %64, %55, %52, %31, %22
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @memset(%struct.ms_info*, i32, i32) #1

declare dso_local i32 @enable_card_clock(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @select_card(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @reset_ms_pro(%struct.rtsx_chip*) #1

declare dso_local i32 @reset_ms(%struct.rtsx_chip*) #1

declare dso_local i32 @ms_set_init_para(%struct.rtsx_chip*) #1

declare dso_local i32 @CHK_MSPRO(%struct.ms_info*) #1

declare dso_local i32 @ms_build_l2p_tbl(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
