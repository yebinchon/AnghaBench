; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_enable_radio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_enable_radio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@EIO = common dso_local global i32 0, align 4
@H2M_BBP_AGENT = common dso_local global i32 0, align 4
@H2M_MAILBOX_CSR = common dso_local global i32 0, align 4
@H2M_INT_SRC = common dso_local global i32 0, align 4
@MCU_BOOT_SIGNAL = common dso_local global i32 0, align 4
@RT3070 = common dso_local global i32 0, align 4
@RT3071 = common dso_local global i32 0, align 4
@RT3572 = common dso_local global i32 0, align 4
@MCU_CURRENT = common dso_local global i32 0, align 4
@MAC_SYS_CTRL = common dso_local global i32 0, align 4
@MAC_SYS_CTRL_ENABLE_TX = common dso_local global i32 0, align 4
@MAC_SYS_CTRL_ENABLE_RX = common dso_local global i32 0, align 4
@WPDMA_GLO_CFG = common dso_local global i32 0, align 4
@WPDMA_GLO_CFG_ENABLE_TX_DMA = common dso_local global i32 0, align 4
@WPDMA_GLO_CFG_ENABLE_RX_DMA = common dso_local global i32 0, align 4
@WPDMA_GLO_CFG_TX_WRITEBACK_DONE = common dso_local global i32 0, align 4
@EEPROM_LED_AG_CONF = common dso_local global i32 0, align 4
@MCU_LED_AG_CONF = common dso_local global i32 0, align 4
@EEPROM_LED_ACT_CONF = common dso_local global i32 0, align 4
@MCU_LED_ACT_CONF = common dso_local global i32 0, align 4
@EEPROM_LED_POLARITY = common dso_local global i32 0, align 4
@MCU_LED_LED_POLARITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2800_enable_radio(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %7 = call i64 @rt2800_wait_wpdma_ready(%struct.rt2x00_dev* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %11 = call i64 @rt2800_init_registers(%struct.rt2x00_dev* %10)
  %12 = icmp ne i64 %11, 0
  br label %13

13:                                               ; preds = %9, %1
  %14 = phi i1 [ true, %1 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %154

21:                                               ; preds = %13
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %23 = call i32 @rt2800_wait_bbp_rf_ready(%struct.rt2x00_dev* %22)
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %154

29:                                               ; preds = %21
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %31 = load i32, i32* @H2M_BBP_AGENT, align 4
  %32 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %30, i32 %31, i64 0)
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %34 = load i32, i32* @H2M_MAILBOX_CSR, align 4
  %35 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %33, i32 %34, i64 0)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %37 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %41 = load i32, i32* @H2M_INT_SRC, align 4
  %42 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %40, i32 %41, i64 0)
  br label %43

43:                                               ; preds = %39, %29
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %45 = load i32, i32* @MCU_BOOT_SIGNAL, align 4
  %46 = call i32 @rt2800_mcu_request(%struct.rt2x00_dev* %44, i32 %45, i32 0, i32 0, i32 0)
  %47 = call i32 @msleep(i32 1)
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %49 = call i32 @rt2800_wait_bbp_ready(%struct.rt2x00_dev* %48)
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %154

