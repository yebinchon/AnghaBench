; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_start_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl8xxxu/extr_rtl8xxxu_core.c_rtl8xxxu_start_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8xxxu_priv = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@RTL8XXXU_FIRMWARE_POLL_MAX = common dso_local global i32 0, align 4
@REG_MCU_FW_DL = common dso_local global i32 0, align 4
@MCU_FW_DL_CSUM_REPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Firmware checksum poll timed out\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@MCU_FW_DL_READY = common dso_local global i32 0, align 4
@MCU_WINT_INIT_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Firmware failed to start\0A\00", align 1
@RTL8723B = common dso_local global i64 0, align 8
@REG_HMTFR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8xxxu_priv*)* @rtl8xxxu_start_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8xxxu_start_firmware(%struct.rtl8xxxu_priv* %0) #0 {
  %2 = alloca %struct.rtl8xxxu_priv*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtl8xxxu_priv* %0, %struct.rtl8xxxu_priv** %2, align 8
  %7 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %8 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %25, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @RTL8XXXU_FIRMWARE_POLL_MAX, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %17 = load i32, i32* @REG_MCU_FW_DL, align 4
  %18 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MCU_FW_DL_CSUM_REPORT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %28

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %11

28:                                               ; preds = %23, %11
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @RTL8XXXU_FIRMWARE_POLL_MAX, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.device*, %struct.device** %3, align 8
  %34 = call i32 @dev_warn(%struct.device* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EAGAIN, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %98

37:                                               ; preds = %28
  %38 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %39 = load i32, i32* @REG_MCU_FW_DL, align 4
  %40 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* @MCU_FW_DL_READY, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @MCU_WINT_INIT_READY, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  %48 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %49 = load i32, i32* @REG_MCU_FW_DL, align 4
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv* %48, i32 %49, i32 %50)
  %52 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %53 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = bitcast {}** %55 to i32 (%struct.rtl8xxxu_priv*)**
  %57 = load i32 (%struct.rtl8xxxu_priv*)*, i32 (%struct.rtl8xxxu_priv*)** %56, align 8
  %58 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %59 = call i32 %57(%struct.rtl8xxxu_priv* %58)
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %75, %37
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @RTL8XXXU_FIRMWARE_POLL_MAX, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %60
  %65 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %66 = load i32, i32* @REG_MCU_FW_DL, align 4
  %67 = call i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @MCU_WINT_INIT_READY, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %64
  br label %78

73:                                               ; preds = %64
  %74 = call i32 @udelay(i32 100)
  br label %75

75:                                               ; preds = %73
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %60

78:                                               ; preds = %72, %60
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @RTL8XXXU_FIRMWARE_POLL_MAX, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = load %struct.device*, %struct.device** %3, align 8
  %84 = call i32 @dev_warn(%struct.device* %83, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @EAGAIN, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %4, align 4
  br label %98

87:                                               ; preds = %78
  %88 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %89 = getelementptr inbounds %struct.rtl8xxxu_priv, %struct.rtl8xxxu_priv* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @RTL8723B, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %87
  %94 = load %struct.rtl8xxxu_priv*, %struct.rtl8xxxu_priv** %2, align 8
  %95 = load i32, i32* @REG_HMTFR, align 4
  %96 = call i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv* %94, i32 %95, i32 15)
  br label %97

97:                                               ; preds = %93, %87
  br label %98

98:                                               ; preds = %97, %82, %32
  %99 = load i32, i32* %4, align 4
  ret i32 %99
}

declare dso_local i32 @rtl8xxxu_read32(%struct.rtl8xxxu_priv*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @rtl8xxxu_write32(%struct.rtl8xxxu_priv*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @rtl8xxxu_write8(%struct.rtl8xxxu_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
