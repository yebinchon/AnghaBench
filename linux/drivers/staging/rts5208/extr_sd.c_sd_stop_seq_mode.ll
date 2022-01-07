; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_stop_seq_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_stop_seq_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.sd_info }
%struct.sd_info = type { i64 }

@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STOP_TRANSMISSION = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1b = common dso_local global i32 0, align 4
@SD_STS_ERR = common dso_local global i32 0, align 4
@RBCTL = common dso_local global i32 0, align 4
@RB_FLUSH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sd_stop_seq_mode(%struct.rtsx_chip* %0) #0 {
  %2 = alloca %struct.rtsx_chip*, align 8
  %3 = alloca %struct.sd_info*, align 8
  %4 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %2, align 8
  %5 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %6 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %5, i32 0, i32 0
  store %struct.sd_info* %6, %struct.sd_info** %3, align 8
  %7 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %8 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %48

11:                                               ; preds = %1
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %13 = call i32 @sd_switch_clock(%struct.rtsx_chip* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @STATUS_SUCCESS, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %48

18:                                               ; preds = %11
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %20 = load i32, i32* @STOP_TRANSMISSION, align 4
  %21 = load i32, i32* @SD_RSP_TYPE_R1b, align 4
  %22 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %19, i32 %20, i32 0, i32 %21, i32* null, i32 0)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @STATUS_SUCCESS, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %28 = load i32, i32* @SD_STS_ERR, align 4
  %29 = call i32 @sd_set_err_code(%struct.rtsx_chip* %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %18
  %31 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %32 = call i32 @sd_wait_state_data_ready(%struct.rtsx_chip* %31, i32 8, i32 1, i32 1000)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @STATUS_SUCCESS, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %38 = load i32, i32* @SD_STS_ERR, align 4
  %39 = call i32 @sd_set_err_code(%struct.rtsx_chip* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %30
  %41 = load %struct.sd_info*, %struct.sd_info** %3, align 8
  %42 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.rtsx_chip*, %struct.rtsx_chip** %2, align 8
  %44 = load i32, i32* @RBCTL, align 4
  %45 = load i32, i32* @RB_FLUSH, align 4
  %46 = load i32, i32* @RB_FLUSH, align 4
  %47 = call i32 @rtsx_write_register(%struct.rtsx_chip* %43, i32 %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %17, %40, %1
  ret void
}

declare dso_local i32 @sd_switch_clock(%struct.rtsx_chip*) #1

declare dso_local i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @sd_set_err_code(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @sd_wait_state_data_ready(%struct.rtsx_chip*, i32, i32, i32) #1

declare dso_local i32 @rtsx_write_register(%struct.rtsx_chip*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
