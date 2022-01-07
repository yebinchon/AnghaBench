; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_ddr_pre_tuning_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_ddr_pre_tuning_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.sd_info }
%struct.sd_info = type { i32 }

@SD_CFG3 = common dso_local global i32 0, align 4
@SD_RSP_80CLK_TIMEOUT_EN = common dso_local global i32 0, align 4
@MAX_PHASE = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SD_NO_CARD = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@TUNE_TX = common dso_local global i32 0, align 4
@SEND_STATUS = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@SD_RSP_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"DDR TX pre tune phase_map = 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"DDR TX pre tune phase: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @sd_ddr_pre_tuning_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_ddr_pre_tuning_tx(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.sd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %10 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %9, i32 0, i32 0
  store %struct.sd_info* %10, %struct.sd_info** %4, align 8
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %12 = load i32, i32* @SD_CFG3, align 4
  %13 = load i32, i32* @SD_RSP_80CLK_TIMEOUT_EN, align 4
  %14 = load i32, i32* @SD_RSP_80CLK_TIMEOUT_EN, align 4
  %15 = call i32 @rtsx_write_register(%struct.rtsx_chip* %11, i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %112

20:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %21 = load i32, i32* @MAX_PHASE, align 4
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %71, %20
  %23 = load i32, i32* %6, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %74

25:                                               ; preds = %22
  %26 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %27 = load i32, i32* @SD_CARD, align 4
  %28 = call i32 @detect_card_cd(%struct.rtsx_chip* %26, i32 %27)
  %29 = load i32, i32* @STATUS_SUCCESS, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %33 = load i32, i32* @SD_NO_CARD, align 4
  %34 = call i32 @sd_set_err_code(%struct.rtsx_chip* %32, i32 %33)
  %35 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %36 = load i32, i32* @SD_CFG3, align 4
  %37 = load i32, i32* @SD_RSP_80CLK_TIMEOUT_EN, align 4
  %38 = call i32 @rtsx_write_register(%struct.rtsx_chip* %35, i32 %36, i32 %37, i32 0)
  %39 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %39, i32* %2, align 4
  br label %112

40:                                               ; preds = %25
  %41 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @TUNE_TX, align 4
  %44 = call i32 @sd_change_phase(%struct.rtsx_chip* %41, i32 %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @STATUS_SUCCESS, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %71

49:                                               ; preds = %40
  %50 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %51 = load i32, i32* @SEND_STATUS, align 4
  %52 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %53 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %56 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %50, i32 %51, i32 %54, i32 %55, i32* null, i32 0)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @STATUS_SUCCESS, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %49
  %61 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %62 = load i32, i32* @SD_RSP_TIMEOUT, align 4
  %63 = call i32 @sd_check_err_code(%struct.rtsx_chip* %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60, %49
  %66 = load i32, i32* %6, align 4
  %67 = shl i32 1, %66
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  br label %70

70:                                               ; preds = %65, %60
  br label %71

71:                                               ; preds = %70, %48
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %6, align 4
  br label %22

74:                                               ; preds = %22
  %75 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %76 = load i32, i32* @SD_CFG3, align 4
  %77 = load i32, i32* @SD_RSP_80CLK_TIMEOUT_EN, align 4
  %78 = call i32 @rtsx_write_register(%struct.rtsx_chip* %75, i32 %76, i32 %77, i32 0)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %112

83:                                               ; preds = %74
  %84 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %85 = call i32 @rtsx_dev(%struct.rtsx_chip* %84)
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @dev_dbg(i32 %85, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @TUNE_TX, align 4
  %91 = call i32 @sd_search_final_phase(%struct.rtsx_chip* %88, i32 %89, i32 %90)
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 255
  br i1 %93, label %94, label %96

94:                                               ; preds = %83
  %95 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %95, i32* %2, align 4
  br label %112

96:                                               ; preds = %83
  %97 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @TUNE_TX, align 4
  %100 = call i32 @sd_change_phase(%struct.rtsx_chip* %97, i32 %98, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @STATUS_SUCCESS, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %96
  %105 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %105, i32* %2, align 4
  br label %112

106:                                              ; preds = %96
  %107 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %108 = call i32 @rtsx_dev(%struct.rtsx_chip* %107)
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @dev_dbg(i32 %108, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %106, %104, %94, %81, %31, %18
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @detect_card_cd(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_change_phase(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @sd_check_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @sd_search_final_phase(%struct.rtsx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
