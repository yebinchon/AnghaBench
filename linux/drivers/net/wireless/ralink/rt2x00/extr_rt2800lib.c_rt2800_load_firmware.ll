; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@RT3290 = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@AUTOWAKEUP_CFG = common dso_local global i32 0, align 4
@RT3572 = common dso_local global i32 0, align 4
@RT5390 = common dso_local global i32 0, align 4
@RT5392 = common dso_local global i32 0, align 4
@AUX_CTRL = common dso_local global i32 0, align 4
@AUX_CTRL_FORCE_PCIE_CLK = common dso_local global i32 0, align 4
@AUX_CTRL_WAKE_PCIE_EN = common dso_local global i32 0, align 4
@PWR_PIN_CFG = common dso_local global i32 0, align 4
@REGISTER_BUSY_COUNT = common dso_local global i32 0, align 4
@PBF_SYS_CTRL = common dso_local global i32 0, align 4
@PBF_SYS_CTRL_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"PBF system register not ready\0A\00", align 1
@H2M_BBP_AGENT = common dso_local global i32 0, align 4
@H2M_MAILBOX_CSR = common dso_local global i32 0, align 4
@H2M_INT_SRC = common dso_local global i32 0, align 4
@MCU_BOOT_SIGNAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2800_load_firmware(%struct.rt2x00_dev* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %12 = load i32, i32* @RT3290, align 4
  %13 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %17 = call i32 @rt2800_enable_wlan_rt3290(%struct.rt2x00_dev* %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %129

23:                                               ; preds = %15
  br label %24

24:                                               ; preds = %23, %3
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %26 = load i32, i32* @AUTOWAKEUP_CFG, align 4
  %27 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %25, i32 %26, i32 0)
  %28 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %29 = call i64 @rt2800_wait_csr_ready(%struct.rt2x00_dev* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %129

34:                                               ; preds = %24
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %36 = call i64 @rt2x00_is_pci(%struct.rt2x00_dev* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %34
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %40 = load i32, i32* @RT3290, align 4
  %41 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %58, label %43

43:                                               ; preds = %38
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %45 = load i32, i32* @RT3572, align 4
  %46 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %50 = load i32, i32* @RT5390, align 4
  %51 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %55 = load i32, i32* @RT5392, align 4
  %56 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %54, i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %53, %48, %43, %38
  %59 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %60 = load i32, i32* @AUX_CTRL, align 4
  %61 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* @AUX_CTRL_FORCE_PCIE_CLK, align 4
  %63 = call i32 @rt2x00_set_field32(i32* %9, i32 %62, i32 1)
  %64 = load i32, i32* @AUX_CTRL_WAKE_PCIE_EN, align 4
  %65 = call i32 @rt2x00_set_field32(i32* %9, i32 %64, i32 1)
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %67 = load i32, i32* @AUX_CTRL, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %58, %53
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %72 = load i32, i32* @PWR_PIN_CFG, align 4
  %73 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %71, i32 %72, i32 2)
  br label %74

74:                                               ; preds = %70, %34
  %75 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %76 = call i32 @rt2800_disable_wpdma(%struct.rt2x00_dev* %75)
  %77 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %78 = load i32*, i32** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = call i32 @rt2800_drv_write_firmware(%struct.rt2x00_dev* %77, i32* %78, i64 %79)
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %96, %74
  %82 = load i32, i32* %8, align 4
  %83 = load i32, i32* @REGISTER_BUSY_COUNT, align 4
  %84 = icmp ult i32 %82, %83
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %87 = load i32, i32* @PBF_SYS_CTRL, align 4
  %88 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %86, i32 %87)
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* @PBF_SYS_CTRL_READY, align 4
  %91 = call i64 @rt2x00_get_field32(i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %99

94:                                               ; preds = %85
  %95 = call i32 @msleep(i32 1)
  br label %96

96:                                               ; preds = %94
  %97 = load i32, i32* %8, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %8, align 4
  br label %81

99:                                               ; preds = %93, %81
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* @REGISTER_BUSY_COUNT, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %105 = call i32 @rt2x00_err(%struct.rt2x00_dev* %104, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %106 = load i32, i32* @EBUSY, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %4, align 4
  br label %129

108:                                              ; preds = %99
  %109 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %110 = call i32 @rt2800_disable_wpdma(%struct.rt2x00_dev* %109)
  %111 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %112 = load i32, i32* @H2M_BBP_AGENT, align 4
  %113 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %111, i32 %112, i32 0)
  %114 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %115 = load i32, i32* @H2M_MAILBOX_CSR, align 4
  %116 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %114, i32 %115, i32 0)
  %117 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %118 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %108
  %121 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %122 = load i32, i32* @H2M_INT_SRC, align 4
  %123 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %121, i32 %122, i32 0)
  %124 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %125 = load i32, i32* @MCU_BOOT_SIGNAL, align 4
  %126 = call i32 @rt2800_mcu_request(%struct.rt2x00_dev* %124, i32 %125, i32 0, i32 0, i32 0)
  br label %127

127:                                              ; preds = %120, %108
  %128 = call i32 @msleep(i32 1)
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %127, %103, %31, %20
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2800_enable_wlan_rt3290(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i64 @rt2800_wait_csr_ready(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2x00_is_pci(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2800_disable_wpdma(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_drv_write_firmware(%struct.rt2x00_dev*, i32*, i64) #1

declare dso_local i64 @rt2x00_get_field32(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

declare dso_local i64 @rt2x00_is_usb(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_mcu_request(%struct.rt2x00_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
