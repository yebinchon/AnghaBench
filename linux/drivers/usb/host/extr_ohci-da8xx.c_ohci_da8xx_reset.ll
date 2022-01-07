; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-da8xx.c_ohci_da8xx_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ohci-da8xx.c_ohci_da8xx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.da8xx_ohci_root_hub = type { i32 }
%struct.ohci_hcd = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"starting USB controller\0A\00", align 1
@RH_A_NPS = common dso_local global i32 0, align 4
@RH_A_PSM = common dso_local global i32 0, align 4
@RH_A_NOCP = common dso_local global i32 0, align 4
@RH_A_OCPM = common dso_local global i32 0, align 4
@RH_A_POTPGT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*)* @ohci_da8xx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ohci_da8xx_reset(%struct.usb_hcd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.da8xx_ohci_root_hub*, align 8
  %6 = alloca %struct.ohci_hcd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.da8xx_ohci_root_hub* @dev_get_platdata(%struct.device* %13)
  store %struct.da8xx_ohci_root_hub* %14, %struct.da8xx_ohci_root_hub** %5, align 8
  %15 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %16 = call %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd* %15)
  store %struct.ohci_hcd* %16, %struct.ohci_hcd** %6, align 8
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = call i32 @dev_dbg(%struct.device* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %20 = call i32 @ohci_da8xx_enable(%struct.usb_hcd* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %92

25:                                               ; preds = %1
  %26 = load %struct.ohci_hcd*, %struct.ohci_hcd** %6, align 8
  %27 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %29 = call i32 @ohci_setup(%struct.usb_hcd* %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %25
  %33 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %34 = call i32 @ohci_da8xx_disable(%struct.usb_hcd* %33)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %92

36:                                               ; preds = %25
  %37 = load %struct.ohci_hcd*, %struct.ohci_hcd** %6, align 8
  %38 = load %struct.ohci_hcd*, %struct.ohci_hcd** %6, align 8
  %39 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = call i32 @ohci_readl(%struct.ohci_hcd* %37, i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %45 = call i64 @ohci_da8xx_has_set_power(%struct.usb_hcd* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %36
  %48 = load i32, i32* @RH_A_NPS, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %8, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* @RH_A_PSM, align 4
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %47, %36
  %56 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %57 = call i64 @ohci_da8xx_has_oci(%struct.usb_hcd* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32, i32* @RH_A_NOCP, align 4
  %61 = xor i32 %60, -1
  %62 = load i32, i32* %8, align 4
  %63 = and i32 %62, %61
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* @RH_A_OCPM, align 4
  %65 = load i32, i32* %8, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %59, %55
  %68 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %69 = call i64 @ohci_da8xx_has_potpgt(%struct.usb_hcd* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %67
  %72 = load i32, i32* @RH_A_POTPGT, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %8, align 4
  %76 = load %struct.da8xx_ohci_root_hub*, %struct.da8xx_ohci_root_hub** %5, align 8
  %77 = getelementptr inbounds %struct.da8xx_ohci_root_hub, %struct.da8xx_ohci_root_hub* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = shl i32 %78, 24
  %80 = load i32, i32* %8, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %82

82:                                               ; preds = %71, %67
  %83 = load %struct.ohci_hcd*, %struct.ohci_hcd** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.ohci_hcd*, %struct.ohci_hcd** %6, align 8
  %86 = getelementptr inbounds %struct.ohci_hcd, %struct.ohci_hcd* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = call i32 @ohci_writel(%struct.ohci_hcd* %83, i32 %84, i32* %89)
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %82, %32, %23
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local %struct.da8xx_ohci_root_hub* @dev_get_platdata(%struct.device*) #1

declare dso_local %struct.ohci_hcd* @hcd_to_ohci(%struct.usb_hcd*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @ohci_da8xx_enable(%struct.usb_hcd*) #1

declare dso_local i32 @ohci_setup(%struct.usb_hcd*) #1

declare dso_local i32 @ohci_da8xx_disable(%struct.usb_hcd*) #1

declare dso_local i32 @ohci_readl(%struct.ohci_hcd*, i32*) #1

declare dso_local i64 @ohci_da8xx_has_set_power(%struct.usb_hcd*) #1

declare dso_local i64 @ohci_da8xx_has_oci(%struct.usb_hcd*) #1

declare dso_local i64 @ohci_da8xx_has_potpgt(%struct.usb_hcd*) #1

declare dso_local i32 @ohci_writel(%struct.ohci_hcd*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