55:                                               ; preds = %43
  %56 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %57 = call i32 @rt2800_init_bbp(%struct.rt2x00_dev* %56)
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %59 = call i32 @rt2800_init_rfcsr(%struct.rt2x00_dev* %58)
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %61 = call i64 @rt2x00_is_usb(%struct.rt2x00_dev* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %84

63:                                               ; preds = %55
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %65 = load i32, i32* @RT3070, align 4
  %66 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %64, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %63
  %69 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %70 = load i32, i32* @RT3071, align 4
  %71 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %75 = load i32, i32* @RT3572, align 4
  %76 = call i64 @rt2x00_rt(%struct.rt2x00_dev* %74, i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %73, %68, %63
  %79 = call i32 @udelay(i32 200)
  %80 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %81 = load i32, i32* @MCU_CURRENT, align 4
  %82 = call i32 @rt2800_mcu_request(%struct.rt2x00_dev* %80, i32 %81, i32 0, i32 0, i32 0)
  %83 = call i32 @udelay(i32 10)
  br label %84

84:                                               ; preds = %78, %73, %55
  %85 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %86 = load i32, i32* @MAC_SYS_CTRL, align 4
  %87 = call i64 @rt2800_register_read(%struct.rt2x00_dev* %85, i32 %86)
  store i64 %87, i64* %4, align 8
  %88 = load i32, i32* @MAC_SYS_CTRL_ENABLE_TX, align 4
  %89 = call i32 @rt2x00_set_field32(i64* %4, i32 %88, i32 1)
  %90 = load i32, i32* @MAC_SYS_CTRL_ENABLE_RX, align 4
  %91 = call i32 @rt2x00_set_field32(i64* %4, i32 %90, i32 0)
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %93 = load i32, i32* @MAC_SYS_CTRL, align 4
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %92, i32 %93, i64 %94)
  %96 = call i32 @udelay(i32 50)
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %98 = load i32, i32* @WPDMA_GLO_CFG, align 4
  %99 = call i64 @rt2800_register_read(%struct.rt2x00_dev* %97, i32 %98)
  store i64 %99, i64* %4, align 8
  %100 = load i32, i32* @WPDMA_GLO_CFG_ENABLE_TX_DMA, align 4
  %101 = call i32 @rt2x00_set_field32(i64* %4, i32 %100, i32 1)
  %102 = load i32, i32* @WPDMA_GLO_CFG_ENABLE_RX_DMA, align 4
  %103 = call i32 @rt2x00_set_field32(i64* %4, i32 %102, i32 1)
  %104 = load i32, i32* @WPDMA_GLO_CFG_TX_WRITEBACK_DONE, align 4
  %105 = call i32 @rt2x00_set_field32(i64* %4, i32 %104, i32 1)
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %107 = load i32, i32* @WPDMA_GLO_CFG, align 4
  %108 = load i64, i64* %4, align 8
  %109 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %106, i32 %107, i64 %108)
  %110 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %111 = load i32, i32* @MAC_SYS_CTRL, align 4
  %112 = call i64 @rt2800_register_read(%struct.rt2x00_dev* %110, i32 %111)
  store i64 %112, i64* %4, align 8
  %113 = load i32, i32* @MAC_SYS_CTRL_ENABLE_TX, align 4
  %114 = call i32 @rt2x00_set_field32(i64* %4, i32 %113, i32 1)
  %115 = load i32, i32* @MAC_SYS_CTRL_ENABLE_RX, align 4
  %116 = call i32 @rt2x00_set_field32(i64* %4, i32 %115, i32 1)
  %117 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %118 = load i32, i32* @MAC_SYS_CTRL, align 4
  %119 = load i64, i64* %4, align 8
  %120 = call i32 @rt2800_register_write(%struct.rt2x00_dev* %117, i32 %118, i64 %119)
  %121 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %122 = load i32, i32* @EEPROM_LED_AG_CONF, align 4
  %123 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %121, i32 %122)
  store i32 %123, i32* %5, align 4
  %124 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %125 = load i32, i32* @MCU_LED_AG_CONF, align 4
  %126 = load i32, i32* %5, align 4
  %127 = and i32 %126, 255
  %128 = load i32, i32* %5, align 4
  %129 = ashr i32 %128, 8
  %130 = and i32 %129, 255
  %131 = call i32 @rt2800_mcu_request(%struct.rt2x00_dev* %124, i32 %125, i32 255, i32 %127, i32 %130)
  %132 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %133 = load i32, i32* @EEPROM_LED_ACT_CONF, align 4
  %134 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %132, i32 %133)
  store i32 %134, i32* %5, align 4
  %135 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %136 = load i32, i32* @MCU_LED_ACT_CONF, align 4
  %137 = load i32, i32* %5, align 4
  %138 = and i32 %137, 255
  %139 = load i32, i32* %5, align 4
  %140 = ashr i32 %139, 8
  %141 = and i32 %140, 255
  %142 = call i32 @rt2800_mcu_request(%struct.rt2x00_dev* %135, i32 %136, i32 255, i32 %138, i32 %141)
  %143 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %144 = load i32, i32* @EEPROM_LED_POLARITY, align 4
  %145 = call i32 @rt2800_eeprom_read(%struct.rt2x00_dev* %143, i32 %144)
  store i32 %145, i32* %5, align 4
  %146 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %147 = load i32, i32* @MCU_LED_LED_POLARITY, align 4
  %148 = load i32, i32* %5, align 4
  %149 = and i32 %148, 255
  %150 = load i32, i32* %5, align 4
  %151 = ashr i32 %150, 8
  %152 = and i32 %151, 255
  %153 = call i32 @rt2800_mcu_request(%struct.rt2x00_dev* %146, i32 %147, i32 255, i32 %149, i32 %152)
  store i32 0, i32* %2, align 4
  br label %154

154:                                              ; preds = %84, %52, %26, %18
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @rt2800_wait_wpdma_ready(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2800_init_registers(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_wait_bbp_rf_ready(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_register_write(%struct.rt2x00_dev*, i32, i64) #1

declare dso_local i64 @rt2x00_is_usb(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_mcu_request(%struct.rt2x00_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rt2800_wait_bbp_ready(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_bbp(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_init_rfcsr(%struct.rt2x00_dev*) #1

declare dso_local i64 @rt2x00_rt(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field32(i64*, i32, i32) #1

declare dso_local i32 @rt2800_eeprom_read(%struct.rt2x00_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
