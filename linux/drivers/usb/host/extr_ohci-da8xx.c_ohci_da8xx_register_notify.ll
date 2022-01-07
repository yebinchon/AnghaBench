; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-da8xx.c_ohci_da8xx_register_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-da8xx.c_ohci_da8xx_register_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.da8xx_ohci_hcd = type { %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i32 }

@ohci_da8xx_regulator_event = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to register notifier: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ohci_da8xx_register_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_da8xx_register_notify(%struct.usb_hcd* %0) #0 {
  %2 = alloca %struct.usb_hcd*, align 8
  %3 = alloca %struct.da8xx_ohci_hcd*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %2, align 8
  %6 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %7 = call %struct.da8xx_ohci_hcd* @to_da8xx_ohci(%struct.usb_hcd* %6)
  store %struct.da8xx_ohci_hcd* %7, %struct.da8xx_ohci_hcd** %3, align 8
  %8 = load %struct.usb_hcd*, %struct.usb_hcd** %2, align 8
  %9 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %3, align 8
  %13 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %32, label %16

16:                                               ; preds = %1
  %17 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %3, align 8
  %18 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %16
  %22 = load i32, i32* @ohci_da8xx_regulator_event, align 4
  %23 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %3, align 8
  %24 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 8
  %26 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %3, align 8
  %27 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %3, align 8
  %30 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %29, i32 0, i32 0
  %31 = call i32 @devm_regulator_register_notifier(i64 %28, %struct.TYPE_4__* %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %21, %16, %1
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %32
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local %struct.da8xx_ohci_hcd* @to_da8xx_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @devm_regulator_register_notifier(i64, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
