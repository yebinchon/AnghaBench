; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_flash_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_hw.c_csio_hw_flash_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.firmware = type { i32, i32* }
%struct.fw_info = type { i32 }
%struct.fw_hdr = type { i32 }

@ECANCELED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unable to get firmware info for chip %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSIO_HW_CHIP_MASK = common dso_local global i32 0, align 4
@FW_FNAME_T5 = common dso_local global i8* null, align 8
@FW_FNAME_T6 = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"could not find firmware image %s, err: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.csio_hw*, i32*)* @csio_hw_flash_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_hw_flash_fw(%struct.csio_hw* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca %struct.fw_info*, align 8
  %9 = alloca %struct.fw_hdr*, align 8
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.csio_hw* %0, %struct.csio_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  %15 = load i32, i32* @ECANCELED, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %18 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %17, i32 0, i32 2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %18, align 8
  store %struct.pci_dev* %19, %struct.pci_dev** %10, align 8
  %20 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %21 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %20, i32 0, i32 1
  store %struct.device* %21, %struct.device** %11, align 8
  store i32* null, i32** %12, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %23 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CHELSIO_CHIP_VERSION(i32 %24)
  %26 = call %struct.fw_info* @find_fw_info(i32 %25)
  store %struct.fw_info* %26, %struct.fw_info** %8, align 8
  %27 = load %struct.fw_info*, %struct.fw_info** %8, align 8
  %28 = icmp eq %struct.fw_info* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %2
  %30 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %31 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %32 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @CHELSIO_CHIP_VERSION(i32 %33)
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 (%struct.csio_hw*, i8*, i8*, ...) @csio_err(%struct.csio_hw* %30, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %97

40:                                               ; preds = %2
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.fw_hdr* @kmalloc(i32 4, i32 %41)
  store %struct.fw_hdr* %42, %struct.fw_hdr** %9, align 8
  %43 = load %struct.fw_hdr*, %struct.fw_hdr** %9, align 8
  %44 = icmp ne %struct.fw_hdr* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %97

48:                                               ; preds = %40
  %49 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %50 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @CSIO_HW_CHIP_MASK, align 4
  %53 = and i32 %51, %52
  %54 = call i64 @csio_is_t5(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %48
  %57 = load i8*, i8** @FW_FNAME_T5, align 8
  store i8* %57, i8** %14, align 8
  br label %60

58:                                               ; preds = %48
  %59 = load i8*, i8** @FW_FNAME_T6, align 8
  store i8* %59, i8** %14, align 8
  br label %60

60:                                               ; preds = %58, %56
  %61 = load i8*, i8** %14, align 8
  %62 = load %struct.device*, %struct.device** %11, align 8
  %63 = call i64 @request_firmware(%struct.firmware** %7, i8* %61, %struct.device* %62)
  %64 = icmp slt i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %60
  %66 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %67 = load i8*, i8** %14, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 (%struct.csio_hw*, i8*, i8*, ...) @csio_err(%struct.csio_hw* %66, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %67, i32 %68)
  br label %77

70:                                               ; preds = %60
  %71 = load %struct.firmware*, %struct.firmware** %7, align 8
  %72 = getelementptr inbounds %struct.firmware, %struct.firmware* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  store i32* %73, i32** %12, align 8
  %74 = load %struct.firmware*, %struct.firmware** %7, align 8
  %75 = getelementptr inbounds %struct.firmware, %struct.firmware* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  store i32 %76, i32* %13, align 4
  br label %77

77:                                               ; preds = %70, %65
  %78 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %79 = load %struct.fw_info*, %struct.fw_info** %8, align 8
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* %13, align 4
  %82 = load %struct.fw_hdr*, %struct.fw_hdr** %9, align 8
  %83 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %84 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %5, align 8
  %87 = call i32 @csio_hw_prep_fw(%struct.csio_hw* %78, %struct.fw_info* %79, i32* %80, i32 %81, %struct.fw_hdr* %82, i32 %85, i32* %86)
  store i32 %87, i32* %6, align 4
  %88 = load %struct.firmware*, %struct.firmware** %7, align 8
  %89 = icmp ne %struct.firmware* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %77
  %91 = load %struct.firmware*, %struct.firmware** %7, align 8
  %92 = call i32 @release_firmware(%struct.firmware* %91)
  br label %93

93:                                               ; preds = %90, %77
  %94 = load %struct.fw_hdr*, %struct.fw_hdr** %9, align 8
  %95 = call i32 @kfree(%struct.fw_hdr* %94)
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %3, align 4
  br label %97

97:                                               ; preds = %93, %45, %29
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.fw_info* @find_fw_info(i32) #1

declare dso_local i32 @CHELSIO_CHIP_VERSION(i32) #1

declare dso_local i32 @csio_err(%struct.csio_hw*, i8*, i8*, ...) #1

declare dso_local %struct.fw_hdr* @kmalloc(i32, i32) #1

declare dso_local i64 @csio_is_t5(i32) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i8*, %struct.device*) #1

declare dso_local i32 @csio_hw_prep_fw(%struct.csio_hw*, %struct.fw_info*, i32*, i32, %struct.fw_hdr*, i32, i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @kfree(%struct.fw_hdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
