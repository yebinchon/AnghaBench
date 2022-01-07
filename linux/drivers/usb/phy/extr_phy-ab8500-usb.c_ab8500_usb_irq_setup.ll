; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_irq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-ab8500-usb.c_ab8500_usb_irq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ab8500_usb = type { i32, i32 }

@AB8500_USB_FLAG_USE_LINK_STATUS_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"USB_LINK_STATUS\00", align 1
@ab8500_usb_link_status_irq = common dso_local global i32 0, align 4
@IRQF_NO_SUSPEND = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"usb-link-status\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"request_irq failed for link status irq\0A\00", align 1
@AB8500_USB_FLAG_USE_ID_WAKEUP_IRQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"ID_WAKEUP_F\00", align 1
@ab8500_usb_disconnect_irq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"usb-id-fall\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"request_irq failed for ID fall irq\0A\00", align 1
@AB8500_USB_FLAG_USE_VBUS_DET_IRQ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [11 x i8] c"VBUS_DET_F\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"usb-vbus-fall\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"request_irq failed for Vbus fall irq\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.ab8500_usb*)* @ab8500_usb_irq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ab8500_usb_irq_setup(%struct.platform_device* %0, %struct.ab8500_usb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.ab8500_usb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.ab8500_usb* %1, %struct.ab8500_usb** %5, align 8
  %8 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %9 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AB8500_USB_FLAG_USE_LINK_STATUS_IRQ, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %2
  %15 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %16 = call i32 @platform_get_irq_byname(%struct.platform_device* %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %113

21:                                               ; preds = %14
  %22 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @ab8500_usb_link_status_irq, align 4
  %26 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %27 = load i32, i32* @IRQF_SHARED, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @IRQF_ONESHOT, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %32 = call i32 @devm_request_threaded_irq(i32* %23, i32 %24, i32* null, i32 %25, i32 %30, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), %struct.ab8500_usb* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %21
  %36 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %37 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %3, align 4
  br label %113

41:                                               ; preds = %21
  br label %42

42:                                               ; preds = %41, %2
  %43 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %44 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AB8500_USB_FLAG_USE_ID_WAKEUP_IRQ, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %42
  %50 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %51 = call i32 @platform_get_irq_byname(%struct.platform_device* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %113

56:                                               ; preds = %49
  %57 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @ab8500_usb_disconnect_irq, align 4
  %61 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %62 = load i32, i32* @IRQF_SHARED, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @IRQF_ONESHOT, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %67 = call i32 @devm_request_threaded_irq(i32* %58, i32 %59, i32* null, i32 %60, i32 %65, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), %struct.ab8500_usb* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %56
  %71 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %72 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @dev_err(i32 %73, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %113

76:                                               ; preds = %56
  br label %77

77:                                               ; preds = %76, %42
  %78 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %79 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @AB8500_USB_FLAG_USE_VBUS_DET_IRQ, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %112

84:                                               ; preds = %77
  %85 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %86 = call i32 @platform_get_irq_byname(%struct.platform_device* %85, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  store i32 %86, i32* %7, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %84
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %113

91:                                               ; preds = %84
  %92 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @ab8500_usb_disconnect_irq, align 4
  %96 = load i32, i32* @IRQF_NO_SUSPEND, align 4
  %97 = load i32, i32* @IRQF_SHARED, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @IRQF_ONESHOT, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %102 = call i32 @devm_request_threaded_irq(i32* %93, i32 %94, i32* null, i32 %95, i32 %100, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), %struct.ab8500_usb* %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %111

105:                                              ; preds = %91
  %106 = load %struct.ab8500_usb*, %struct.ab8500_usb** %5, align 8
  %107 = getelementptr inbounds %struct.ab8500_usb, %struct.ab8500_usb* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0))
  %110 = load i32, i32* %6, align 4
  store i32 %110, i32* %3, align 4
  br label %113

111:                                              ; preds = %91
  br label %112

112:                                              ; preds = %111, %77
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %112, %105, %89, %70, %54, %35, %19
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @platform_get_irq_byname(%struct.platform_device*, i8*) #1

declare dso_local i32 @devm_request_threaded_irq(i32*, i32, i32*, i32, i32, i8*, %struct.ab8500_usb*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
