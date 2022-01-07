; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_sysfs.c_flashinfo_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/chrome/extr_cros_ec_sysfs.c_flashinfo_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.ec_response_flash_info = type { i32, i32, i32, i32 }
%struct.cros_ec_command = type { i32, i64, i64, i64, i64 }
%struct.cros_ec_dev = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EC_CMD_FLASH_INFO = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"FlashSize %d\0AWriteSize %d\0AEraseSize %d\0AProtectSize %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @flashinfo_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flashinfo_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ec_response_flash_info*, align 8
  %9 = alloca %struct.cros_ec_command*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cros_ec_dev*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.cros_ec_dev* @to_cros_ec_dev(%struct.device* %12)
  store %struct.cros_ec_dev* %13, %struct.cros_ec_dev** %11, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.cros_ec_command* @kmalloc(i32 56, i32 %14)
  store %struct.cros_ec_command* %15, %struct.cros_ec_command** %9, align 8
  %16 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %17 = icmp ne %struct.cros_ec_command* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %67

21:                                               ; preds = %3
  %22 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %23 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load i64, i64* @EC_CMD_FLASH_INFO, align 8
  %25 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %11, align 8
  %26 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %30 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %29, i32 0, i32 3
  store i64 %28, i64* %30, align 8
  %31 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %32 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %31, i32 0, i32 0
  store i32 16, i32* %32, align 8
  %33 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %34 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %33, i32 0, i32 2
  store i64 0, i64* %34, align 8
  %35 = load %struct.cros_ec_dev*, %struct.cros_ec_dev** %11, align 8
  %36 = getelementptr inbounds %struct.cros_ec_dev, %struct.cros_ec_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %39 = call i32 @cros_ec_cmd_xfer_status(i32 %37, %struct.cros_ec_command* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %21
  br label %63

43:                                               ; preds = %21
  %44 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %45 = getelementptr inbounds %struct.cros_ec_command, %struct.cros_ec_command* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.ec_response_flash_info*
  store %struct.ec_response_flash_info* %47, %struct.ec_response_flash_info** %8, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = load %struct.ec_response_flash_info*, %struct.ec_response_flash_info** %8, align 8
  %51 = getelementptr inbounds %struct.ec_response_flash_info, %struct.ec_response_flash_info* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ec_response_flash_info*, %struct.ec_response_flash_info** %8, align 8
  %54 = getelementptr inbounds %struct.ec_response_flash_info, %struct.ec_response_flash_info* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ec_response_flash_info*, %struct.ec_response_flash_info** %8, align 8
  %57 = getelementptr inbounds %struct.ec_response_flash_info, %struct.ec_response_flash_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.ec_response_flash_info*, %struct.ec_response_flash_info** %8, align 8
  %60 = getelementptr inbounds %struct.ec_response_flash_info, %struct.ec_response_flash_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @scnprintf(i8* %48, i32 %49, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55, i32 %58, i32 %61)
  store i32 %62, i32* %10, align 4
  br label %63

63:                                               ; preds = %43, %42
  %64 = load %struct.cros_ec_command*, %struct.cros_ec_command** %9, align 8
  %65 = call i32 @kfree(%struct.cros_ec_command* %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %18
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.cros_ec_dev* @to_cros_ec_dev(%struct.device*) #1

declare dso_local %struct.cros_ec_command* @kmalloc(i32, i32) #1

declare dso_local i32 @cros_ec_cmd_xfer_status(i32, %struct.cros_ec_command*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.cros_ec_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
