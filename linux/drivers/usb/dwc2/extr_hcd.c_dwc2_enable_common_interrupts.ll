; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_enable_common_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_enable_common_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32 }

@GOTGINT = common dso_local global i32 0, align 4
@GINTSTS = common dso_local global i32 0, align 4
@GINTSTS_MODEMIS = common dso_local global i32 0, align 4
@GINTSTS_OTGINT = common dso_local global i32 0, align 4
@GINTSTS_RXFLVL = common dso_local global i32 0, align 4
@GINTSTS_CONIDSTSCHNG = common dso_local global i32 0, align 4
@GINTSTS_WKUPINT = common dso_local global i32 0, align 4
@GINTSTS_USBSUSP = common dso_local global i32 0, align 4
@GINTSTS_SESSREQINT = common dso_local global i32 0, align 4
@GINTSTS_LPMTRANRCVD = common dso_local global i32 0, align 4
@GINTMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*)* @dwc2_enable_common_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_enable_common_interrupts(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca %struct.dwc2_hsotg*, align 8
  %3 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %2, align 8
  %4 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %5 = load i32, i32* @GOTGINT, align 4
  %6 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %4, i32 -1, i32 %5)
  %7 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %8 = load i32, i32* @GINTSTS, align 4
  %9 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %7, i32 -1, i32 %8)
  %10 = load i32, i32* @GINTSTS_MODEMIS, align 4
  %11 = load i32, i32* @GINTSTS_OTGINT, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %3, align 4
  %13 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %14 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @GINTSTS_RXFLVL, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %18, %1
  %23 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %24 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i32, i32* @GINTSTS_CONIDSTSCHNG, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* @GINTSTS_WKUPINT, align 4
  %34 = load i32, i32* @GINTSTS_USBSUSP, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @GINTSTS_SESSREQINT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  %40 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %41 = call i64 @dwc2_is_device_mode(%struct.dwc2_hsotg* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %32
  %44 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %45 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  %50 = load i32, i32* @GINTSTS_LPMTRANRCVD, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %49, %43, %32
  %54 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %2, align 8
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @GINTMSK, align 4
  %57 = call i32 @dwc2_writel(%struct.dwc2_hsotg* %54, i32 %55, i32 %56)
  ret void
}

declare dso_local i32 @dwc2_writel(%struct.dwc2_hsotg*, i32, i32) #1

declare dso_local i64 @dwc2_is_device_mode(%struct.dwc2_hsotg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
