; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_mmc_ddr_tuning_rx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_mmc_ddr_tuning_rx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.sd_info }
%struct.sd_info = type { i32 }

@SD_BUS_WIDTH_8 = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@TUNE_RX = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"mmc ddr tuning rx\0A\00", align 1
@SEND_EXT_CSD = common dso_local global i32 0, align 4
@SD_TM_NORMAL_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32)* @mmc_ddr_tuning_rx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_ddr_tuning_rx_cmd(%struct.rtsx_chip* %0, i32 %1) #0 {
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
  %12 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %13 = call i64 @CHK_MMC_8BIT(%struct.sd_info* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @SD_BUS_WIDTH_8, align 4
  store i32 %16, i32* %9, align 4
  br label %26

17:                                               ; preds = %2
  %18 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %19 = call i64 @CHK_MMC_4BIT(%struct.sd_info* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32, i32* @SD_BUS_WIDTH_4, align 4
  store i32 %22, i32* %9, align 4
  br label %25

23:                                               ; preds = %17
  %24 = load i32, i32* @SD_BUS_WIDTH_1, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %23, %21
  br label %26

26:                                               ; preds = %25, %15
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @TUNE_RX, align 4
  %30 = call i32 @sd_change_phase(%struct.rtsx_chip* %27, i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @STATUS_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %35, i32* %3, align 4
  br label %63

36:                                               ; preds = %26
  %37 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %38 = call i32 @rtsx_dev(%struct.rtsx_chip* %37)
  %39 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @SEND_EXT_CSD, align 4
  %41 = or i32 64, %40
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  store i32 %41, i32* %42, align 16
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  store i32 0, i32* %44, align 8
  %45 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 3
  store i32 0, i32* %45, align 4
  %46 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 4
  store i32 0, i32* %46, align 16
  %47 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %48 = load i32, i32* @SD_TM_NORMAL_READ, align 4
  %49 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @sd_read_data(%struct.rtsx_chip* %47, i32 %48, i32* %49, i32 5, i32 512, i32 1, i32 %50, i32* null, i32 0, i32 100)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @STATUS_SUCCESS, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %36
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %57 = call i32 @sd_wait_data_idle(%struct.rtsx_chip* %56)
  %58 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %59 = call i32 @rtsx_clear_sd_error(%struct.rtsx_chip* %58)
  %60 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %60, i32* %3, align 4
  br label %63

61:                                               ; preds = %36
  %62 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %55, %34
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @CHK_MMC_8BIT(%struct.sd_info*) #1

declare dso_local i64 @CHK_MMC_4BIT(%struct.sd_info*) #1

declare dso_local i32 @sd_change_phase(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @sd_read_data(%struct.rtsx_chip*, i32, i32*, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @sd_wait_data_idle(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_clear_sd_error(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
