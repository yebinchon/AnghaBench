; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt61pci.c_rt61pci_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }

@MAC_CSR0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Unstable hardware\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@MCU_CNTL_CSR_RESET = common dso_local global i32 0, align 4
@MCU_CNTL_CSR = common dso_local global i32 0, align 4
@M2H_CMD_DONE_CSR = common dso_local global i32 0, align 4
@H2M_MAILBOX_CSR = common dso_local global i32 0, align 4
@HOST_CMD_CSR = common dso_local global i32 0, align 4
@MCU_CNTL_CSR_SELECT_BANK = common dso_local global i32 0, align 4
@FIRMWARE_IMAGE_BASE = common dso_local global i32 0, align 4
@MCU_CNTL_CSR_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"MCU Control register not ready\0A\00", align 1
@MAC_CSR1_SOFT_RESET = common dso_local global i32 0, align 4
@MAC_CSR1_BBP_RESET = common dso_local global i32 0, align 4
@MAC_CSR1 = common dso_local global i32 0, align 4
@MAC_CSR1_HOST_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, i32*, i64)* @rt61pci_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt61pci_load_firmware(%struct.rt2x00_dev* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %22, %3
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 100
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %15 = load i32, i32* @MAC_CSR0, align 4
  %16 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %25

20:                                               ; preds = %13
  %21 = call i32 @msleep(i32 1)
  br label %22

22:                                               ; preds = %20
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  br label %10

25:                                               ; preds = %19, %10
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %30 = call i32 @rt2x00_err(%struct.rt2x00_dev* %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %129

33:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  %34 = load i32, i32* @MCU_CNTL_CSR_RESET, align 4
  %35 = call i32 @rt2x00_set_field32(i32* %9, i32 %34, i32 1)
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %37 = load i32, i32* @MCU_CNTL_CSR, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %36, i32 %37, i32 %38)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %41 = load i32, i32* @M2H_CMD_DONE_CSR, align 4
  %42 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %40, i32 %41, i32 -1)
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %44 = load i32, i32* @H2M_MAILBOX_CSR, align 4
  %45 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %43, i32 %44, i32 0)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %47 = load i32, i32* @HOST_CMD_CSR, align 4
  %48 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %46, i32 %47, i32 0)
  store i32 0, i32* %9, align 4
  %49 = load i32, i32* @MCU_CNTL_CSR_RESET, align 4
  %50 = call i32 @rt2x00_set_field32(i32* %9, i32 %49, i32 1)
  %51 = load i32, i32* @MCU_CNTL_CSR_SELECT_BANK, align 4
  %52 = call i32 @rt2x00_set_field32(i32* %9, i32 %51, i32 1)
  %53 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %54 = load i32, i32* @MCU_CNTL_CSR, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %53, i32 %54, i32 %55)
  %57 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %58 = load i32, i32* @FIRMWARE_IMAGE_BASE, align 4
  %59 = load i32*, i32** %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev* %57, i32 %58, i32* %59, i64 %60)
  %62 = load i32, i32* @MCU_CNTL_CSR_SELECT_BANK, align 4
  %63 = call i32 @rt2x00_set_field32(i32* %9, i32 %62, i32 0)
  %64 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %65 = load i32, i32* @MCU_CNTL_CSR, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %64, i32 %65, i32 %66)
  %68 = load i32, i32* @MCU_CNTL_CSR_RESET, align 4
  %69 = call i32 @rt2x00_set_field32(i32* %9, i32 %68, i32 0)
  %70 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %71 = load i32, i32* @MCU_CNTL_CSR, align 4
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %70, i32 %71, i32 %72)
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %88, %33
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 100
  br i1 %76, label %77, label %91

77:                                               ; preds = %74
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %79 = load i32, i32* @MCU_CNTL_CSR, align 4
  %80 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %78, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @MCU_CNTL_CSR_READY, align 4
  %83 = call i64 @rt2x00_get_field32(i32 %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %91

86:                                               ; preds = %77
  %87 = call i32 @msleep(i32 1)
  br label %88

88:                                               ; preds = %86
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %74

91:                                               ; preds = %85, %74
  %92 = load i32, i32* %8, align 4
  %93 = icmp eq i32 %92, 100
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %96 = call i32 @rt2x00_err(%struct.rt2x00_dev* %95, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* @EBUSY, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %4, align 4
  br label %129

99:                                               ; preds = %91
  %100 = call i32 @msleep(i32 1)
  store i32 0, i32* %9, align 4
  %101 = load i32, i32* @MAC_CSR1_SOFT_RESET, align 4
  %102 = call i32 @rt2x00_set_field32(i32* %9, i32 %101, i32 1)
  %103 = load i32, i32* @MAC_CSR1_BBP_RESET, align 4
  %104 = call i32 @rt2x00_set_field32(i32* %9, i32 %103, i32 1)
  %105 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %106 = load i32, i32* @MAC_CSR1, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %105, i32 %106, i32 %107)
  %109 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %110 = load i32, i32* @MAC_CSR1, align 4
  %111 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %109, i32 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* @MAC_CSR1_SOFT_RESET, align 4
  %113 = call i32 @rt2x00_set_field32(i32* %9, i32 %112, i32 0)
  %114 = load i32, i32* @MAC_CSR1_BBP_RESET, align 4
  %115 = call i32 @rt2x00_set_field32(i32* %9, i32 %114, i32 0)
  %116 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %117 = load i32, i32* @MAC_CSR1, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %116, i32 %117, i32 %118)
  %120 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %121 = load i32, i32* @MAC_CSR1, align 4
  %122 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %120, i32 %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* @MAC_CSR1_HOST_READY, align 4
  %124 = call i32 @rt2x00_set_field32(i32* %9, i32 %123, i32 1)
  %125 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %126 = load i32, i32* @MAC_CSR1, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %125, i32 %126, i32 %127)
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %99, %94, %28
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @rt2x00_set_field32(i32*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2x00mmio_register_multiwrite(%struct.rt2x00_dev*, i32, i32*, i64) #1

declare dso_local i64 @rt2x00_get_field32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
