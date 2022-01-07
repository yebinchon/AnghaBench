; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_sdr_tuning_tx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_sdr_tuning_tx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.sd_info }
%struct.sd_info = type { i32 }

@TUNE_TX = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@SD_CFG3 = common dso_local global i32 0, align 4
@SD_RSP_80CLK_TIMEOUT_EN = common dso_local global i32 0, align 4
@SEND_STATUS = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@SD_RSP_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32)* @sd_sdr_tuning_tx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_sdr_tuning_tx_cmd(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sd_info*, align 8
  %7 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %9 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %8, i32 0, i32 0
  store %struct.sd_info* %9, %struct.sd_info** %6, align 8
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @TUNE_TX, align 4
  %13 = call i32 @sd_change_phase(%struct.rtsx_chip* %10, i32 %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @STATUS_SUCCESS, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %18, i32* %3, align 4
  br label %63

19:                                               ; preds = %2
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %21 = load i32, i32* @SD_CFG3, align 4
  %22 = load i32, i32* @SD_RSP_80CLK_TIMEOUT_EN, align 4
  %23 = load i32, i32* @SD_RSP_80CLK_TIMEOUT_EN, align 4
  %24 = call i32 @rtsx_write_register(%struct.rtsx_chip* %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %63

29:                                               ; preds = %19
  %30 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %31 = load i32, i32* @SEND_STATUS, align 4
  %32 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %33 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %36 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %30, i32 %31, i32 %34, i32 %35, i32* null, i32 0)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @STATUS_SUCCESS, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %29
  %41 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %42 = load i32, i32* @SD_RSP_TIMEOUT, align 4
  %43 = call i64 @sd_check_err_code(%struct.rtsx_chip* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %47 = load i32, i32* @SD_CFG3, align 4
  %48 = load i32, i32* @SD_RSP_80CLK_TIMEOUT_EN, align 4
  %49 = call i32 @rtsx_write_register(%struct.rtsx_chip* %46, i32 %47, i32 %48, i32 0)
  %50 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %50, i32* %3, align 4
  br label %63

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %29
  %53 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %54 = load i32, i32* @SD_CFG3, align 4
  %55 = load i32, i32* @SD_RSP_80CLK_TIMEOUT_EN, align 4
  %56 = call i32 @rtsx_write_register(%struct.rtsx_chip* %53, i32 %54, i32 %55, i32 0)
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %59, %45, %27, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @sd_change_phase(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @sd_check_err_code(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
