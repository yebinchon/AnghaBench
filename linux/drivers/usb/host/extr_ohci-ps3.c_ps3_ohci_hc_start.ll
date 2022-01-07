; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-ps3.c_ps3_ohci_hc_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-ps3.c_ps3_ohci_hc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ohci_hcd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@RH_A_PSM = common dso_local global i32 0, align 4
@RH_A_OCPM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"can't start %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ps3_ohci_hc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ps3_ohci_hc_start(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ohci_hcd*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %5 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %6 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %5)
  store %struct.ohci_hcd* %6, %struct.ohci_hcd** %4, align 8
  %7 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %8 = load i32, i32* @RH_A_PSM, align 4
  %9 = or i32 2130706432, %8
  %10 = load i32, i32* @RH_A_OCPM, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %13 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = call i32 @ohci_writel(%struct.ohci_hcd* %7, i32 %11, i32* %16)
  %18 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %19 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %20 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %19, i32 0, i32 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @ohci_writel(%struct.ohci_hcd* %18, i32 393216, i32* %23)
  %25 = load %struct.ohci_hcd*, %struct.ohci_hcd** %4, align 8
  %26 = call i32 @ohci_run(%struct.ohci_hcd* %25)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %1
  %30 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %31 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %35 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %40 = call i32 @ohci_stop(%struct.usb_hcd* %39)
  br label %41

41:                                               ; preds = %29, %1
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @ohci_writel(%struct.ohci_hcd*, i32, i32*) #1

declare dso_local i32 @ohci_run(%struct.ohci_hcd*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @ohci_stop(%struct.usb_hcd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
