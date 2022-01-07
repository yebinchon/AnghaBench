; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_wait_state_data_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_wait_state_data_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { %struct.sd_info }
%struct.sd_info = type { i32 }

@SEND_STATUS = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@STATUS_FAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtsx_chip*, i32, i32, i32)* @sd_wait_state_data_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_wait_state_data_ready(%struct.rtsx_chip* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtsx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sd_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [5 x i32], align 16
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %15 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %14, i32 0, i32 0
  store %struct.sd_info* %15, %struct.sd_info** %10, align 8
  store i32 0, i32* %12, align 4
  br label %16

16:                                               ; preds = %49, %4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %52

20:                                               ; preds = %16
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %22 = load i32, i32* @SEND_STATUS, align 4
  %23 = load %struct.sd_info*, %struct.sd_info** %10, align 8
  %24 = getelementptr inbounds %struct.sd_info, %struct.sd_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 0
  %28 = call i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip* %21, i32 %22, i32 %25, i32 %26, i32* %27, i32 5)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @STATUS_SUCCESS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %33, i32* %5, align 4
  br label %54

34:                                               ; preds = %20
  %35 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 3
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 30
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = getelementptr inbounds [5 x i32], [5 x i32]* %13, i64 0, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 1
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %47, i32* %5, align 4
  br label %54

48:                                               ; preds = %40, %34
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %16

52:                                               ; preds = %16
  %53 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %46, %32
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @sd_send_cmd_get_rsp(%struct.rtsx_chip*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
