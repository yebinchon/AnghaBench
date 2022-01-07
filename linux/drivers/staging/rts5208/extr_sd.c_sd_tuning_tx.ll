; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_tuning_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_tuning_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.sd_info }
%struct.sd_info = type { i32 }

@STATUS_FAIL = common dso_local global i32 0, align 4
@MAX_PHASE = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SD_NO_CARD = common dso_local global i32 0, align 4
@SD_CFG3 = common dso_local global i32 0, align 4
@SD_RSP_80CLK_TIMEOUT_EN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"TX raw_phase_map[%d] = 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"TX phase_map = 0x%08x\0A\00", align 1
@TUNE_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @sd_tuning_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_tuning_tx(%struct.rtsx_chip* %0) #0 {
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
  store i32 (%struct.rtsx_chip*, i32)* @sd_ddr_tuning_tx_cmd, i32 (%struct.rtsx_chip*, i32)** %11, align 8
  br label %23

22:                                               ; preds = %17
  store i32 (%struct.rtsx_chip*, i32)* @sd_sdr_tuning_tx_cmd, i32 (%struct.rtsx_chip*, i32)** %11, align 8
  br label %23

23:                                               ; preds = %22, %21
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %26 = call i64 @CHK_MMC_DDR52(%struct.sd_info* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 (%struct.rtsx_chip*, i32)* @sd_ddr_tuning_tx_cmd, i32 (%struct.rtsx_chip*, i32)** %11, align 8
  br label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %30, i32* %2, align 4
  br label %132

31:                                               ; preds = %28
  br label %32

32:                                               ; preds = %31, %23
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %80, %32
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %83

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %38
  store i32 0, i32* %39, align 4
  %40 = load i32, i32* @MAX_PHASE, align 4
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %76, %36
  %42 = load i32, i32* %7, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %41
  %45 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %46 = load i32, i32* @SD_CARD, align 4
  %47 = call i32 @detect_card_cd(%struct.rtsx_chip* %45, i32 %46)
  %48 = load i32, i32* @STATUS_SUCCESS, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %44
  %51 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %52 = load i32, i32* @SD_NO_CARD, align 4
  %53 = call i32 @sd_set_err_code(%struct.rtsx_chip* %51, i32 %52)
  %54 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %55 = load i32, i32* @SD_CFG3, align 4
  %56 = load i32, i32* @SD_RSP_80CLK_TIMEOUT_EN, align 4
  %57 = call i32 @rtsx_write_register(%struct.rtsx_chip* %54, i32 %55, i32 %56, i32 0)
  %58 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %58, i32* %2, align 4
  br label %132

59:                                               ; preds = %44
  %60 = load i32 (%struct.rtsx_chip*, i32)*, i32 (%struct.rtsx_chip*, i32)** %11, align 8
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 %60(%struct.rtsx_chip* %61, i32 %62)
  store i32 %63, i32* %5, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @STATUS_SUCCESS, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %59
  %68 = load i32, i32* %7, align 4
  %69 = shl i32 1, %68
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %67, %59
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %7, align 4
  br label %41

79:                                               ; preds = %41
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %33

83:                                               ; preds = %33
  %84 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %85, %87
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %88, %90
  store i32 %91, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %104, %83
  %93 = load i32, i32* %6, align 4
  %94 = icmp slt i32 %93, 3
  br i1 %94, label %95, label %107

95:                                               ; preds = %92
  %96 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %97 = call i32 @rtsx_dev(%struct.rtsx_chip* %96)
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %97, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %98, i32 %102)
  br label %104

104:                                              ; preds = %95
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %92

107:                                              ; preds = %92
  %108 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %109 = call i32 @rtsx_dev(%struct.rtsx_chip* %108)
  %110 = load i32, i32* %9, align 4
  %111 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %110)
  %112 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* @TUNE_TX, align 4
  %115 = call i32 @sd_search_final_phase(%struct.rtsx_chip* %112, i32 %113, i32 %114)
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %10, align 4
  %117 = icmp eq i32 %116, 255
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %119, i32* %2, align 4
  br label %132

120:                                              ; preds = %107
  %121 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @TUNE_TX, align 4
  %124 = call i32 @sd_change_phase(%struct.rtsx_chip* %121, i32 %122, i32 %123)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load i32, i32* @STATUS_SUCCESS, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %129, i32* %2, align 4
  br label %132

130:                                              ; preds = %120
  %131 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %131, i32* %2, align 4
  br label %132

132:                                              ; preds = %130, %128, %118, %50, %29
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i64 @CHK_SD(%struct.sd_info*) #1

declare dso_local i64 @CHK_SD_DDR50(%struct.sd_info*) #1

declare dso_local i32 @sd_ddr_tuning_tx_cmd(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_sdr_tuning_tx_cmd(%struct.rtsx_chip*, i32) #1

declare dso_local i64 @CHK_MMC_DDR52(%struct.sd_info*) #1

declare dso_local i32 @detect_card_cd(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

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
