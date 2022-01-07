; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-hcd.c_configure_hc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-hcd.c_configure_hc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uhci_hcd = type { i32, i32 (%struct.uhci_hcd*)*, i32 }

@USBSOF_DEFAULT = common dso_local global i32 0, align 4
@USBSOF = common dso_local global i32 0, align 4
@USBFLBASEADD = common dso_local global i32 0, align 4
@UHCI_MAX_SOF_NUMBER = common dso_local global i32 0, align 4
@USBFRNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uhci_hcd*)* @configure_hc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_hc(%struct.uhci_hcd* %0) #0 {
  %2 = alloca %struct.uhci_hcd*, align 8
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %2, align 8
  %3 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %4 = load i32, i32* @USBSOF_DEFAULT, align 4
  %5 = load i32, i32* @USBSOF, align 4
  %6 = call i32 @uhci_writeb(%struct.uhci_hcd* %3, i32 %4, i32 %5)
  %7 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %8 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %9 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @USBFLBASEADD, align 4
  %12 = call i32 @uhci_writel(%struct.uhci_hcd* %7, i32 %10, i32 %11)
  %13 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %14 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %15 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @UHCI_MAX_SOF_NUMBER, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @USBFRNUM, align 4
  %20 = call i32 @uhci_writew(%struct.uhci_hcd* %13, i32 %18, i32 %19)
  %21 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %22 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %21, i32 0, i32 1
  %23 = load i32 (%struct.uhci_hcd*)*, i32 (%struct.uhci_hcd*)** %22, align 8
  %24 = icmp ne i32 (%struct.uhci_hcd*)* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %27 = getelementptr inbounds %struct.uhci_hcd, %struct.uhci_hcd* %26, i32 0, i32 1
  %28 = load i32 (%struct.uhci_hcd*)*, i32 (%struct.uhci_hcd*)** %27, align 8
  %29 = load %struct.uhci_hcd*, %struct.uhci_hcd** %2, align 8
  %30 = call i32 %28(%struct.uhci_hcd* %29)
  br label %31

31:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @uhci_writeb(%struct.uhci_hcd*, i32, i32) #1

declare dso_local i32 @uhci_writel(%struct.uhci_hcd*, i32, i32) #1

declare dso_local i32 @uhci_writew(%struct.uhci_hcd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
