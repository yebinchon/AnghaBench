; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_get_dr_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_get_dr_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i64, i32, %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@USB_DR_MODE_UNKNOWN = common dso_local global i64 0, align 8
@USB_DR_MODE_OTG = common dso_local global i32 0, align 4
@CONFIG_USB_DWC3_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Controller does not support host mode.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@USB_DR_MODE_PERIPHERAL = common dso_local global i32 0, align 4
@CONFIG_USB_DWC3_GADGET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Controller does not support device mode.\0A\00", align 1
@USB_DR_MODE_HOST = common dso_local global i32 0, align 4
@DWC3_REVISION_330A = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"Configuration mismatch. dr_mode forced to %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"host\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"gadget\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*)* @dwc3_get_dr_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_get_dr_mode(%struct.dwc3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  %7 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %8 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %7, i32 0, i32 3
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %11 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @USB_DR_MODE_UNKNOWN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load i32, i32* @USB_DR_MODE_OTG, align 4
  %17 = sext i32 %16 to i64
  %18 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %19 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %22 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %4, align 4
  %25 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %26 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DWC3_GHWPARAMS0_MODE(i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  switch i32 %30, label %53 [
    i32 129, label %31
    i32 128, label %42
  ]

31:                                               ; preds = %20
  %32 = load i32, i32* @CONFIG_USB_DWC3_HOST, align 4
  %33 = call i32 @IS_ENABLED(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load %struct.device*, %struct.device** %5, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %99

40:                                               ; preds = %31
  %41 = load i32, i32* @USB_DR_MODE_PERIPHERAL, align 4
  store i32 %41, i32* %4, align 4
  br label %79

42:                                               ; preds = %20
  %43 = load i32, i32* @CONFIG_USB_DWC3_GADGET, align 4
  %44 = call i32 @IS_ENABLED(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %42
  %47 = load %struct.device*, %struct.device** %5, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %99

51:                                               ; preds = %42
  %52 = load i32, i32* @USB_DR_MODE_HOST, align 4
  store i32 %52, i32* %4, align 4
  br label %79

53:                                               ; preds = %20
  %54 = load i32, i32* @CONFIG_USB_DWC3_HOST, align 4
  %55 = call i32 @IS_ENABLED(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @USB_DR_MODE_HOST, align 4
  store i32 %58, i32* %4, align 4
  br label %66

59:                                               ; preds = %53
  %60 = load i32, i32* @CONFIG_USB_DWC3_GADGET, align 4
  %61 = call i32 @IS_ENABLED(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @USB_DR_MODE_PERIPHERAL, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %59
  br label %66

66:                                               ; preds = %65, %57
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @USB_DR_MODE_OTG, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %66
  %71 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %72 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @DWC3_REVISION_330A, align 4
  %75 = icmp sge i32 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @USB_DR_MODE_PERIPHERAL, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %76, %70, %66
  br label %79

79:                                               ; preds = %78, %51, %40
  %80 = load i32, i32* %4, align 4
  %81 = zext i32 %80 to i64
  %82 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %83 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %81, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %79
  %87 = load %struct.device*, %struct.device** %5, align 8
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @USB_DR_MODE_HOST, align 4
  %90 = icmp eq i32 %88, %89
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)
  %93 = call i32 @dev_warn(%struct.device* %87, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* %92)
  %94 = load i32, i32* %4, align 4
  %95 = zext i32 %94 to i64
  %96 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %97 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %96, i32 0, i32 0
  store i64 %95, i64* %97, align 8
  br label %98

98:                                               ; preds = %86, %79
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %46, %35
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i32 @DWC3_GHWPARAMS0_MODE(i32) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
