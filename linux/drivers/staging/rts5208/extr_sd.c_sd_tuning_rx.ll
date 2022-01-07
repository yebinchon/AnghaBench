; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_tuning_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_tuning_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.sd_info }
%struct.sd_info = type { i32 }

@STATUS_FAIL = common dso_local global i32 0, align 4
@MAX_PHASE = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SD_NO_CARD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"RX raw_phase_map[%d] = 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"RX phase_map = 0x%08x\0A\00", align 1
@TUNE_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @sd_tuning_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_tuning_rx(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.sd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32 (%struct.rtsx_chip*, i32)*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %13 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %12, i32 0, i32 0
  store %struct.sd_info* %13, %struct.sd_info** %4, align 8
  %14 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %15 = call i64 @CHK_SD(%struct.sd_info* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %19 = call i64 @CHK_SD_DDR50(%struct.sd_info* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 (%struct.rtsx_chip*, i32)* @sd_ddr_tuning_rx_cmd, i32 (%struct.rtsx_chip*, i32)** %11, align 8
  br label %23

22:                                               ; preds = %17
  store i32 (%struct.rtsx_chip*, i32)* @sd_sdr_tuning_rx_cmd, i32 (%struct.rtsx_chip*, i32)** %11, align 8
  br label %23

23:                                               ; preds = %22, %21
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %26 = call i64 @CHK_MMC_DDR52(%struct.sd_info* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 (%struct.rtsx_chip*, i32)* @mmc_ddr_tuning_rx_cmd, i32 (%struct.rtsx_chip*, i32)** %11, align 8
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %30, i32* %2, align 4
  br label %128

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %31, %23
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %76, %32
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %79

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %38
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* @MAX_PHASE, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %72, %36
  %42 = load i32, i32* %7, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %41
  %45 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %46 = load i32, i32* @SD_CARD, align 4
  %47 = call i32 @detect_card_cd(%struct.rtsx_chip* %45, i32 %46)
  %48 = load i32, i32* @STATUS_SUCCESS, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %44
  %51 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %52 = load i32, i32* @SD_NO_CARD, align 4
  %53 = call i32 @sd_set_err_code(%struct.rtsx_chip* %51, i32 %52)
  %54 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %54, i32* %2, align 4
  br label %128

55:                                               ; preds = %44
  %56 = load i32 (%struct.rtsx_chip*, i32)*, i32 (%struct.rtsx_chip*, i32)** %11, align 8
  %57 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 %56(%struct.rtsx_chip* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @STATUS_SUCCESS, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %55
  %64 = load i32, i32* %7, align 4
  %65 = shl i32 1, %64
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %65
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %63, %55
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %7, align 4
  br label %41

75:                                               ; preds = %41
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %33

79:                                               ; preds = %33
  %80 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %81, %83
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %84, %86
  store i32 %87, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %88

88:                                               ; preds = %100, %79
  %89 = load i32, i32* %6, align 4
  %90 = icmp slt i32 %89, 3
  br i1 %90, label %91, label %103

91:                                               ; preds = %88
  %92 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %93 = call i32 @rtsx_dev(%struct.rtsx_chip* %92)
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %94, i32 %98)
  br label %100

100:                                              ; preds = %91
  %101 = load i32, i32* %6, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %6, align 4
  br label %88

103:                                              ; preds = %88
  %104 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %105 = call i32 @rtsx_dev(%struct.rtsx_chip* %104)
  %106 = load i32, i32* %9, align 4
  %107 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %106)
  %108 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @TUNE_RX, align 4
  %111 = call i32 @sd_search_final_phase(%struct.rtsx_chip* %108, i32 %109, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = icmp eq i32 %112, 255
  br i1 %113, label %114, label %116

114:                                              ; preds = %103
  %115 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %115, i32* %2, align 4
  br label %128

116:                                              ; preds = %103
  %117 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* @TUNE_RX, align 4
  %120 = call i32 @sd_change_phase(%struct.rtsx_chip* %117, i32 %118, i32 %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @STATUS_SUCCESS, align 4
  %123 = icmp ne i32 %121, %122
  br i1 %123, label %124, label %126

124:                                              ; preds = %116
  %125 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %125, i32* %2, align 4
  br label %128

126:                                              ; preds = %116
  %127 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %126, %124, %114, %50, %29
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i64 @CHK_SD(%struct.sd_info*) #1

declare dso_local i64 @CHK_SD_DDR50(%struct.sd_info*) #1

declare dso_local i32 @sd_ddr_tuning_rx_cmd(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_sdr_tuning_rx_cmd(%struct.rtsx_chip*, i32) #1

declare dso_local i64 @CHK_MMC_DDR52(%struct.sd_info*) #1

declare dso_local i32 @mmc_ddr_tuning_rx_cmd(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @detect_card_cd(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @sd_search_final_phase(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @sd_change_phase(%struct.rtsx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
