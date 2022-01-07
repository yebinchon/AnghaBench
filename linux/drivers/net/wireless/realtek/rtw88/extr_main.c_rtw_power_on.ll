; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_4__, %struct.rtw_fw_state, %struct.rtw_chip_info* }
%struct.TYPE_4__ = type { i32 }
%struct.rtw_fw_state = type { i32, i32 }
%struct.rtw_chip_info = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

@.str = private unnamed_addr constant [21 x i8] c"failed to setup hci\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"failed to power on mac\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"failed to load firmware\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to download firmware\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to configure mac\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"failed to start hci\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*)* @rtw_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_power_on(%struct.rtw_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_chip_info*, align 8
  %5 = alloca %struct.rtw_fw_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 2
  %10 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %9, align 8
  store %struct.rtw_chip_info* %10, %struct.rtw_chip_info** %4, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 1
  store %struct.rtw_fw_state* %12, %struct.rtw_fw_state** %5, align 8
  %13 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %14 = call i32 @rtw_hci_setup(%struct.rtw_dev* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %19 = call i32 @rtw_err(%struct.rtw_dev* %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %94

20:                                               ; preds = %1
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %22 = call i32 @rtw_mac_power_on(%struct.rtw_dev* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %27 = call i32 @rtw_err(%struct.rtw_dev* %26, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %94

28:                                               ; preds = %20
  %29 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %5, align 8
  %30 = getelementptr inbounds %struct.rtw_fw_state, %struct.rtw_fw_state* %29, i32 0, i32 1
  %31 = call i32 @wait_for_completion(i32* %30)
  %32 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %5, align 8
  %33 = getelementptr inbounds %struct.rtw_fw_state, %struct.rtw_fw_state* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  %39 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %40 = call i32 @rtw_err(%struct.rtw_dev* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %94

41:                                               ; preds = %28
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %43 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %5, align 8
  %44 = call i32 @rtw_download_firmware(%struct.rtw_dev* %42, %struct.rtw_fw_state* %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %49 = call i32 @rtw_err(%struct.rtw_dev* %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %91

50:                                               ; preds = %41
  %51 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %52 = call i32 @rtw_mac_init(%struct.rtw_dev* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %57 = call i32 @rtw_err(%struct.rtw_dev* %56, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %91

58:                                               ; preds = %50
  %59 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %4, align 8
  %60 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = bitcast {}** %62 to i32 (%struct.rtw_dev*)**
  %64 = load i32 (%struct.rtw_dev*)*, i32 (%struct.rtw_dev*)** %63, align 8
  %65 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %66 = call i32 %64(%struct.rtw_dev* %65)
  %67 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %68 = call i32 @rtw_hci_start(%struct.rtw_dev* %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %58
  %72 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %73 = call i32 @rtw_err(%struct.rtw_dev* %72, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %91

74:                                               ; preds = %58
  %75 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %76 = call i32 @rtw_fw_send_general_info(%struct.rtw_dev* %75)
  %77 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %78 = call i32 @rtw_fw_send_phydm_info(%struct.rtw_dev* %77)
  %79 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %80 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  store i32 %85, i32* %6, align 4
  %86 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %87 = call i32 @rtw_coex_power_on_setting(%struct.rtw_dev* %86)
  %88 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @rtw_coex_init_hw_config(%struct.rtw_dev* %88, i32 %89)
  store i32 0, i32* %2, align 4
  br label %96

91:                                               ; preds = %71, %55, %47
  %92 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %93 = call i32 @rtw_mac_power_off(%struct.rtw_dev* %92)
  br label %94

94:                                               ; preds = %91, %36, %25, %17
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %74
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @rtw_hci_setup(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @rtw_mac_power_on(%struct.rtw_dev*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @rtw_download_firmware(%struct.rtw_dev*, %struct.rtw_fw_state*) #1

declare dso_local i32 @rtw_mac_init(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_hci_start(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_fw_send_general_info(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_fw_send_phydm_info(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_power_on_setting(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_init_hw_config(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_mac_power_off(%struct.rtw_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
