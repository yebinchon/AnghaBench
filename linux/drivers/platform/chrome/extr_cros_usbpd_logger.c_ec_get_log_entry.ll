; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_usbpd_logger.c_ec_get_log_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_usbpd_logger.c_ec_get_log_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ec_response_pd_log = type { i32 }
%struct.logger_data = type { i64, %struct.cros_ec_dev* }
%struct.cros_ec_dev = type { i32, i64 }
%struct.cros_ec_command = type { i64, i32, i64 }

@EC_CMD_PD_GET_LOG_ENTRY = common dso_local global i64 0, align 8
@CROS_USBPD_LOG_RESP_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ec_response_pd_log* (%struct.logger_data*)* @ec_get_log_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ec_response_pd_log* @ec_get_log_entry(%struct.logger_data* %0) #0 {
  %2 = alloca %struct.ec_response_pd_log*, align 8
  %3 = alloca %struct.logger_data*, align 8
  %4 = alloca %struct.cros_ec_dev*, align 8
  %5 = alloca %struct.cros_ec_command*, align 8
  %6 = alloca i32, align 4
  store %struct.logger_data* %0, %struct.logger_data** %3, align 8
  %7 = load %struct.logger_data*, %struct.logger_data** %3, align 8
  %8 = getelementptr inbounds %struct.logger_data, %struct.logger_data* %7, i32 0, i32 1
  %9 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %8, align 8
  store %struct.cros_ec_dev* %9, %struct.cros_ec_dev** %4, align 8
  %10 = load %struct.logger_data*, %struct.logger_data** %3, align 8
  %11 = getelementptr inbounds %struct.logger_data, %struct.logger_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.cros_ec_command*
  store %struct.cros_ec_command* %13, %struct.cros_ec_command** %5, align 8
  %14 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %15 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EC_CMD_PD_GET_LOG_ENTRY, align 8
  %18 = add nsw i64 %16, %17
  %19 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %20 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %19, i32 0, i32 2
  store i64 %18, i64* %20, align 8
  %21 = load i32, i32* @CROS_USBPD_LOG_RESP_SIZE, align 4
  %22 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %23 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %4, align 8
  %25 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %28 = call i32 @cros_ec_cmd_xfer_status(i32 %26, %struct.cros_ec_command* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %1
  %32 = load i32, i32* %6, align 4
  %33 = call %struct.ec_response_pd_log* @ERR_PTR(i32 %32)
  store %struct.ec_response_pd_log* %33, %struct.ec_response_pd_log** %2, align 8
  br label %39

34:                                               ; preds = %1
  %35 = load %struct.cros_ec_command*, %struct.cros_ec_command** %5, align 8
  %36 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.ec_response_pd_log*
  store %struct.ec_response_pd_log* %38, %struct.ec_response_pd_log** %2, align 8
  br label %39

39:                                               ; preds = %34, %31
  %40 = load %struct.ec_response_pd_log*, %struct.ec_response_pd_log** %2, align 8
  ret %struct.ec_response_pd_log* %40
}

declare dso_local i32 @cros_ec_cmd_xfer_status(i32, %struct.cros_ec_command*) #1

declare dso_local %struct.ec_response_pd_log* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
