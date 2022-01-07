; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-hcd.c_ohci_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-hcd.c_ohci_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.ohci_hcd = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"can't start\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ohci_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_start(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.ohci_hcd*, align 8
  %4 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %5 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %6 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %5)
  store %struct.ohci_hcd* %6, %struct.ohci_hcd** %3, align 8
  %7 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %8 = call i32 @ohci_run(%struct.ohci_hcd* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.ohci_hcd*, %struct.ohci_hcd** %3, align 8
  %13 = call i32 @ohci_err(%struct.ohci_hcd* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %15 = call i32 @ohci_stop(%struct.usb_hcd* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load i32, i32* %4, align 4
  ret i32 %17
}

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @ohci_run(%struct.ohci_hcd*) #1

declare dso_local i32 @ohci_err(%struct.ohci_hcd*, i8*) #1

declare dso_local i32 @ohci_stop(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
