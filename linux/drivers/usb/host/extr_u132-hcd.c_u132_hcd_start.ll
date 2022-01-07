; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_hcd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_u132-hcd.c_u132_hcd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.u132 = type { i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.platform_device = type { i32 }
%struct.u132_platform_data = type { i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"device has been removed %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"device is being removed\0A\00", align 1
@ESHUTDOWN = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_AMD = common dso_local global i64 0, align 8
@OHCI_QUIRK_AMD756 = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_OPTI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"WARNING: OPTi workarounds unavailable\0A\00", align 1
@PCI_VENDOR_ID_COMPAQ = common dso_local global i64 0, align 8
@OHCI_QUIRK_ZFMICRO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"platform_device missing\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @u132_hcd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u132_hcd_start(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.u132*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.u132* @hcd_to_u132(%struct.usb_hcd* %9)
  store %struct.u132* %10, %struct.u132** %4, align 8
  %11 = load %struct.u132*, %struct.u132** %4, align 8
  %12 = getelementptr inbounds %struct.u132, %struct.u132* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %26

15:                                               ; preds = %1
  %16 = load %struct.u132*, %struct.u132** %4, align 8
  %17 = getelementptr inbounds %struct.u132, %struct.u132* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.u132*, %struct.u132** %4, align 8
  %21 = getelementptr inbounds %struct.u132, %struct.u132* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32*, i8*, ...) @dev_err(i32* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %129

26:                                               ; preds = %1
  %27 = load %struct.u132*, %struct.u132** %4, align 8
  %28 = getelementptr inbounds %struct.u132, %struct.u132* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.u132*, %struct.u132** %4, align 8
  %33 = getelementptr inbounds %struct.u132, %struct.u132* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 (i32*, i8*, ...) @dev_err(i32* %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @ESHUTDOWN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %129

39:                                               ; preds = %26
  %40 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %41 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %121

45:                                               ; preds = %39
  %46 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %47 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call %struct.platform_device* @to_platform_device(i64 %49)
  store %struct.platform_device* %50, %struct.platform_device** %6, align 8
  %51 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %52 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %51, i32 0, i32 0
  %53 = call i64 @dev_get_platdata(i32* %52)
  %54 = inttoptr i64 %53 to %struct.u132_platform_data*
  %55 = getelementptr inbounds %struct.u132_platform_data, %struct.u132_platform_data* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %7, align 8
  %57 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = call i64 @dev_get_platdata(i32* %58)
  %60 = inttoptr i64 %59 to %struct.u132_platform_data*
  %61 = getelementptr inbounds %struct.u132_platform_data, %struct.u132_platform_data* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %8, align 8
  %63 = load %struct.u132*, %struct.u132** %4, align 8
  %64 = getelementptr inbounds %struct.u132, %struct.u132* %63, i32 0, i32 2
  %65 = call i32 @mutex_lock(i32* %64)
  %66 = call i32 @msleep(i32 10)
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* @PCI_VENDOR_ID_AMD, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %45
  %71 = load i64, i64* %8, align 8
  %72 = icmp eq i64 %71, 29708
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* @OHCI_QUIRK_AMD756, align 4
  %75 = load %struct.u132*, %struct.u132** %4, align 8
  %76 = getelementptr inbounds %struct.u132, %struct.u132* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  br label %105

77:                                               ; preds = %70, %45
  %78 = load i64, i64* %7, align 8
  %79 = load i64, i64* @PCI_VENDOR_ID_OPTI, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load i64, i64* %8, align 8
  %83 = icmp eq i64 %82, 51297
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = load %struct.u132*, %struct.u132** %4, align 8
  %86 = getelementptr inbounds %struct.u132, %struct.u132* %85, i32 0, i32 1
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %88, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %104

90:                                               ; preds = %81, %77
  %91 = load i64, i64* %7, align 8
  %92 = load i64, i64* @PCI_VENDOR_ID_COMPAQ, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load i64, i64* %8, align 8
  %96 = icmp eq i64 %95, 41208
  br i1 %96, label %97, label %103

97:                                               ; preds = %94
  %98 = load i32, i32* @OHCI_QUIRK_ZFMICRO, align 4
  %99 = load %struct.u132*, %struct.u132** %4, align 8
  %100 = getelementptr inbounds %struct.u132, %struct.u132* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %94, %90
  br label %104

104:                                              ; preds = %103, %84
  br label %105

105:                                              ; preds = %104, %73
  %106 = load %struct.u132*, %struct.u132** %4, align 8
  %107 = call i32 @u132_run(%struct.u132* %106)
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %5, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.u132*, %struct.u132** %4, align 8
  %112 = call i32 @u132_disable(%struct.u132* %111)
  %113 = load %struct.u132*, %struct.u132** %4, align 8
  %114 = getelementptr inbounds %struct.u132, %struct.u132* %113, i32 0, i32 0
  store i32 1, i32* %114, align 8
  br label %115

115:                                              ; preds = %110, %105
  %116 = call i32 @msleep(i32 100)
  %117 = load %struct.u132*, %struct.u132** %4, align 8
  %118 = getelementptr inbounds %struct.u132, %struct.u132* %117, i32 0, i32 2
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %129

121:                                              ; preds = %39
  %122 = load %struct.u132*, %struct.u132** %4, align 8
  %123 = getelementptr inbounds %struct.u132, %struct.u132* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = call i32 (i32*, i8*, ...) @dev_err(i32* %125, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %127 = load i32, i32* @ENODEV, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %129

129:                                              ; preds = %121, %115, %31, %15
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local %struct.u132* @hcd_to_u132(%struct.usb_hcd*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.platform_device* @to_platform_device(i64) #1

declare dso_local i64 @dev_get_platdata(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @u132_run(%struct.u132*) #1

declare dso_local i32 @u132_disable(%struct.u132*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
