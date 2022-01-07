; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-pci.c_xhci_pci_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-pci.c_xhci_pci_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.xhci_hcd = type { i32, i64 }
%struct.pci_dev = type { i32 }

@XHCI_SBRN_OFFSET = common dso_local global i32 0, align 4
@xhci_pci_quirks = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Got SBRN %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @xhci_pci_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_pci_setup(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.xhci_hcd*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.pci_dev* @to_pci_dev(i32 %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %5, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %13 = call %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd* %12)
  store %struct.xhci_hcd* %13, %struct.xhci_hcd** %4, align 8
  %14 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %15 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %20 = load i32, i32* @XHCI_SBRN_OFFSET, align 4
  %21 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %22 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %21, i32 0, i32 1
  %23 = call i32 @pci_read_config_byte(%struct.pci_dev* %19, i32 %20, i64* %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %26 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %25, i32 0, i32 0
  store i32 40000, i32* %26, align 8
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %28 = load i32, i32* @xhci_pci_quirks, align 4
  %29 = call i32 @xhci_gen_setup(%struct.usb_hcd* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %2, align 4
  br label %49

34:                                               ; preds = %24
  %35 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %36 = call i32 @usb_hcd_is_primary_hcd(%struct.usb_hcd* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %49

39:                                               ; preds = %34
  %40 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %41 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %42 = getelementptr inbounds %struct.xhci_hcd, %struct.xhci_hcd* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @xhci_dbg(%struct.xhci_hcd* %40, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.xhci_hcd*, %struct.xhci_hcd** %4, align 8
  %47 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %48 = call i32 @xhci_pci_reinit(%struct.xhci_hcd* %46, %struct.pci_dev* %47)
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %39, %38, %32
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.xhci_hcd* @hcd_to_xhci(%struct.usb_hcd*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i64*) #1

declare dso_local i32 @xhci_gen_setup(%struct.usb_hcd*, i32) #1

declare dso_local i32 @usb_hcd_is_primary_hcd(%struct.usb_hcd*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32) #1

declare dso_local i32 @xhci_pci_reinit(%struct.xhci_hcd*, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
