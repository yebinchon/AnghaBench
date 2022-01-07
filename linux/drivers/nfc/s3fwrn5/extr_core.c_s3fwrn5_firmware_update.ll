; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_core.c_s3fwrn5_firmware_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_core.c_s3fwrn5_firmware_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3fwrn5_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"sec_s3fwrn5_firmware.bin\00", align 1
@S3FWRN5_MODE_FW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Detected new firmware version\0A\00", align 1
@S3FWRN5_MODE_NCI = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"sec_s3fwrn5_rfreg.bin\00", align 1
@S3FWRN5_MODE_COLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3fwrn5_info*)* @s3fwrn5_firmware_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3fwrn5_firmware_update(%struct.s3fwrn5_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s3fwrn5_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.s3fwrn5_info* %0, %struct.s3fwrn5_info** %3, align 8
  %6 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %7 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %6, i32 0, i32 0
  %8 = call i32 @s3fwrn5_fw_init(i32* %7, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %10 = call i32 @s3fwrn5_set_wake(%struct.s3fwrn5_info* %9, i32 0)
  %11 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %12 = load i32, i32* @S3FWRN5_MODE_FW, align 4
  %13 = call i32 @s3fwrn5_set_mode(%struct.s3fwrn5_info* %11, i32 %12)
  %14 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %15 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %14, i32 0, i32 0
  %16 = call i32 @s3fwrn5_fw_setup(i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %65

21:                                               ; preds = %1
  %22 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %23 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %22, i32 0, i32 0
  %24 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %25 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @s3fwrn5_fw_check_version(i32* %23, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  br label %57

33:                                               ; preds = %21
  %34 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %35 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = call i32 @dev_info(i32* %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %42 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %41, i32 0, i32 0
  %43 = call i32 @s3fwrn5_fw_download(i32* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %57

47:                                               ; preds = %33
  %48 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %49 = load i32, i32* @S3FWRN5_MODE_NCI, align 4
  %50 = call i32 @s3fwrn5_set_mode(%struct.s3fwrn5_info* %48, i32 %49)
  %51 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %52 = call i32 @s3fwrn5_set_wake(%struct.s3fwrn5_info* %51, i32 1)
  %53 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %54 = call i32 @s3fwrn5_nci_rf_configure(%struct.s3fwrn5_info* %53, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 %54, i32* %5, align 4
  %55 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %56 = call i32 @s3fwrn5_set_wake(%struct.s3fwrn5_info* %55, i32 0)
  br label %57

57:                                               ; preds = %47, %46, %32
  %58 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %59 = load i32, i32* @S3FWRN5_MODE_COLD, align 4
  %60 = call i32 @s3fwrn5_set_mode(%struct.s3fwrn5_info* %58, i32 %59)
  %61 = load %struct.s3fwrn5_info*, %struct.s3fwrn5_info** %3, align 8
  %62 = getelementptr inbounds %struct.s3fwrn5_info, %struct.s3fwrn5_info* %61, i32 0, i32 0
  %63 = call i32 @s3fwrn5_fw_cleanup(i32* %62)
  %64 = load i32, i32* %5, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %57, %19
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @s3fwrn5_fw_init(i32*, i8*) #1

declare dso_local i32 @s3fwrn5_set_wake(%struct.s3fwrn5_info*, i32) #1

declare dso_local i32 @s3fwrn5_set_mode(%struct.s3fwrn5_info*, i32) #1

declare dso_local i32 @s3fwrn5_fw_setup(i32*) #1

declare dso_local i32 @s3fwrn5_fw_check_version(i32*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @s3fwrn5_fw_download(i32*) #1

declare dso_local i32 @s3fwrn5_nci_rf_configure(%struct.s3fwrn5_info*, i8*) #1

declare dso_local i32 @s3fwrn5_fw_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
