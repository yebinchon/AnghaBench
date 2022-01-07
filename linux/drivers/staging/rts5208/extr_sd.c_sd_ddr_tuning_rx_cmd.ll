; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_ddr_tuning_rx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_ddr_tuning_rx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.sd_info }
%struct.sd_info = type { i32 }

@TUNE_RX = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"sd ddr tuning rx\0A\00", align 1
@APP_CMD = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@SD_STATUS = common dso_local global i32 0, align 4
@SD_TM_NORMAL_READ = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32)* @sd_ddr_tuning_rx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_ddr_tuning_rx_cmd(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [5 x i32], align 16
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %10 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %9, i32 0, i32 0
  store %struct.sd_info* %10, %struct.sd_info** %6, align 8
  %11 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @TUNE_RX, align 4
  %14 = call i32 @sd_change_phase(%struct.rtsx_chip* %11, i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @STATUS_SUCCESS, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %19, i32* %3, align 4
  br label %60

20:                                               ; preds = %2
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %22 = call i32 @rtsx_dev(%struct.rtsx_chip* %21)
  %23 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %25 = load i32, i32* @APP_CMD, align 4
  %26 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %27 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %30 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %24, i32 %25, i32 %28, i32 %29, i32* null, i32 0)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @STATUS_SUCCESS, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %35, i32* %3, align 4
  br label %60

36:                                               ; preds = %20
  %37 = load i32, i32* @SD_STATUS, align 4
  %38 = or i32 64, %37
  %39 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  store i32 %38, i32* %39, align 16
  %40 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 3
  store i32 0, i32* %42, align 4
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 4
  store i32 0, i32* %43, align 16
  %44 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %45 = load i32, i32* @SD_TM_NORMAL_READ, align 4
  %46 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %47 = load i32, i32* @SD_BUS_WIDTH_4, align 4
  %48 = call i32 @sd_read_data(%struct.rtsx_chip* %44, i32 %45, i32* %46, i32 5, i32 64, i32 1, i32 %47, i32* null, i32 0, i32 100)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @STATUS_SUCCESS, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %36
  %53 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %54 = call i32 @sd_wait_data_idle(%struct.rtsx_chip* %53)
  %55 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %56 = call i32 @rtsx_clear_sd_error(%struct.rtsx_chip* %55)
  %57 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %57, i32* %3, align 4
  br label %60

58:                                               ; preds = %36
  %59 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %52, %34, %18
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @sd_change_phase(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

declare dso_local i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @sd_read_data(%struct.rtsx_chip*, i32, i32*, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @sd_wait_data_idle(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_clear_sd_error(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
