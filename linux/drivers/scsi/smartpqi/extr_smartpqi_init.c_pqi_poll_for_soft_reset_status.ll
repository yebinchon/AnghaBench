; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_poll_for_soft_reset_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/smartpqi/extr_smartpqi_init.c_pqi_poll_for_soft_reset_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pqi_ctrl_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PQI_SOFT_RESET_STATUS_TIMEOUT_SECS = common dso_local global i64 0, align 8
@PQI_HZ = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@PQI_SOFT_RESET_INITIATE = common dso_local global i32 0, align 4
@RESET_INITIATE_DRIVER = common dso_local global i32 0, align 4
@PQI_SOFT_RESET_ABORT = common dso_local global i32 0, align 4
@RESET_ABORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"timed out waiting for soft reset status\0A\00", align 1
@RESET_TIMEDOUT = common dso_local global i32 0, align 4
@RESET_NORESPONSE = common dso_local global i32 0, align 4
@PQI_SOFT_RESET_STATUS_POLL_INTERVAL_SECS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pqi_ctrl_info*)* @pqi_poll_for_soft_reset_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pqi_poll_for_soft_reset_status(%struct.pqi_ctrl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pqi_ctrl_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.pqi_ctrl_info* %0, %struct.pqi_ctrl_info** %3, align 8
  %6 = load i64, i64* @PQI_SOFT_RESET_STATUS_TIMEOUT_SECS, align 8
  %7 = load i64, i64* @PQI_HZ, align 8
  %8 = mul i64 %6, %7
  %9 = load i64, i64* @jiffies, align 8
  %10 = add i64 %8, %9
  store i64 %10, i64* %4, align 8
  br label %11

11:                                               ; preds = %1, %45
  %12 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %13 = call i32 @pqi_read_soft_reset_status(%struct.pqi_ctrl_info* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @PQI_SOFT_RESET_INITIATE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @RESET_INITIATE_DRIVER, align 4
  store i32 %19, i32* %2, align 4
  br label %48

20:                                               ; preds = %11
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @PQI_SOFT_RESET_ABORT, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @RESET_ABORT, align 4
  store i32 %26, i32* %2, align 4
  br label %48

27:                                               ; preds = %20
  %28 = load i64, i64* @jiffies, align 8
  %29 = load i64, i64* %4, align 8
  %30 = call i64 @time_after(i64 %28, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %34 = getelementptr inbounds %struct.pqi_ctrl_info, %struct.pqi_ctrl_info* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @dev_err(i32* %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @RESET_TIMEDOUT, align 4
  store i32 %38, i32* %2, align 4
  br label %48

39:                                               ; preds = %27
  %40 = load %struct.pqi_ctrl_info*, %struct.pqi_ctrl_info** %3, align 8
  %41 = call i32 @sis_is_firmware_running(%struct.pqi_ctrl_info* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @RESET_NORESPONSE, align 4
  store i32 %44, i32* %2, align 4
  br label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @PQI_SOFT_RESET_STATUS_POLL_INTERVAL_SECS, align 4
  %47 = call i32 @ssleep(i32 %46)
  br label %11

48:                                               ; preds = %43, %32, %25, %18
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @pqi_read_soft_reset_status(%struct.pqi_ctrl_info*) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @sis_is_firmware_running(%struct.pqi_ctrl_info*) #1

declare dso_local i32 @ssleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
