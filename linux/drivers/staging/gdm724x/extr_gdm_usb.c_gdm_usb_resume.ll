; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_gdm_usb_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gdm724x/extr_gdm_usb.c_gdm_usb_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_interface = type { i32 }
%struct.phy_dev = type { %struct.lte_udev* }
%struct.lte_udev = type { i64, %struct.TYPE_2__, %struct.tx_cxt, i32, %struct.rx_cxt }
%struct.TYPE_2__ = type { i32 }
%struct.tx_cxt = type { i32 }
%struct.rx_cxt = type { i32, i32 }

@PM_SUSPEND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"usb resume - invalid state\0A\00", align 1
@PM_NORMAL = common dso_local global i64 0, align 8
@MAX_RX_SUBMIT_COUNT = common dso_local global i32 0, align 4
@USB_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*)* @gdm_usb_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gdm_usb_resume(%struct.usb_interface* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.phy_dev*, align 8
  %5 = alloca %struct.lte_udev*, align 8
  %6 = alloca %struct.tx_cxt*, align 8
  %7 = alloca %struct.rx_cxt*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %11 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %12 = call %struct.phy_dev* @usb_get_intfdata(%struct.usb_interface* %11)
  store %struct.phy_dev* %12, %struct.phy_dev** %4, align 8
  %13 = load %struct.phy_dev*, %struct.phy_dev** %4, align 8
  %14 = getelementptr inbounds %struct.phy_dev, %struct.phy_dev* %13, i32 0, i32 0
  %15 = load %struct.lte_udev*, %struct.lte_udev** %14, align 8
  store %struct.lte_udev* %15, %struct.lte_udev** %5, align 8
  %16 = load %struct.lte_udev*, %struct.lte_udev** %5, align 8
  %17 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %16, i32 0, i32 4
  store %struct.rx_cxt* %17, %struct.rx_cxt** %7, align 8
  %18 = load %struct.lte_udev*, %struct.lte_udev** %5, align 8
  %19 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PM_SUSPEND, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %25 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %81

28:                                               ; preds = %1
  %29 = load i64, i64* @PM_NORMAL, align 8
  %30 = load %struct.lte_udev*, %struct.lte_udev** %5, align 8
  %31 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.rx_cxt*, %struct.rx_cxt** %7, align 8
  %33 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %32, i32 0, i32 1
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.rx_cxt*, %struct.rx_cxt** %7, align 8
  %37 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MAX_RX_SUBMIT_COUNT, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load %struct.rx_cxt*, %struct.rx_cxt** %7, align 8
  %42 = getelementptr inbounds %struct.rx_cxt, %struct.rx_cxt* %41, i32 0, i32 1
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load i32, i32* %9, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %28
  store i32 0, i32* %10, align 4
  br label %48

48:                                               ; preds = %62, %47
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %65

52:                                               ; preds = %48
  %53 = load %struct.phy_dev*, %struct.phy_dev** %4, align 8
  %54 = getelementptr inbounds %struct.phy_dev, %struct.phy_dev* %53, i32 0, i32 0
  %55 = load %struct.lte_udev*, %struct.lte_udev** %54, align 8
  %56 = load %struct.lte_udev*, %struct.lte_udev** %5, align 8
  %57 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.phy_dev*, %struct.phy_dev** %4, align 8
  %60 = load i32, i32* @USB_COMPLETE, align 4
  %61 = call i32 @gdm_usb_recv(%struct.lte_udev* %55, i32 %58, %struct.phy_dev* %59, i32 %60)
  br label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  br label %48

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %28
  %67 = load %struct.lte_udev*, %struct.lte_udev** %5, align 8
  %68 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %67, i32 0, i32 2
  store %struct.tx_cxt* %68, %struct.tx_cxt** %6, align 8
  %69 = load %struct.tx_cxt*, %struct.tx_cxt** %6, align 8
  %70 = getelementptr inbounds %struct.tx_cxt, %struct.tx_cxt* %69, i32 0, i32 0
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @spin_lock_irqsave(i32* %70, i64 %71)
  %73 = load %struct.lte_udev*, %struct.lte_udev** %5, align 8
  %74 = getelementptr inbounds %struct.lte_udev, %struct.lte_udev* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = call i32 @schedule_work(i32* %75)
  %77 = load %struct.tx_cxt*, %struct.tx_cxt** %6, align 8
  %78 = getelementptr inbounds %struct.tx_cxt, %struct.tx_cxt* %77, i32 0, i32 0
  %79 = load i64, i64* %8, align 8
  %80 = call i32 @spin_unlock_irqrestore(i32* %78, i64 %79)
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %66, %23
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.phy_dev* @usb_get_intfdata(%struct.usb_interface*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @gdm_usb_recv(%struct.lte_udev*, i32, %struct.phy_dev*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
