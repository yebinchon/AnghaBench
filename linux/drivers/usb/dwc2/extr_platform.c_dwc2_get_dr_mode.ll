; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_platform.c_dwc2_get_dr_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_platform.c_dwc2_get_dr_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i64, i32 }

@USB_DR_MODE_UNKNOWN = common dso_local global i64 0, align 8
@USB_DR_MODE_OTG = common dso_local global i64 0, align 8
@CONFIG_USB_DWC2_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Controller does not support host mode.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@USB_DR_MODE_PERIPHERAL = common dso_local global i32 0, align 4
@CONFIG_USB_DWC2_PERIPHERAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Controller does not support device mode.\0A\00", align 1
@USB_DR_MODE_HOST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Configuration mismatch. dr_mode forced to %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*)* @dwc2_get_dr_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_get_dr_mode(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  %5 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %6 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @usb_get_dr_mode(i32 %7)
  %9 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %10 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  %11 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %12 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @USB_DR_MODE_UNKNOWN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i64, i64* @USB_DR_MODE_OTG, align 8
  %18 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %19 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %22 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %26 = call i64 @dwc2_hw_is_device(%struct.dwc2_hsotg* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %20
  %29 = load i32, i32* @CONFIG_USB_DWC2_HOST, align 4
  %30 = call i64 @IS_ENABLED(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %34 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %95

39:                                               ; preds = %28
  %40 = load i32, i32* @USB_DR_MODE_PERIPHERAL, align 4
  store i32 %40, i32* %4, align 4
  br label %73

41:                                               ; preds = %20
  %42 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %43 = call i64 @dwc2_hw_is_host(%struct.dwc2_hsotg* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %41
  %46 = load i32, i32* @CONFIG_USB_DWC2_PERIPHERAL, align 4
  %47 = call i64 @IS_ENABLED(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %51 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @dev_err(i32 %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %95

56:                                               ; preds = %45
  %57 = load i32, i32* @USB_DR_MODE_HOST, align 4
  store i32 %57, i32* %4, align 4
  br label %72

58:                                               ; preds = %41
  %59 = load i32, i32* @CONFIG_USB_DWC2_HOST, align 4
  %60 = call i64 @IS_ENABLED(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* @USB_DR_MODE_HOST, align 4
  store i32 %63, i32* %4, align 4
  br label %71

64:                                               ; preds = %58
  %65 = load i32, i32* @CONFIG_USB_DWC2_PERIPHERAL, align 4
  %66 = call i64 @IS_ENABLED(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @USB_DR_MODE_PERIPHERAL, align 4
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %68, %64
  br label %71

71:                                               ; preds = %70, %62
  br label %72

72:                                               ; preds = %71, %56
  br label %73

73:                                               ; preds = %72, %39
  %74 = load i32, i32* %4, align 4
  %75 = zext i32 %74 to i64
  %76 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %77 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %73
  %81 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %82 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @USB_DR_MODE_HOST, align 4
  %86 = icmp eq i32 %84, %85
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %89 = call i32 @dev_warn(i32 %83, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %88)
  %90 = load i32, i32* %4, align 4
  %91 = zext i32 %90 to i64
  %92 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %93 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  br label %94

94:                                               ; preds = %80, %73
  store i32 0, i32* %2, align 4
  br label %95

95:                                               ; preds = %94, %49, %32
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i64 @usb_get_dr_mode(i32) #1

declare dso_local i64 @dwc2_hw_is_device(%struct.dwc2_hsotg*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @dwc2_hw_is_host(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dev_warn(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
