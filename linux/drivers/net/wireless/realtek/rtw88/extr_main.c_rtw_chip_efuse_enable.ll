; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_chip_efuse_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_chip_efuse_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_fw_state }
%struct.rtw_fw_state = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"failed to setup hci\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to power on mac\0A\00", align 1
@REG_C2HEVT = common dso_local global i32 0, align 4
@C2H_HW_FEATURE_DUMP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to load firmware\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to download firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*)* @rtw_chip_efuse_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_chip_efuse_enable(%struct.rtw_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_fw_state*, align 8
  %5 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 0
  store %struct.rtw_fw_state* %7, %struct.rtw_fw_state** %4, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = call i32 @rtw_hci_setup(%struct.rtw_dev* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %14 = call i32 @rtw_err(%struct.rtw_dev* %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %53

15:                                               ; preds = %1
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %17 = call i32 @rtw_mac_power_on(%struct.rtw_dev* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %22 = call i32 @rtw_err(%struct.rtw_dev* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %53

23:                                               ; preds = %15
  %24 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %25 = load i32, i32* @REG_C2HEVT, align 4
  %26 = load i32, i32* @C2H_HW_FEATURE_DUMP, align 4
  %27 = call i32 @rtw_write8(%struct.rtw_dev* %24, i32 %25, i32 %26)
  %28 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %4, align 8
  %29 = getelementptr inbounds %struct.rtw_fw_state, %struct.rtw_fw_state* %28, i32 0, i32 1
  %30 = call i32 @wait_for_completion(i32* %29)
  %31 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %4, align 8
  %32 = getelementptr inbounds %struct.rtw_fw_state, %struct.rtw_fw_state* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  %38 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %39 = call i32 @rtw_err(%struct.rtw_dev* %38, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %53

40:                                               ; preds = %23
  %41 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %42 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %4, align 8
  %43 = call i32 @rtw_download_firmware(%struct.rtw_dev* %41, %struct.rtw_fw_state* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %48 = call i32 @rtw_err(%struct.rtw_dev* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %50

49:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %55

50:                                               ; preds = %46
  %51 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %52 = call i32 @rtw_mac_power_off(%struct.rtw_dev* %51)
  br label %53

53:                                               ; preds = %50, %35, %20, %12
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %49
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @rtw_hci_setup(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @rtw_mac_power_on(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @rtw_download_firmware(%struct.rtw_dev*, %struct.rtw_fw_state*) #1

declare dso_local i32 @rtw_mac_power_off(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
