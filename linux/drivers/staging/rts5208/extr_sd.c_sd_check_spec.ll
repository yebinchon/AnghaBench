; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_check_spec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_check_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.sd_info }
%struct.sd_info = type { i32, i32 }

@APP_CMD = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@SEND_SCR = common dso_local global i32 0, align 4
@SD_TM_NORMAL_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32)* @sd_check_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_check_spec(%struct.rtsx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sd_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [5 x i32], align 16
  %9 = alloca [8 x i32], align 16
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %11 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %10, i32 0, i32 0
  store %struct.sd_info* %11, %struct.sd_info** %6, align 8
  %12 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %13 = load i32, i32* @APP_CMD, align 4
  %14 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %15 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %18 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %12, i32 %13, i32 %16, i32 %17, i32* null, i32 0)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @STATUS_SUCCESS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %23, i32* %3, align 4
  br label %59

24:                                               ; preds = %2
  %25 = load i32, i32* @SEND_SCR, align 4
  %26 = or i32 64, %25
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  store i32 %26, i32* %27, align 16
  %28 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 1
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 3
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 4
  store i32 0, i32* %31, align 16
  %32 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %33 = load i32, i32* @SD_TM_NORMAL_READ, align 4
  %34 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %35 = load i32, i32* %5, align 4
  %36 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %37 = call i32 @sd_read_data(%struct.rtsx_chip* %32, i32 %33, i32* %34, i32 5, i32 8, i32 1, i32 %35, i32* %36, i32 8, i32 250)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @STATUS_SUCCESS, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %24
  %42 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %43 = call i32 @rtsx_clear_sd_error(%struct.rtsx_chip* %42)
  %44 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %44, i32* %3, align 4
  br label %59

45:                                               ; preds = %24
  %46 = load %struct.sd_info*, %struct.sd_info** %6, align 8
  %47 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %50 = call i32 @memcpy(i32 %48, i32* %49, i32 8)
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %52 = load i32, i32* %51, align 16
  %53 = and i32 %52, 15
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %56, i32* %3, align 4
  br label %59

57:                                               ; preds = %45
  %58 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %55, %41, %22
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @sd_read_data(%struct.rtsx_chip*, i32, i32*, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @rtsx_clear_sd_error(%struct.rtsx_chip*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
