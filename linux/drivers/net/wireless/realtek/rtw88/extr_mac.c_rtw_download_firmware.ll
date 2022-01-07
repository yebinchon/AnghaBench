; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_rtw_download_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_rtw_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.rtw_fw_state = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.rtw_backup_info = type { i32 }

@DLFW_RESTORE_REG_NUM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@RTW_FLAG_FW_RUNNING = common dso_local global i32 0, align 4
@REG_MCUFW_CTRL = common dso_local global i32 0, align 4
@BIT_MCUFWDL_EN = common dso_local global i32 0, align 4
@REG_SYS_FUNC_EN = common dso_local global i64 0, align 8
@BIT_FEN_CPUEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_download_firmware(%struct.rtw_dev* %0, %struct.rtw_fw_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca %struct.rtw_fw_state*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store %struct.rtw_fw_state* %1, %struct.rtw_fw_state** %5, align 8
  %13 = load i32, i32* @DLFW_RESTORE_REG_NUM, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca %struct.rtw_backup_info, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %5, align 8
  %18 = getelementptr inbounds %struct.rtw_fw_state, %struct.rtw_fw_state* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %8, align 8
  %22 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %5, align 8
  %23 = getelementptr inbounds %struct.rtw_fw_state, %struct.rtw_fw_state* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @check_firmware_size(i32* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %102

34:                                               ; preds = %2
  %35 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %36 = call i32 @ltecoex_read_reg(%struct.rtw_dev* %35, i32 56, i32* %10)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @EBUSY, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %102

41:                                               ; preds = %34
  %42 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %43 = call i32 @wlan_cpu_enable(%struct.rtw_dev* %42, i32 0)
  %44 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %45 = call i32 @download_firmware_reg_backup(%struct.rtw_dev* %44, %struct.rtw_backup_info* %16)
  %46 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %47 = call i32 @download_firmware_reset_platform(%struct.rtw_dev* %46)
  %48 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @start_download_firmware(%struct.rtw_dev* %48, i32* %49, i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %91

55:                                               ; preds = %41
  %56 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %57 = load i32, i32* @DLFW_RESTORE_REG_NUM, align 4
  %58 = call i32 @download_firmware_reg_restore(%struct.rtw_dev* %56, %struct.rtw_backup_info* %16, i32 %57)
  %59 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %60 = call i32 @download_firmware_end_flow(%struct.rtw_dev* %59)
  %61 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %62 = call i32 @wlan_cpu_enable(%struct.rtw_dev* %61, i32 1)
  %63 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @ltecoex_reg_write(%struct.rtw_dev* %63, i32 56, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %55
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %102

70:                                               ; preds = %55
  %71 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %72 = call i32 @download_firmware_validate(%struct.rtw_dev* %71)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %91

76:                                               ; preds = %70
  %77 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %78 = load %struct.rtw_fw_state*, %struct.rtw_fw_state** %5, align 8
  %79 = call i32 @update_firmware_info(%struct.rtw_dev* %77, %struct.rtw_fw_state* %78)
  %80 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %81 = call i32 @rtw_hci_setup(%struct.rtw_dev* %80)
  %82 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %83 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %86 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  %88 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %89 = load i32, i32* @RTW_FLAG_FW_RUNNING, align 4
  %90 = call i32 @rtw_flag_set(%struct.rtw_dev* %88, i32 %89)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %102

91:                                               ; preds = %75, %54
  %92 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %93 = load i32, i32* @REG_MCUFW_CTRL, align 4
  %94 = load i32, i32* @BIT_MCUFWDL_EN, align 4
  %95 = call i32 @rtw_write8_clr(%struct.rtw_dev* %92, i32 %93, i32 %94)
  %96 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %97 = load i64, i64* @REG_SYS_FUNC_EN, align 8
  %98 = add nsw i64 %97, 1
  %99 = load i32, i32* @BIT_FEN_CPUEN, align 4
  %100 = call i32 @rtw_write8_set(%struct.rtw_dev* %96, i64 %98, i32 %99)
  %101 = load i32, i32* %11, align 4
  store i32 %101, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %102

102:                                              ; preds = %91, %76, %67, %38, %31
  %103 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @check_firmware_size(i32*, i32) #2

declare dso_local i32 @ltecoex_read_reg(%struct.rtw_dev*, i32, i32*) #2

declare dso_local i32 @wlan_cpu_enable(%struct.rtw_dev*, i32) #2

declare dso_local i32 @download_firmware_reg_backup(%struct.rtw_dev*, %struct.rtw_backup_info*) #2

declare dso_local i32 @download_firmware_reset_platform(%struct.rtw_dev*) #2

declare dso_local i32 @start_download_firmware(%struct.rtw_dev*, i32*, i32) #2

declare dso_local i32 @download_firmware_reg_restore(%struct.rtw_dev*, %struct.rtw_backup_info*, i32) #2

declare dso_local i32 @download_firmware_end_flow(%struct.rtw_dev*) #2

declare dso_local i32 @ltecoex_reg_write(%struct.rtw_dev*, i32, i32) #2

declare dso_local i32 @download_firmware_validate(%struct.rtw_dev*) #2

declare dso_local i32 @update_firmware_info(%struct.rtw_dev*, %struct.rtw_fw_state*) #2

declare dso_local i32 @rtw_hci_setup(%struct.rtw_dev*) #2

declare dso_local i32 @rtw_flag_set(%struct.rtw_dev*, i32) #2

declare dso_local i32 @rtw_write8_clr(%struct.rtw_dev*, i32, i32) #2

declare dso_local i32 @rtw_write8_set(%struct.rtw_dev*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
