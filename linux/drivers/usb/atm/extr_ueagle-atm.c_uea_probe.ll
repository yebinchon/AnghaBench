; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_uea_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_uea_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.usbatm_data = type { %struct.uea_softc* }
%struct.uea_softc = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"ADSL device founded vid (%#X) pid (%#X) Rev (%#X): %s\0A\00", align 1
@chip_name = common dso_local global i32* null, align 8
@uea_usbatm_driver = common dso_local global i32 0, align 4
@ATM_PHY_SIG_LOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @uea_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uea_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.usbatm_data*, align 8
  %9 = alloca %struct.uea_softc*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %10 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %11 = call %struct.usb_device* @interface_to_usbdev(%struct.usb_interface* %10)
  store %struct.usb_device* %11, %struct.usb_device** %6, align 8
  %12 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %13 = call i32 @uea_enters(%struct.usb_device* %12)
  %14 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le16_to_cpu(i32 %18)
  %20 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %21 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le16_to_cpu(i32 %23)
  %25 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %26 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  %30 = load i32*, i32** @chip_name, align 8
  %31 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %32 = call i64 @UEA_CHIP_VERSION(%struct.usb_device_id* %31)
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @uea_info(%struct.usb_device* %14, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %24, i32 %29, i32 %34)
  %36 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %37 = call i32 @usb_reset_device(%struct.usb_device* %36)
  %38 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %39 = call i64 @UEA_IS_PREFIRM(%struct.usb_device_id* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %2
  %42 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %43 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %44 = call i64 @UEA_CHIP_VERSION(%struct.usb_device_id* %43)
  %45 = call i32 @uea_load_firmware(%struct.usb_device* %42, i64 %44)
  store i32 %45, i32* %3, align 4
  br label %66

46:                                               ; preds = %2
  %47 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %48 = load %struct.usb_device_id*, %struct.usb_device_id** %5, align 8
  %49 = call i32 @usbatm_usb_probe(%struct.usb_interface* %47, %struct.usb_device_id* %48, i32* @uea_usbatm_driver)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %46
  %53 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %54 = call %struct.usbatm_data* @usb_get_intfdata(%struct.usb_interface* %53)
  store %struct.usbatm_data* %54, %struct.usbatm_data** %8, align 8
  %55 = load %struct.usbatm_data*, %struct.usbatm_data** %8, align 8
  %56 = getelementptr inbounds %struct.usbatm_data, %struct.usbatm_data* %55, i32 0, i32 0
  %57 = load %struct.uea_softc*, %struct.uea_softc** %56, align 8
  store %struct.uea_softc* %57, %struct.uea_softc** %9, align 8
  %58 = load i32, i32* @ATM_PHY_SIG_LOST, align 4
  %59 = call i32 @UPDATE_ATM_SIGNAL(i32 %58)
  %60 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %61 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @wake_up_process(i32 %62)
  br label %64

64:                                               ; preds = %52, %46
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %41
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.usb_device* @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @uea_enters(%struct.usb_device*) #1

declare dso_local i32 @uea_info(%struct.usb_device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @UEA_CHIP_VERSION(%struct.usb_device_id*) #1

declare dso_local i32 @usb_reset_device(%struct.usb_device*) #1

declare dso_local i64 @UEA_IS_PREFIRM(%struct.usb_device_id*) #1

declare dso_local i32 @uea_load_firmware(%struct.usb_device*, i64) #1

declare dso_local i32 @usbatm_usb_probe(%struct.usb_interface*, %struct.usb_device_id*, i32*) #1

declare dso_local %struct.usbatm_data* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @UPDATE_ATM_SIGNAL(i32) #1

declare dso_local i32 @wake_up_process(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
