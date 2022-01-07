; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-sa1111.c_ohci_hcd_sa1111_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-sa1111.c_ohci_hcd_sa1111_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sa1111_dev = type { i32 }
%struct.usb_hcd = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.usb_hcd*)* }

@HCD_FLAG_HW_ACCESSIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*)* @ohci_hcd_sa1111_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ohci_hcd_sa1111_shutdown(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.sa1111_dev*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.sa1111_dev* @to_sa1111_device(%struct.device* %5)
  store %struct.sa1111_dev* %6, %struct.sa1111_dev** %3, align 8
  %7 = load %struct.sa1111_dev*, %struct.sa1111_dev** %3, align 8
  %8 = call %struct.usb_hcd* @sa1111_get_drvdata(%struct.sa1111_dev* %7)
  store %struct.usb_hcd* %8, %struct.usb_hcd** %4, align 8
  %9 = load i32, i32* @HCD_FLAG_HW_ACCESSIBLE, align 4
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %11 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %10, i32 0, i32 1
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %1
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %16 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.usb_hcd*)*, i32 (%struct.usb_hcd*)** %18, align 8
  %20 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %21 = call i32 %19(%struct.usb_hcd* %20)
  %22 = load %struct.sa1111_dev*, %struct.sa1111_dev** %3, align 8
  %23 = call i32 @sa1111_stop_hc(%struct.sa1111_dev* %22)
  br label %24

24:                                               ; preds = %14, %1
  ret void
}

declare dso_local %struct.sa1111_dev* @to_sa1111_device(%struct.device*) #1

declare dso_local %struct.usb_hcd* @sa1111_get_drvdata(%struct.sa1111_dev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @sa1111_stop_hc(%struct.sa1111_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
