; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_sysfs.c_boot_on_ac_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/wilco_ec/extr_sysfs.c_boot_on_ac_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.wilco_ec_device = type { i32 }
%struct.boot_on_ac_request = type { i32, i32, %struct.boot_on_ac_request*, i32, i32, i32 }
%struct.wilco_ec_message = type { i32, i32, %struct.wilco_ec_message*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CMD_KB_CMOS = common dso_local global i32 0, align 4
@SUB_CMD_KB_CMOS_AUTO_ON = common dso_local global i32 0, align 4
@WILCO_EC_MSG_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @boot_on_ac_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @boot_on_ac_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.wilco_ec_device*, align 8
  %11 = alloca %struct.boot_on_ac_request, align 8
  %12 = alloca %struct.wilco_ec_message, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.wilco_ec_device* @dev_get_drvdata(%struct.device* %15)
  store %struct.wilco_ec_device* %16, %struct.wilco_ec_device** %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = call i32 @kstrtou8(i8* %17, i32 10, i32* %14)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %5, align 4
  br label %53

23:                                               ; preds = %4
  %24 = load i32, i32* %14, align 4
  %25 = icmp sgt i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %53

29:                                               ; preds = %23
  %30 = bitcast %struct.boot_on_ac_request* %11 to %struct.wilco_ec_message*
  %31 = call i32 @memset(%struct.wilco_ec_message* %30, i32 0, i32 32)
  %32 = load i32, i32* @CMD_KB_CMOS, align 4
  %33 = getelementptr inbounds %struct.boot_on_ac_request, %struct.boot_on_ac_request* %11, i32 0, i32 5
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* @SUB_CMD_KB_CMOS_AUTO_ON, align 4
  %35 = getelementptr inbounds %struct.boot_on_ac_request, %struct.boot_on_ac_request* %11, i32 0, i32 4
  store i32 %34, i32* %35, align 4
  %36 = load i32, i32* %14, align 4
  %37 = getelementptr inbounds %struct.boot_on_ac_request, %struct.boot_on_ac_request* %11, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = call i32 @memset(%struct.wilco_ec_message* %12, i32 0, i32 32)
  %39 = load i32, i32* @WILCO_EC_MSG_LEGACY, align 4
  %40 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %12, i32 0, i32 3
  store i32 %39, i32* %40, align 8
  %41 = bitcast %struct.boot_on_ac_request* %11 to %struct.wilco_ec_message*
  %42 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %12, i32 0, i32 2
  store %struct.wilco_ec_message* %41, %struct.wilco_ec_message** %42, align 8
  %43 = getelementptr inbounds %struct.wilco_ec_message, %struct.wilco_ec_message* %12, i32 0, i32 1
  store i32 32, i32* %43, align 4
  %44 = load %struct.wilco_ec_device*, %struct.wilco_ec_device** %10, align 8
  %45 = call i32 @wilco_ec_mailbox(%struct.wilco_ec_device* %44, %struct.wilco_ec_message* %12)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %29
  %49 = load i32, i32* %13, align 4
  store i32 %49, i32* %5, align 4
  br label %53

50:                                               ; preds = %29
  %51 = load i64, i64* %9, align 8
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %50, %48, %26, %21
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local %struct.wilco_ec_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @kstrtou8(i8*, i32, i32*) #1

declare dso_local i32 @memset(%struct.wilco_ec_message*, i32, i32) #1

declare dso_local i32 @wilco_ec_mailbox(%struct.wilco_ec_device*, %struct.wilco_ec_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
