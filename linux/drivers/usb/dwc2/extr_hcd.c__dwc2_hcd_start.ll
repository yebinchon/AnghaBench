; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c__dwc2_hcd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c__dwc2_hcd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, i32 }
%struct.dwc2_hsotg = type { i32, i32, i32 }
%struct.usb_bus = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"DWC OTG HCD START\0A\00", align 1
@DWC2_L0 = common dso_local global i32 0, align 4
@HC_STATE_RUNNING = common dso_local global i32 0, align 4
@HCD_FLAG_HW_ACCESSIBLE = common dso_local global i32 0, align 4
@HPRT0_PWR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"DWC OTG HCD Has Root Hub\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @_dwc2_hcd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dwc2_hcd_start(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca %struct.usb_bus*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.dwc2_hsotg* @dwc2_hcd_to_hsotg(%struct.usb_hcd* %9)
  store %struct.dwc2_hsotg* %10, %struct.dwc2_hsotg** %4, align 8
  %11 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %12 = call %struct.usb_bus* @hcd_to_bus(%struct.usb_hcd* %11)
  store %struct.usb_bus* %12, %struct.usb_bus** %5, align 8
  %13 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %14 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_dbg(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %18 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %17, i32 0, i32 0
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* @DWC2_L0, align 4
  %22 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %23 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @HC_STATE_RUNNING, align 4
  %25 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %26 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @HCD_FLAG_HW_ACCESSIBLE, align 4
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %29 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %28, i32 0, i32 0
  %30 = call i32 @set_bit(i32 %27, i32* %29)
  %31 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %32 = call i64 @dwc2_is_device_mode(%struct.dwc2_hsotg* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %1
  %35 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %36 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %35, i32 0, i32 0
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @spin_unlock_irqrestore(i32* %36, i64 %37)
  store i32 0, i32* %2, align 4
  br label %81

39:                                               ; preds = %1
  %40 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %41 = call i32 @dwc2_hcd_reinit(%struct.dwc2_hsotg* %40)
  %42 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %43 = call i32 @dwc2_read_hprt0(%struct.dwc2_hsotg* %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @HPRT0_PWR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %39
  %49 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %50 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %49, i32 0, i32 0
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %54 = call i32 @dwc2_vbus_supply_init(%struct.dwc2_hsotg* %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  store i32 %58, i32* %2, align 4
  br label %81

59:                                               ; preds = %48
  %60 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %61 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %60, i32 0, i32 0
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @spin_lock_irqsave(i32* %61, i64 %62)
  br label %64

64:                                               ; preds = %59, %39
  %65 = load %struct.usb_bus*, %struct.usb_bus** %5, align 8
  %66 = getelementptr inbounds %struct.usb_bus, %struct.usb_bus* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %71 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_dbg(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %74 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %75 = call i32 @usb_hcd_resume_root_hub(%struct.usb_hcd* %74)
  br label %76

76:                                               ; preds = %69, %64
  %77 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %78 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %77, i32 0, i32 0
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %76, %57, %34
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.dwc2_hsotg* @dwc2_hcd_to_hsotg(%struct.usb_hcd*) #1

declare dso_local %struct.usb_bus* @hcd_to_bus(%struct.usb_hcd*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @dwc2_is_device_mode(%struct.dwc2_hsotg*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dwc2_hcd_reinit(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_read_hprt0(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_vbus_supply_init(%struct.dwc2_hsotg*) #1

declare dso_local i32 @usb_hcd_resume_root_hub(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
