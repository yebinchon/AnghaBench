; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_sdr_tuning_rx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_sdr_tuning_rx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@TUNE_RX = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@SEND_TUNING_PATTERN = common dso_local global i32 0, align 4
@SD_TM_AUTO_TUNING = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32)* @sd_sdr_tuning_rx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_sdr_tuning_rx_cmd(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @TUNE_RX, align 4
  %11 = call i32 @sd_change_phase(%struct.rtsx_chip* %8, i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @STATUS_SUCCESS, align 4
  %14 = icmp ne i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %16, i32* %3, align 4
  br label %41

17:                                               ; preds = %2
  %18 = load i32, i32* @SEND_TUNING_PATTERN, align 4
  %19 = or i32 64, %18
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 %19, i32* %20, align 16
  %21 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  store i32 0, i32* %22, align 8
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  store i32 0, i32* %24, align 16
  %25 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %26 = load i32, i32* @SD_TM_AUTO_TUNING, align 4
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %28 = load i32, i32* @SD_BUS_WIDTH_4, align 4
  %29 = call i32 @sd_read_data(%struct.rtsx_chip* %25, i32 %26, i32* %27, i32 5, i32 64, i32 1, i32 %28, i32* null, i32 0, i32 100)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @STATUS_SUCCESS, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %17
  %34 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %35 = call i32 @sd_wait_data_idle(%struct.rtsx_chip* %34)
  %36 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %37 = call i32 @rtsx_clear_sd_error(%struct.rtsx_chip* %36)
  %38 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %17
  %40 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %33, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @sd_change_phase(%struct.rtsx_chip*, i32, i32) #1

declare dso_local i32 @sd_read_data(%struct.rtsx_chip*, i32, i32*, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @sd_wait_data_idle(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_clear_sd_error(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
