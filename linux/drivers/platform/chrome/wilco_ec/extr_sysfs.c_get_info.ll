; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_sysfs.c_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_sysfs.c_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wilco_ec_device = type { i32 }
%struct.get_ec_info_req = type { i32, i32 }
%struct.get_ec_info_resp = type { i32 }
%struct.wilco_ec_message = type { i32, i32, %struct.get_ec_info_resp*, %struct.get_ec_info_req*, i32 }

@CMD_EC_INFO = common dso_local global i32 0, align 4
@WILCO_EC_MSG_LEGACY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i8*, i32)* @get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_info(%struct.device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wilco_ec_device*, align 8
  %9 = alloca %struct.get_ec_info_req, align 4
  %10 = alloca %struct.get_ec_info_resp, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wilco_ec_message, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.wilco_ec_device* @dev_get_drvdata(%struct.device* %13)
  store %struct.wilco_ec_device* %14, %struct.wilco_ec_device** %8, align 8
  %15 = getelementptr inbounds %struct.get_ec_info_req, %struct.get_ec_info_req* %9, i32 0, i32 0
  %16 = load i32, i32* %7, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.get_ec_info_req, %struct.get_ec_info_req* %9, i32 0, i32 1
  %18 = load i32, i32* @CMD_EC_INFO, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %12, i32 0, i32 0
  store i32 8, i32* %19, align 8
  %20 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %12, i32 0, i32 1
  store i32 4, i32* %20, align 4
  %21 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %12, i32 0, i32 2
  store %struct.get_ec_info_resp* %10, %struct.get_ec_info_resp** %21, align 8
  %22 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %12, i32 0, i32 3
  store %struct.get_ec_info_req* %9, %struct.get_ec_info_req** %22, align 8
  %23 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %12, i32 0, i32 4
  %24 = load i32, i32* @WILCO_EC_MSG_LEGACY, align 4
  store i32 %24, i32* %23, align 8
  %25 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %8, align 8
  %26 = call i32 @wilco_ec_mailbox(%struct.wilco_ec_device* %25, %struct.wilco_ec_message* %12)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %11, align 4
  store i32 %30, i32* %4, align 4
  br label %37

31:                                               ; preds = %3
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = getelementptr inbounds %struct.get_ec_info_resp, %struct.get_ec_info_resp* %10, i32 0, i32 0
  %35 = bitcast i32* %34 to i8*
  %36 = call i32 @scnprintf(i8* %32, i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4, i8* %35)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %31, %29
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.wilco_ec_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @wilco_ec_mailbox(%struct.wilco_ec_device*, %struct.wilco_ec_message*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
