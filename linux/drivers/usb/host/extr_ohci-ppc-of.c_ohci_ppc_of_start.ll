; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-ppc-of.c_ohci_ppc_of_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-ppc-of.c_ohci_ppc_of_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ohci_hcd = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"can't start %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ohci_ppc_of_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_ppc_of_start(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.ohci_hcd*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %7 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %6)
  store %struct.ohci_hcd* %7, %struct.ohci_hcd** %4, align 8
  %8 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %9 = call i32 @ohci_init(%struct.ohci_hcd* %8)
  store i32 %9, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %15 = call i32 @ohci_run(%struct.ohci_hcd* %14)
  store i32 %15, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %19 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %23 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %28 = call i32 @ohci_stop(%struct.usb_hcd* %27)
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %31

30:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %17, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @ohci_init(%struct.ohci_hcd*) #1

declare dso_local i32 @ohci_run(%struct.ohci_hcd*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ohci_stop(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
