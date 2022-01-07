; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_core_ulpi_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_core.c_dwc3_core_ulpi_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DWC3_GHWPARAMS3_HSPHY_IFC_ULPI = common dso_local global i32 0, align 4
@DWC3_GHWPARAMS3_HSPHY_IFC_UTMI_ULPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ulpi\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*)* @dwc3_core_ulpi_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_core_ulpi_init(%struct.dwc3* %0) #0 {
  %2 = alloca %struct.dwc3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %6 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @DWC3_GHWPARAMS3_HSPHY_IFC(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @DWC3_GHWPARAMS3_HSPHY_IFC_ULPI, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %28, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @DWC3_GHWPARAMS3_HSPHY_IFC_UTMI_ULPI, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %31

17:                                               ; preds = %13
  %18 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %19 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %24 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @strncmp(i64 %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %22, %1
  %29 = load %struct.dwc3*, %struct.dwc3** %2, align 8
  %30 = call i32 @dwc3_ulpi_init(%struct.dwc3* %29)
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %28, %22, %17, %13
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @DWC3_GHWPARAMS3_HSPHY_IFC(i32) #1

declare dso_local i32 @strncmp(i64, i8*, i32) #1

declare dso_local i32 @dwc3_ulpi_init(%struct.dwc3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
