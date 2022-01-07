; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_wait_data_buf_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_wait_data_buf_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.sd_info }
%struct.sd_info = type { i32, i64 }

@WAIT_DATA_READY_RTY_CNT = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@SD_NO_CARD = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@SEND_STATUS = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@SD_TO_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @wait_data_buf_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_data_buf_ready(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.sd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %8 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %7, i32 0, i32 0
  store %struct.sd_info* %8, %struct.sd_info** %4, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %53, %1
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @WAIT_DATA_READY_RTY_CNT, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %56

13:                                               ; preds = %9
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %15 = load i32, i32* @SD_CARD, align 4
  %16 = call i32 @detect_card_cd(%struct.rtsx_chip* %14, i32 %15)
  %17 = load i32, i32* @STATUS_SUCCESS, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %21 = load i32, i32* @SD_NO_CARD, align 4
  %22 = call i32 @sd_set_err_code(%struct.rtsx_chip* %20, i32 %21)
  %23 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %23, i32* %2, align 4
  br label %61

24:                                               ; preds = %13
  %25 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %26 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %28 = load i32, i32* @SEND_STATUS, align 4
  %29 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %30 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %33 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %27, i32 %28, i32 %31, i32 %32, i32* null, i32 0)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @STATUS_SUCCESS, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %38, i32* %2, align 4
  br label %61

39:                                               ; preds = %24
  %40 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %41 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %46 = load i32, i32* @SEND_STATUS, align 4
  %47 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %48 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %51 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %45, i32 %46, i32 %49, i32 %50, i32* null, i32 0)
  store i32 %51, i32* %2, align 4
  br label %61

52:                                               ; preds = %39
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %9

56:                                               ; preds = %9
  %57 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %58 = load i32, i32* @SD_TO_ERR, align 4
  %59 = call i32 @sd_set_err_code(%struct.rtsx_chip* %57, i32 %58)
  %60 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %56, %44, %37, %19
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @detect_card_cd(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
