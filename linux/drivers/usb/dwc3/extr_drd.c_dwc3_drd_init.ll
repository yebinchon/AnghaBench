; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_drd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_drd.c_dwc3_drd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i32, i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@dwc3_drd_notifier = common dso_local global i32 0, align 4
@EXTCON_USB_HOST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"couldn't register cable notifier\0A\00", align 1
@DWC3_GCTL_PRTCAP_OTG = common dso_local global i32 0, align 4
@DWC3_OTG_ALL_EVENTS = common dso_local global i32 0, align 4
@dwc3_otg_irq = common dso_local global i32 0, align 4
@dwc3_otg_thread_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"dwc3-otg\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to request irq #%d --> %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc3_drd_init(%struct.dwc3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  %6 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %7 = call i64 @dwc3_get_extcon(%struct.dwc3* %6)
  %8 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %9 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %8, i32 0, i32 4
  store i64 %7, i64* %9, align 8
  %10 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %11 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = call i64 @IS_ERR(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %17 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @PTR_ERR(i64 %18)
  store i32 %19, i32* %2, align 4
  br label %99

20:                                               ; preds = %1
  %21 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %22 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %20
  %26 = load i32, i32* @dwc3_drd_notifier, align 4
  %27 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %28 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %26, i32* %29, align 4
  %30 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %31 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* @EXTCON_USB_HOST, align 4
  %34 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %35 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %34, i32 0, i32 3
  %36 = call i32 @extcon_register_notifier(i64 %32, i32 %33, %struct.TYPE_2__* %35)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %25
  %40 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %41 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @dev_err(i32 %42, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %99

45:                                               ; preds = %25
  %46 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %47 = call i32 @dwc3_drd_update(%struct.dwc3* %46)
  br label %98

48:                                               ; preds = %20
  %49 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %50 = load i32, i32* @DWC3_GCTL_PRTCAP_OTG, align 4
  %51 = call i32 @dwc3_set_prtcap(%struct.dwc3* %49, i32 %50)
  %52 = load i32, i32* @DWC3_GCTL_PRTCAP_OTG, align 4
  %53 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %54 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 8
  %55 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %56 = call i32 @dwc3_otg_get_irq(%struct.dwc3* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %99

61:                                               ; preds = %48
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %64 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %66 = load i32, i32* @DWC3_OTG_ALL_EVENTS, align 4
  %67 = call i32 @dwc3_otg_disable_events(%struct.dwc3* %65, i32 %66)
  %68 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %69 = call i32 @dwc3_otg_clear_events(%struct.dwc3* %68)
  %70 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %71 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @dwc3_otg_irq, align 4
  %74 = load i32, i32* @dwc3_otg_thread_irq, align 4
  %75 = load i32, i32* @IRQF_SHARED, align 4
  %76 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %77 = call i32 @request_threaded_irq(i32 %72, i32 %73, i32 %74, i32 %75, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.dwc3* %76)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %61
  %81 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %82 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %85 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 (i32, i8*, ...) @dev_err(i32 %83, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %87)
  %89 = load i32, i32* @ENODEV, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %99

92:                                               ; preds = %61
  %93 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %94 = call i32 @dwc3_otg_init(%struct.dwc3* %93)
  %95 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %96 = load i32, i32* @DWC3_GCTL_PRTCAP_OTG, align 4
  %97 = call i32 @dwc3_set_mode(%struct.dwc3* %95, i32 %96)
  br label %98

98:                                               ; preds = %92, %45
  store i32 0, i32* %2, align 4
  br label %99

99:                                               ; preds = %98, %80, %59, %39, %15
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

declare dso_local i64 @dwc3_get_extcon(%struct.dwc3*) #1

declare dso_local i64 @IS_ERR(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @extcon_register_notifier(i64, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dwc3_drd_update(%struct.dwc3*) #1

declare dso_local i32 @dwc3_set_prtcap(%struct.dwc3*, i32) #1

declare dso_local i32 @dwc3_otg_get_irq(%struct.dwc3*) #1

declare dso_local i32 @dwc3_otg_disable_events(%struct.dwc3*, i32) #1

declare dso_local i32 @dwc3_otg_clear_events(%struct.dwc3*) #1

declare dso_local i32 @request_threaded_irq(i32, i32, i32, i32, i8*, %struct.dwc3*) #1

declare dso_local i32 @dwc3_otg_init(%struct.dwc3*) #1

declare dso_local i32 @dwc3_set_mode(%struct.dwc3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
