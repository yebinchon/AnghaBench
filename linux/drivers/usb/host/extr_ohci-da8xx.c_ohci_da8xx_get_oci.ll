; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-da8xx.c_ohci_da8xx_get_oci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-da8xx.c_ohci_da8xx_get_oci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.da8xx_ohci_hcd = type { i32, i64 }

@REGULATOR_ERROR_OVER_CURRENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ohci_da8xx_get_oci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_da8xx_get_oci(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.da8xx_ohci_hcd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %7 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %8 = call %struct.da8xx_ohci_hcd* @to_da8xx_ohci(%struct.usb_hcd* %7)
  store %struct.da8xx_ohci_hcd* %8, %struct.da8xx_ohci_hcd** %4, align 8
  %9 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %10 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %15 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @gpiod_get_value_cansleep(i64 %16)
  store i32 %17, i32* %2, align 4
  br label %40

18:                                               ; preds = %1
  %19 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %20 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %40

24:                                               ; preds = %18
  %25 = load %struct.da8xx_ohci_hcd*, %struct.da8xx_ohci_hcd** %4, align 8
  %26 = getelementptr inbounds %struct.da8xx_ohci_hcd, %struct.da8xx_ohci_hcd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @regulator_get_error_flags(i32 %27, i32* %5)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %40

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @REGULATOR_ERROR_OVER_CURRENT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %2, align 4
  br label %40

39:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %39, %38, %31, %23, %13
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local %struct.da8xx_ohci_hcd* @to_da8xx_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @gpiod_get_value_cansleep(i64) #1

declare dso_local i32 @regulator_get_error_flags(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
