; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-histb.c_xhci_histb_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-histb.c_xhci_histb_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd_histb = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"phys-names\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"inno\00", align 1
@REG_GUSB2PHYCFG0 = common dso_local global i64 0, align 8
@BIT_UTMI_ULPI = common dso_local global i32 0, align 4
@BIT_UTMI_8_16 = common dso_local global i32 0, align 4
@BIT_FREECLK_EXIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"combo\00", align 1
@REG_GUSB3PIPECTL0 = common dso_local global i64 0, align 8
@USB3_DEEMPHASIS_MASK = common dso_local global i32 0, align 4
@USB3_DEEMPHASIS0 = common dso_local global i32 0, align 4
@USB3_TX_MARGIN1 = common dso_local global i32 0, align 4
@GTXTHRCFG = common dso_local global i64 0, align 8
@GRXTHRCFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd_histb*)* @xhci_histb_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_histb_config(%struct.xhci_hcd_histb* %0) #0 {
  %2 = alloca %struct.xhci_hcd_histb*, align 8
  %3 = alloca %struct.device_node*, align 8
  %4 = alloca i32, align 4
  store %struct.xhci_hcd_histb* %0, %struct.xhci_hcd_histb** %2, align 8
  %5 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %2, align 8
  %6 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %3, align 8
  %10 = load %struct.device_node*, %struct.device_node** %3, align 8
  %11 = call i64 @of_property_match_string(%struct.device_node* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %39

13:                                               ; preds = %1
  %14 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %2, align 8
  %15 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @REG_GUSB2PHYCFG0, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @BIT_UTMI_ULPI, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* @BIT_UTMI_8_16, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* @BIT_FREECLK_EXIST, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %2, align 8
  %34 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @REG_GUSB2PHYCFG0, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @writel(i32 %32, i64 %37)
  br label %39

39:                                               ; preds = %13, %1
  %40 = load %struct.device_node*, %struct.device_node** %3, align 8
  %41 = call i64 @of_property_match_string(%struct.device_node* %40, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %42 = icmp sge i64 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %39
  %44 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %2, align 8
  %45 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @REG_GUSB3PIPECTL0, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @readl(i64 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @USB3_DEEMPHASIS_MASK, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %4, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* @USB3_DEEMPHASIS0, align 4
  %55 = load i32, i32* %4, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* @USB3_TX_MARGIN1, align 4
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %2, align 8
  %62 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @REG_GUSB3PIPECTL0, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  br label %67

67:                                               ; preds = %43, %39
  %68 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %2, align 8
  %69 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @GTXTHRCFG, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 588251136, i64 %72)
  %74 = load %struct.xhci_hcd_histb*, %struct.xhci_hcd_histb** %2, align 8
  %75 = getelementptr inbounds %struct.xhci_hcd_histb, %struct.xhci_hcd_histb* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @GRXTHRCFG, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 588251136, i64 %78)
  ret i32 0
}

declare dso_local i64 @of_property_match_string(%struct.device_node*, i8*, i8*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
