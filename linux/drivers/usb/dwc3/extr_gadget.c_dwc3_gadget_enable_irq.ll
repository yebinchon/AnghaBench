; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_enable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i64, i32 }

@DWC3_DEVTEN_VNDRDEVTSTRCVEDEN = common dso_local global i32 0, align 4
@DWC3_DEVTEN_EVNTOVERFLOWEN = common dso_local global i32 0, align 4
@DWC3_DEVTEN_CMDCMPLTEN = common dso_local global i32 0, align 4
@DWC3_DEVTEN_ERRTICERREN = common dso_local global i32 0, align 4
@DWC3_DEVTEN_WKUPEVTEN = common dso_local global i32 0, align 4
@DWC3_DEVTEN_CONNECTDONEEN = common dso_local global i32 0, align 4
@DWC3_DEVTEN_USBRSTEN = common dso_local global i32 0, align 4
@DWC3_DEVTEN_DISCONNEVTEN = common dso_local global i32 0, align 4
@DWC3_REVISION_250A = common dso_local global i64 0, align 8
@DWC3_DEVTEN_ULSTCNGEN = common dso_local global i32 0, align 4
@DWC3_DEVTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*)* @dwc3_gadget_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_gadget_enable_irq(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  %4 = load i32, i32* @DWC3_DEVTEN_VNDRDEVTSTRCVEDEN, align 4
  %5 = load i32, i32* @DWC3_DEVTEN_EVNTOVERFLOWEN, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @DWC3_DEVTEN_CMDCMPLTEN, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @DWC3_DEVTEN_ERRTICERREN, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @DWC3_DEVTEN_WKUPEVTEN, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @DWC3_DEVTEN_CONNECTDONEEN, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @DWC3_DEVTEN_USBRSTEN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @DWC3_DEVTEN_DISCONNEVTEN, align 4
  %18 = or i32 %16, %17
  store i32 %18, i32* %3, align 4
  %19 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %20 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DWC3_REVISION_250A, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* @DWC3_DEVTEN_ULSTCNGEN, align 4
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %1
  %29 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %30 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @DWC3_DEVTEN, align 4
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @dwc3_writel(i32 %31, i32 %32, i32 %33)
  ret void
}

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
