; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_update_lock_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_update_lock_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.sd_info }
%struct.sd_info = type { i32, i32 }

@SEND_STATUS = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@SD_LOCKED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"sd_card->sd_lock_status = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*)* @sd_update_lock_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_update_lock_status(%struct.rtsx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtsx_chip*, align 8
  %4 = alloca %struct.sd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [5 x i32], align 16
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %3, align 8
  %7 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %8 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %7, i32 0, i32 0
  store %struct.sd_info* %8, %struct.sd_info** %4, align 8
  %9 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %10 = load i32, i32* @SEND_STATUS, align 4
  %11 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %12 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %15 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 0
  %16 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %9, i32 %10, i32 %13, i32 %14, i32* %15, i32 5)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @STATUS_SUCCESS, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %21, i32* %2, align 4
  br label %55

22:                                               ; preds = %1
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = and i32 %24, 2
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i32, i32* @SD_LOCKED, align 4
  %29 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %30 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  br label %40

33:                                               ; preds = %22
  %34 = load i32, i32* @SD_LOCKED, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %37 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, %35
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %33, %27
  %41 = load %struct.rtsx_chip*, %struct.rtsx_chip** %3, align 8
  %42 = call i32 @rtsx_dev(%struct.rtsx_chip* %41)
  %43 = load %struct.sd_info*, %struct.sd_info** %4, align 8
  %44 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_dbg(i32 %42, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds [5 x i32], [5 x i32]* %6, i64 0, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %40
  %54 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %51, %20
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
