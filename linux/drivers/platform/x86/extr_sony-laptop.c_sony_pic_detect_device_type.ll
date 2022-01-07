; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_pic_detect_device_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_sony-laptop.c_sony_pic_detect_device_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sony_pic_dev = type { i64, i8*, i8*, i8* }
%struct.pci_dev = type { i32 }

@PCI_VENDOR_ID_INTEL = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_82371AB_3 = common dso_local global i32 0, align 4
@SONYPI_DEVICE_TYPE1 = common dso_local global i64 0, align 8
@SONYPI_TYPE1_OFFSET = common dso_local global i8* null, align 8
@type1_events = common dso_local global i8* null, align 8
@PCI_DEVICE_ID_INTEL_ICH6_1 = common dso_local global i32 0, align 4
@SONYPI_DEVICE_TYPE2 = common dso_local global i64 0, align 8
@SONYPI_TYPE2_OFFSET = common dso_local global i8* null, align 8
@type2_events = common dso_local global i8* null, align 8
@PCI_DEVICE_ID_INTEL_ICH7_1 = common dso_local global i32 0, align 4
@SONYPI_DEVICE_TYPE3 = common dso_local global i8* null, align 8
@type3_handle_irq = common dso_local global i8* null, align 8
@SONYPI_TYPE3_OFFSET = common dso_local global i8* null, align 8
@type3_events = common dso_local global i8* null, align 8
@PCI_DEVICE_ID_INTEL_ICH8_4 = common dso_local global i32 0, align 4
@PCI_DEVICE_ID_INTEL_ICH9_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"detected Type%d model\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sony_pic_dev*)* @sony_pic_detect_device_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sony_pic_detect_device_type(%struct.sony_pic_dev* %0) #0 {
  %2 = alloca %struct.sony_pic_dev*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  store %struct.sony_pic_dev* %0, %struct.sony_pic_dev** %2, align 8
  %4 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %5 = load i32, i32* @PCI_DEVICE_ID_INTEL_82371AB_3, align 4
  %6 = call %struct.pci_dev* @pci_get_device(i32 %4, i32 %5, i32* null)
  store %struct.pci_dev* %6, %struct.pci_dev** %3, align 8
  %7 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %8 = icmp ne %struct.pci_dev* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load i64, i64* @SONYPI_DEVICE_TYPE1, align 8
  %11 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %12 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load i8*, i8** @SONYPI_TYPE1_OFFSET, align 8
  %14 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %15 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load i8*, i8** @type1_events, align 8
  %17 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %18 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  br label %105

19:                                               ; preds = %1
  %20 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %21 = load i32, i32* @PCI_DEVICE_ID_INTEL_ICH6_1, align 4
  %22 = call %struct.pci_dev* @pci_get_device(i32 %20, i32 %21, i32* null)
  store %struct.pci_dev* %22, %struct.pci_dev** %3, align 8
  %23 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %24 = icmp ne %struct.pci_dev* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %19
  %26 = load i64, i64* @SONYPI_DEVICE_TYPE2, align 8
  %27 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %28 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load i8*, i8** @SONYPI_TYPE2_OFFSET, align 8
  %30 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %31 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** @type2_events, align 8
  %33 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %34 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  br label %105

35:                                               ; preds = %19
  %36 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %37 = load i32, i32* @PCI_DEVICE_ID_INTEL_ICH7_1, align 4
  %38 = call %struct.pci_dev* @pci_get_device(i32 %36, i32 %37, i32* null)
  store %struct.pci_dev* %38, %struct.pci_dev** %3, align 8
  %39 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %40 = icmp ne %struct.pci_dev* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %35
  %42 = load i8*, i8** @SONYPI_DEVICE_TYPE3, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %45 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i8*, i8** @type3_handle_irq, align 8
  %47 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %48 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @SONYPI_TYPE3_OFFSET, align 8
  %50 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %51 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i8*, i8** @type3_events, align 8
  %53 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %54 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  br label %105

55:                                               ; preds = %35
  %56 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %57 = load i32, i32* @PCI_DEVICE_ID_INTEL_ICH8_4, align 4
  %58 = call %struct.pci_dev* @pci_get_device(i32 %56, i32 %57, i32* null)
  store %struct.pci_dev* %58, %struct.pci_dev** %3, align 8
  %59 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %60 = icmp ne %struct.pci_dev* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %55
  %62 = load i8*, i8** @SONYPI_DEVICE_TYPE3, align 8
  %63 = ptrtoint i8* %62 to i64
  %64 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %65 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i8*, i8** @type3_handle_irq, align 8
  %67 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %68 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %67, i32 0, i32 3
  store i8* %66, i8** %68, align 8
  %69 = load i8*, i8** @SONYPI_TYPE3_OFFSET, align 8
  %70 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %71 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load i8*, i8** @type3_events, align 8
  %73 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %74 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  br label %105

75:                                               ; preds = %55
  %76 = load i32, i32* @PCI_VENDOR_ID_INTEL, align 4
  %77 = load i32, i32* @PCI_DEVICE_ID_INTEL_ICH9_1, align 4
  %78 = call %struct.pci_dev* @pci_get_device(i32 %76, i32 %77, i32* null)
  store %struct.pci_dev* %78, %struct.pci_dev** %3, align 8
  %79 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %80 = icmp ne %struct.pci_dev* %79, null
  br i1 %80, label %81, label %95

81:                                               ; preds = %75
  %82 = load i8*, i8** @SONYPI_DEVICE_TYPE3, align 8
  %83 = ptrtoint i8* %82 to i64
  %84 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %85 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %84, i32 0, i32 0
  store i64 %83, i64* %85, align 8
  %86 = load i8*, i8** @type3_handle_irq, align 8
  %87 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %88 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** @SONYPI_TYPE3_OFFSET, align 8
  %90 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %91 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** @type3_events, align 8
  %93 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %94 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %93, i32 0, i32 1
  store i8* %92, i8** %94, align 8
  br label %105

95:                                               ; preds = %75
  %96 = load i64, i64* @SONYPI_DEVICE_TYPE2, align 8
  %97 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %98 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %97, i32 0, i32 0
  store i64 %96, i64* %98, align 8
  %99 = load i8*, i8** @SONYPI_TYPE2_OFFSET, align 8
  %100 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %101 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = load i8*, i8** @type2_events, align 8
  %103 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %104 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %95, %81, %61, %41, %25, %9
  %106 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %107 = call i32 @pci_dev_put(%struct.pci_dev* %106)
  %108 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %109 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @SONYPI_DEVICE_TYPE1, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %122

114:                                              ; preds = %105
  %115 = load %struct.sony_pic_dev*, %struct.sony_pic_dev** %2, align 8
  %116 = getelementptr inbounds %struct.sony_pic_dev, %struct.sony_pic_dev* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @SONYPI_DEVICE_TYPE2, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 2, i32 3
  br label %122

122:                                              ; preds = %114, %113
  %123 = phi i32 [ 1, %113 ], [ %121, %114 ]
  %124 = call i32 @pr_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %123)
  ret void
}

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
