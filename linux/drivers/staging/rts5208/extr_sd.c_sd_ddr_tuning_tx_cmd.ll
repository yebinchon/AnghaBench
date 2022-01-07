; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_ddr_tuning_tx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_ddr_tuning_tx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.sd_info }
%struct.sd_info = type { i32, i32 }

@TUNE_TX = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@SD_CFG3 = common dso_local global i32 0, align 4
@SD_RSP_80CLK_TIMEOUT_EN = common dso_local global i32 0, align 4
@PROGRAM_CSD = common dso_local global i32 0, align 4
@SD_TM_AUTO_WRITE_2 = common dso_local global i32 0, align 4
@SEND_STATUS = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32)* @sd_ddr_tuning_tx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_ddr_tuning_tx_cmd(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [5 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %11 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %10, i32 0, i32 0
  store %struct.sd_info* %11, %struct.sd_info** %6, align 8
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @TUNE_TX, align 4
  %15 = call i32 @sd_change_phase(%struct.rtsx_chip* %12, i32 %13, i32 %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @STATUS_SUCCESS, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %20, i32* %3, align 4
  br label %106

21:                                               ; preds = %2
  %22 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %23 = call i64 @CHK_SD(%struct.sd_info* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = load i32, i32* @SD_BUS_WIDTH_4, align 4
  store i32 %26, i32* %9, align 4
  br label %43

27:                                               ; preds = %21
  %28 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %29 = call i64 @CHK_MMC_8BIT(%struct.sd_info* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @SD_BUS_WIDTH_8, align 4
  store i32 %32, i32* %9, align 4
  br label %42

33:                                               ; preds = %27
  %34 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %35 = call i64 @CHK_MMC_4BIT(%struct.sd_info* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @SD_BUS_WIDTH_4, align 4
  store i32 %38, i32* %9, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @SD_BUS_WIDTH_1, align 4
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %31
  br label %43

43:                                               ; preds = %42, %25
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %45 = call i32 @sd_wait_state_data_ready(%struct.rtsx_chip* %44, i32 8, i32 1, i32 1000)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @STATUS_SUCCESS, align 4
  %48 = icmp ne i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %50, i32* %3, align 4
  br label %106

51:                                               ; preds = %43
  %52 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %53 = load i32, i32* @SD_CFG3, align 4
  %54 = load i32, i32* @SD_RSP_80CLK_TIMEOUT_EN, align 4
  %55 = load i32, i32* @SD_RSP_80CLK_TIMEOUT_EN, align 4
  %56 = call i32 @rtsx_write_register(%struct.rtsx_chip* %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %106

61:                                               ; preds = %51
  %62 = load i32, i32* @PROGRAM_CSD, align 4
  %63 = or i32 64, %62
  %64 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  store i32 %63, i32* %64, align 16
  %65 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %65, align 4
  %66 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  store i32 0, i32* %66, align 8
  %67 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 3
  store i32 0, i32* %67, align 4
  %68 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 4
  store i32 0, i32* %68, align 16
  %69 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %70 = load i32, i32* @SD_TM_AUTO_WRITE_2, align 4
  %71 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %74 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @sd_write_data(%struct.rtsx_chip* %69, i32 %70, i32* %71, i32 5, i32 16, i32 1, i32 %72, i32 %75, i32 16, i32 100)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @STATUS_SUCCESS, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %61
  %81 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %82 = call i32 @rtsx_clear_sd_error(%struct.rtsx_chip* %81)
  %83 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %84 = load i32, i32* @SD_CFG3, align 4
  %85 = load i32, i32* @SD_RSP_80CLK_TIMEOUT_EN, align 4
  %86 = call i32 @rtsx_write_register(%struct.rtsx_chip* %83, i32 %84, i32 %85, i32 0)
  %87 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %87, i32* %3, align 4
  br label %106

88:                                               ; preds = %61
  %89 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %90 = load i32, i32* @SD_CFG3, align 4
  %91 = load i32, i32* @SD_RSP_80CLK_TIMEOUT_EN, align 4
  %92 = call i32 @rtsx_write_register(%struct.rtsx_chip* %89, i32 %90, i32 %91, i32 0)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %88
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %3, align 4
  br label %106

97:                                               ; preds = %88
  %98 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %99 = load i32, i32* @SEND_STATUS, align 4
  %100 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %101 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %104 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %98, i32 %99, i32 %102, i32 %103, i32* null, i32 0)
  %105 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %97, %95, %80, %59, %49, %19
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @sd_change_phase(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i64 @CHK_SD(%struct.sd_info*) #1

declare dso_local i64 @CHK_MMC_8BIT(%struct.sd_info*) #1

declare dso_local i64 @CHK_MMC_4BIT(%struct.sd_info*) #1

declare dso_local i32 @sd_wait_state_data_ready(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @sd_write_data(%struct.rtsx_chip*, i32, i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rtsx_clear_sd_error(%struct.rtsx_chip*) #1

declare dso_local i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
