; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mcu.c_mt7601u_upload_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mcu.c_mt7601u_upload_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }
%struct.mt76_fw = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mt7601u_dma_buf = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MCU_FW_URB_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"loading FW - ILM %u + IVB %zu\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"loading FW - DLM %u\0A\00", align 1
@MT_MCU_DLM_OFFSET = common dso_local global i32 0, align 4
@MT_VEND_DEV_MODE = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"Firmware running!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7601u_dev*, %struct.mt76_fw*)* @mt7601u_upload_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_upload_firmware(%struct.mt7601u_dev* %0, %struct.mt76_fw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt7601u_dev*, align 8
  %5 = alloca %struct.mt76_fw*, align 8
  %6 = alloca %struct.mt7601u_dma_buf, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %4, align 8
  store %struct.mt76_fw* %1, %struct.mt76_fw** %5, align 8
  %12 = load %struct.mt76_fw*, %struct.mt76_fw** %5, align 8
  %13 = getelementptr inbounds %struct.mt76_fw, %struct.mt76_fw* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kmemdup(i32 %14, i32 4, i32 %15)
  store i8* %16, i8** %7, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %116

22:                                               ; preds = %2
  %23 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %24 = load i32, i32* @MCU_FW_URB_SIZE, align 4
  %25 = call i64 @mt7601u_usb_alloc_buf(%struct.mt7601u_dev* %23, i32 %24, %struct.mt7601u_dma_buf* %6)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %11, align 4
  br label %110

30:                                               ; preds = %22
  %31 = load %struct.mt76_fw*, %struct.mt76_fw** %5, align 8
  %32 = getelementptr inbounds %struct.mt76_fw, %struct.mt76_fw* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @le32_to_cpu(i32 %34)
  %36 = sub i64 %35, 4
  store i64 %36, i64* %8, align 8
  %37 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %38 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i64, i64* %8, align 8
  %41 = call i32 (i32, i8*, ...) @dev_dbg(i32 %39, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %40, i64 4)
  %42 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %43 = load %struct.mt76_fw*, %struct.mt76_fw** %5, align 8
  %44 = getelementptr inbounds %struct.mt76_fw, %struct.mt76_fw* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @mt7601u_dma_fw(%struct.mt7601u_dev* %42, %struct.mt7601u_dma_buf* %6, i64 %45, i64 %46, i32 4)
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %30
  br label %110

51:                                               ; preds = %30
  %52 = load %struct.mt76_fw*, %struct.mt76_fw** %5, align 8
  %53 = getelementptr inbounds %struct.mt76_fw, %struct.mt76_fw* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @le32_to_cpu(i32 %55)
  store i64 %56, i64* %9, align 8
  %57 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %58 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i64, i64* %9, align 8
  %61 = call i32 (i32, i8*, ...) @dev_dbg(i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %60)
  %62 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %63 = load %struct.mt76_fw*, %struct.mt76_fw** %5, align 8
  %64 = getelementptr inbounds %struct.mt76_fw, %struct.mt76_fw* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %8, align 8
  %67 = add nsw i64 %65, %66
  %68 = load i64, i64* %9, align 8
  %69 = load i32, i32* @MT_MCU_DLM_OFFSET, align 4
  %70 = call i32 @mt7601u_dma_fw(%struct.mt7601u_dev* %62, %struct.mt7601u_dma_buf* %6, i64 %67, i64 %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %51
  br label %110

74:                                               ; preds = %51
  %75 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %76 = load i32, i32* @MT_VEND_DEV_MODE, align 4
  %77 = load i32, i32* @USB_DIR_OUT, align 4
  %78 = load i8*, i8** %7, align 8
  %79 = call i32 @mt7601u_vendor_request(%struct.mt7601u_dev* %75, i32 %76, i32 %77, i32 18, i32 0, i8* %78, i32 4)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %74
  br label %110

83:                                               ; preds = %74
  store i32 0, i32* %11, align 4
  store i32 100, i32* %10, align 4
  br label %84

84:                                               ; preds = %96, %83
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %84
  %88 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %89 = call i32 @firmware_running(%struct.mt7601u_dev* %88)
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  br label %92

92:                                               ; preds = %87, %84
  %93 = phi i1 [ false, %84 ], [ %91, %87 ]
  br i1 %93, label %94, label %99

94:                                               ; preds = %92
  %95 = call i32 @msleep(i32 10)
  br label %96

96:                                               ; preds = %94
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %10, align 4
  br label %84

99:                                               ; preds = %92
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i32, i32* @ETIMEDOUT, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %11, align 4
  br label %110

105:                                              ; preds = %99
  %106 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %107 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 (i32, i8*, ...) @dev_dbg(i32 %108, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %110

110:                                              ; preds = %105, %102, %82, %73, %50, %27
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @kfree(i8* %111)
  %113 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %114 = call i32 @mt7601u_usb_free_buf(%struct.mt7601u_dev* %113, %struct.mt7601u_dma_buf* %6)
  %115 = load i32, i32* %11, align 4
  store i32 %115, i32* %3, align 4
  br label %116

116:                                              ; preds = %110, %19
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i8* @kmemdup(i32, i32, i32) #1

declare dso_local i64 @mt7601u_usb_alloc_buf(%struct.mt7601u_dev*, i32, %struct.mt7601u_dma_buf*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mt7601u_dma_fw(%struct.mt7601u_dev*, %struct.mt7601u_dma_buf*, i64, i64, i32) #1

declare dso_local i32 @mt7601u_vendor_request(%struct.mt7601u_dev*, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @firmware_running(%struct.mt7601u_dev*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mt7601u_usb_free_buf(%struct.mt7601u_dev*, %struct.mt7601u_dma_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
