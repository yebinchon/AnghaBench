; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_usb_mcu.c_mt76x0u_upload_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_usb_mcu.c_mt76x0u_upload_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mt76x02_fw_header = type { i32, i32 }

@MT_MCU_IVB_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"loading FW - ILM %u + IVB %u\0A\00", align 1
@MCU_FW_URB_MAX_PAYLOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"loading FW - DLM %u\0A\00", align 1
@MT_MCU_DLM_OFFSET = common dso_local global i32 0, align 4
@MT_VEND_DEV_MODE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@MT_MCU_COM_REG0 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Firmware failed to start\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"Firmware running!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*, %struct.mt76x02_fw_header*)* @mt76x0u_upload_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x0u_upload_firmware(%struct.mt76x02_dev* %0, %struct.mt76x02_fw_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca %struct.mt76x02_fw_header*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store %struct.mt76x02_fw_header* %1, %struct.mt76x02_fw_header** %5, align 8
  %11 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %5, align 8
  %12 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %11, i64 1
  %13 = bitcast %struct.mt76x02_fw_header* %12 to i32*
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load i32, i32* @MT_MCU_IVB_SIZE, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kmemdup(i32* %14, i32 %15, i32 %16)
  store i8* %17, i8** %9, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %111

23:                                               ; preds = %2
  %24 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %5, align 8
  %25 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = load i32, i32* @MT_MCU_IVB_SIZE, align 4
  %29 = sub nsw i32 %27, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %31 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MT_MCU_IVB_SIZE, align 4
  %36 = call i32 (i32, i8*, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* @MT_MCU_IVB_SIZE, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @MCU_FW_URB_MAX_PAYLOAD, align 4
  %44 = load i32, i32* @MT_MCU_IVB_SIZE, align 4
  %45 = call i32 @mt76x02u_mcu_fw_send_data(%struct.mt76x02_dev* %37, i32* %41, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %23
  br label %107

49:                                               ; preds = %23
  %50 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %5, align 8
  %51 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @le32_to_cpu(i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %55 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i32, i8*, ...) @dev_dbg(i32 %57, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = load %struct.mt76x02_fw_header*, %struct.mt76x02_fw_header** %5, align 8
  %63 = getelementptr inbounds %struct.mt76x02_fw_header, %struct.mt76x02_fw_header* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %61, i64 %66
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @MCU_FW_URB_MAX_PAYLOAD, align 4
  %70 = load i32, i32* @MT_MCU_DLM_OFFSET, align 4
  %71 = call i32 @mt76x02u_mcu_fw_send_data(%struct.mt76x02_dev* %60, i32* %67, i32 %68, i32 %69, i32 %70)
  store i32 %71, i32* %10, align 4
  %72 = load i32, i32* %10, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %49
  br label %107

75:                                               ; preds = %49
  %76 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %77 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %76, i32 0, i32 0
  %78 = load i32, i32* @MT_VEND_DEV_MODE, align 4
  %79 = load i32, i32* @USB_DIR_OUT, align 4
  %80 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %81 = or i32 %79, %80
  %82 = load i8*, i8** %9, align 8
  %83 = load i32, i32* @MT_MCU_IVB_SIZE, align 4
  %84 = call i32 @mt76u_vendor_request(%struct.TYPE_2__* %77, i32 %78, i32 %81, i32 18, i32 0, i8* %82, i32 %83)
  store i32 %84, i32* %10, align 4
  %85 = load i32, i32* %10, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %75
  br label %107

88:                                               ; preds = %75
  %89 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %90 = load i32, i32* @MT_MCU_COM_REG0, align 4
  %91 = call i32 @mt76_poll_msec(%struct.mt76x02_dev* %89, i32 %90, i32 1, i32 1, i32 1000)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %101, label %93

93:                                               ; preds = %88
  %94 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %95 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i32, i32* @ETIMEDOUT, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %10, align 4
  br label %107

101:                                              ; preds = %88
  %102 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %103 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, ...) @dev_dbg(i32 %105, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  br label %107

107:                                              ; preds = %101, %93, %87, %74, %48
  %108 = load i8*, i8** %9, align 8
  %109 = call i32 @kfree(i8* %108)
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %20
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i8* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mt76x02u_mcu_fw_send_data(%struct.mt76x02_dev*, i32*, i32, i32, i32) #1

declare dso_local i32 @mt76u_vendor_request(%struct.TYPE_2__*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @mt76_poll_msec(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
