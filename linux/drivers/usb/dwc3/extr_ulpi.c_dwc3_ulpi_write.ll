; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ulpi.c_dwc3_ulpi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ulpi.c_dwc3_ulpi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.dwc3 = type { i32 }

@DWC3_GUSB2PHYCFG_SUSPHY = common dso_local global i32 0, align 4
@DWC3_GUSB2PHYACC_NEWREGREQ = common dso_local global i32 0, align 4
@DWC3_GUSB2PHYACC_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i32)* @dwc3_ulpi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_ulpi_write(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.dwc3*, align 8
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call %struct.dwc3* @dev_get_drvdata(%struct.device* %9)
  store %struct.dwc3* %10, %struct.dwc3** %7, align 8
  %11 = load %struct.dwc3*, %struct.dwc3** %7, align 8
  %12 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @DWC3_GUSB2PHYCFG(i32 0)
  %15 = call i32 @dwc3_readl(i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @DWC3_GUSB2PHYCFG_SUSPHY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %3
  %21 = load i32, i32* @DWC3_GUSB2PHYCFG_SUSPHY, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %8, align 4
  %25 = load %struct.dwc3*, %struct.dwc3** %7, align 8
  %26 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DWC3_GUSB2PHYCFG(i32 0)
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @dwc3_writel(i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %20, %3
  %32 = load i32, i32* @DWC3_GUSB2PHYACC_NEWREGREQ, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @DWC3_ULPI_ADDR(i32 %33)
  %35 = or i32 %32, %34
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @DWC3_GUSB2PHYACC_WRITE, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  %41 = load %struct.dwc3*, %struct.dwc3** %7, align 8
  %42 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @DWC3_GUSB2PHYACC(i32 0)
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @dwc3_writel(i32 %43, i32 %44, i32 %45)
  %47 = load %struct.dwc3*, %struct.dwc3** %7, align 8
  %48 = call i32 @dwc3_ulpi_busyloop(%struct.dwc3* %47)
  ret i32 %48
}

declare dso_local %struct.dwc3* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dwc3_readl(i32, i32) #1

declare dso_local i32 @DWC3_GUSB2PHYCFG(i32) #1

declare dso_local i32 @dwc3_writel(i32, i32, i32) #1

declare dso_local i32 @DWC3_ULPI_ADDR(i32) #1

declare dso_local i32 @DWC3_GUSB2PHYACC(i32) #1

declare dso_local i32 @dwc3_ulpi_busyloop(%struct.dwc3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
